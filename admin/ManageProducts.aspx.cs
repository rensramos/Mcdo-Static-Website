using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration; 

public partial class _Default : System.Web.UI.Page{

	int totalCount = 0;

	protected void Page_Load(object sender, EventArgs e){
		string connectionString = ConfigurationManager.ConnectionStrings["SQLDbConnection"].ToString();
		SqlConnection connection = new SqlConnection(connectionString);
		
		DataSet ds = new DataSet();
		String sql = "SELECT * FROM Products ORDER BY pid ASC";
		SqlDataAdapter adapter = new SqlDataAdapter(sql, connection);
		adapter.Fill(ds);
		totalCount = ds.Tables[0].Rows.Count;

		bindData();
	}

	public void bindData(){
		string connectionString = ConfigurationManager.ConnectionStrings["SQLDbConnection"].ToString();
		SqlConnection connection = new SqlConnection(connectionString);
		DataSet ds = new DataSet();
		
		String sql = "SELECT * FROM Products ORDER BY pid ASC";
		
		int val = Convert.ToInt16(txtHidden.Value);
		if (val <= 0)
			val = 0;
			
		connection.Open();

		SqlDataAdapter adapter = new SqlDataAdapter(sql, connection);
		adapter.Fill(ds, val, 2, "Products");
		connection.Close();
		ProductsList.DataSource = ds;
		ProductsList.DataBind();

		if (val <= 2){
			lnkBtnPrev.Visible = false;
			lnkBtnNext.Visible = true;
		}

		if (val >= 2){
			lnkBtnPrev.Visible = true;
			lnkBtnNext.Visible = true;
		}

		if ((val+2)>=totalCount){
			lnkBtnNext.Visible = false;
		}
	}

	protected void lnkBtnPrev_Click(object sender, EventArgs e){
		txtHidden.Value = Convert.ToString(Convert.ToInt16(txtHidden.Value) - 2);
		bindData();
	}
	
	protected void lnkBtnNext_Click(object sender, EventArgs e){
		txtHidden.Value = Convert.ToString(Convert.ToInt16(txtHidden.Value) + 2);
		bindData();
	}
	
	protected void Logout_Click(object sender, EventArgs e){
		Session.RemoveAll();
		Response.Redirect("default.aspx");
	}

}