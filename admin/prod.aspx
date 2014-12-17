<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prod.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Mcdonald's Cabanatuan</title>
    <link href="../style/about.css" rel="stylesheet" type="text/css" />
    <link rel="shorcut icon" href="../favicon.ico" />
</head>
<body bgcolor="#eae3d1">
    <form id="form" runat="server">
    <div id="topbanner">
        <div id="bannertextcontainer">
            <a href="../index.aspx">
                <div id="logo">
                </div>
            </a>
            <!--end of logo div-->
            <br />
            <br />
            <div id="menutop">
                <a href="../index.aspx">What's new</a> &nbsp; <a href="food.aspx">Our food</a> &nbsp;
                <a href="mccelebration.aspx">McCelebration</a> &nbsp; <a href="mcdelivery.aspx">McDelivery</a>
                &nbsp; <a href="about.aspx">About</a> &nbsp; <a href="customer.aspx">Customer</a>
            </div>
        </div>
        <!--bannertextcontainer end div -->
    </div>
    <!--topbanner end div -->
    <div id="container">
    
    
    
    <form id="form1" runat="server">
<asp:LinkButton ID="lnkLogout" runat="server" Font-Underline="False" OnClick="Logout_Click" Font-Bold="false">
Logout
</asp:LinkButton>
<br /><br />
<div>
<table cellpadding="2" cellspacing="2" border="1">
	<tr>
		<strong>
			<td>Product ID</td>
			<td>Category</td>
			<td>Product Name</td>
			<td>Description</td>
			<td>Price</td>
			<td>Thumbnail</td>
			<td>Image Path</td>
			<td>Status</td>
			<td></td>
			<td></td>
		</strong>
	</tr>
	<asp:Repeater id="ProductsList" runat="server" >
		<ItemTemplate>
			<tr>	
				<td><%# DataBinder.Eval(Container.DataItem, "pid")%></td>
				<td><%# DataBinder.Eval(Container.DataItem, "catid")%></td>
				<td><%# DataBinder.Eval(Container.DataItem, "pname")%></td>
				<td><%# DataBinder.Eval(Container.DataItem, "description")%></td>
				<td><%# String.Format("{0:#,###.00}", DataBinder.Eval(Container.DataItem, "price"))%></td>
				
				<td><img src="../images/<%# DataBinder.Eval(Container.DataItem, "image")%>" width="50" height="50" /></td>
				<td><input type="checkbox" checked="<%# DataBinder.Eval(Container.DataItem,"status")%>" /></td>
				
			</tr>
		</ItemTemplate>
	</asp:Repeater>
</table>
<asp:LinkButton ID="lnkBtnPrev" runat="server" Font-Underline="False" OnClick="lnkBtnPrev_Click" Font-Bold="True">Prev</asp:LinkButton>
<asp:LinkButton ID="lnkBtnNext" runat="server" Font-Underline="False" OnClick="lnkBtnNext_Click" Font-Bold="True">Next</asp:LinkButton>
<input id="txtHidden1" style="width: 28px" type="hidden" value="0" runat="server" />
</form>
    
    
    
    
    
    
    
     </div>
    <div id="footlogoscontainer">
        <div id="footlogo">
            <a href="#thumb">
                <img src="../images/pootpoot.png" /></a>
        </div>
    </div>
    <div id="footer">
        <div id="footbanner">
            <div id="footcontainer">
                <div id="footmenu">
                    <div id="footfirst">
                        <p>
                            <a href="terms.aspx">Terms & Conditions</a> | <a href="privacy.aspx">Privacy & Policy</a>
                            | <font color="#FFFFFF">Follow us on</font> &nbsp;&nbsp;&nbsp;</p>
                        <p>
                            <font size="2" color="#9d9fa1">2014 McDonald's All rights reserved | Web Design by:</font><font
                                color="#FFFFFF" size="2"> <a href="https://www.facebook.com/rens.ramos" target="_blank">
                                    Rens Daniel Ramos</a></font></p>
                    </div>
                    <div id="circlefb">
                        <a href="https://www.facebook.com/McDonaldsCabanatuan" target="_blank">
                            <img src="../images/fb.png" /></a> <a href="https://twitter.com/McDo_PH" target="_blank">
                                <img src="../images/twitter.png" /></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <embed height="50" width="100" src="../audio/Hooray For Today!.mp3" autostart="true"
        hidden="true">
        <input id="txtHidden" style="width: 28px" type="hidden" value="0" runat="server" />
    </form>
</body>
</html>

