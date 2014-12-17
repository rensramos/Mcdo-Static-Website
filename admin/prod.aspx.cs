using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{


    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }



    protected void lbinsert_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["pid"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("pid")).Text;
		
		SqlDataSource1.InsertParameters["catid"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("catid")).Text;


        SqlDataSource1.InsertParameters["description"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("pname")).Text;

        SqlDataSource1.InsertParameters["pname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("description")).Text;

        SqlDataSource1.InsertParameters["price"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("price")).Text;
		
		SqlDataSource1.InsertParameters["image"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("image")).Text;
		
		SqlDataSource1.InsertParameters["status"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("status")).Text;
		
		

        SqlDataSource1.Insert();
    }



}