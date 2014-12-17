using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 

public partial class _Default : System.Web.UI.Page{
	
	protected void Page_Load(object sender, EventArgs e) {
	}
	protected void ClearControls_Click(object sender, EventArgs e){
	}
	protected void SubmitForm_Click(object sender, EventArgs e){
		string connectionString = ConfigurationManager.ConnectionStrings["SQLDbConnection"].ToString();
		SqlConnection connection = new SqlConnection(connectionString);
		
		DataSet ds = new DataSet();
		string sql = "SELECT * FROM Users WHERE (uid='" + UserName.Text + "') AND (upassword='" + Password.Text + "')";
		try{
			connection.Open();
			SqlDataAdapter adapter = new SqlDataAdapter(sql, connection);
			adapter.Fill(ds);
			connection.Close();
			if (ds.Tables[0].Rows[0].ItemArray[0]!=System.DBNull.Value){
				Session["UID"]=UserName.Text.Trim();
				Session["Password"]=Password.Text.Trim();
				Session["UName"]=ds.Tables[0].Rows[0][2].ToString();
				Response.Redirect("main.aspx");
			}else{
				Message.Text = "Error in login.";
			}
		}catch (Exception ex){
			Message.Text = "Error in execution: " + ex.ToString();
		}
		connection.Close();
	}
}