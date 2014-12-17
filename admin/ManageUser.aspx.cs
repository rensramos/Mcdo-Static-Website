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
        SqlDataSource1.InsertParameters["uid"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtuid")).Text;


        SqlDataSource1.InsertParameters["upassword"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtpassword")).Text;

        SqlDataSource1.InsertParameters["uname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtname")).Text;

        SqlDataSource1.InsertParameters["ustatus"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtstatus")).Text;

        SqlDataSource1.Insert();
    }



}