<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageProducts.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Mcdonald's Cabanatuan</title>
    <link href="../style/about.css" rel="stylesheet" type="text/css" />
    <link rel="shorcut icon" href="../favicon.ico" />
</head>
<body bgcolor="#eae3d1">
    <form id="form1" runat="server">
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
    <asp:Repeater id="ProductsList" runat="server" >
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowSorting="True"
            DataSourceID="SqlDataSource1" AllowPaging="True" DataKeyNames="uid" 
            CellPadding="4" ForeColor="#333333" GridLines="None" ShowFooter="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                <asp:TemplateField HeaderText="INSERT">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ValidationGroup="INSERT" ID="lbinsert" runat="server" OnClick="lbinsert_Click">Insert</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ProductID" SortExpression="pid" InsertVisible="False">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("pid") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox11" runat="server" Text='<%# Eval("pid") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvpidi" ErrorMessage="ID Required in the Field!"
                            ControlToValidate="TextBox11" Text="*" ForeColor="Red" runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtpid" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfspid" ErrorMessage="ID Required in the Field!"
                            ControlToValidate="txtpid" Text="*" ForeColor="Red" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category" SortExpression="catid" 
                    InsertVisible="False">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("catid") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("catid") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvcat" ErrorMessage="ID Required in the Field!"
                            ControlToValidate="TextBox2" Text="*" ForeColor="Red" runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvcats" ErrorMessage="Password Required in the Field!"
                            ControlToValidate="txtCategory" Text="*" ForeColor="Red" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ProductName" SortExpression="pname" 
                    InsertVisible="False">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("pname") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("pname") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvPname" ErrorMessage="Name Required in the Field!"
                            ControlToValidate="TextBox3" Text="*" ForeColor="Red" runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtpname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvPPName" ErrorMessage="ID Required in the Field!"
                            ControlToValidate="txtpname" Text="*" ForeColor="Red" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                

                <asp:TemplateField HeaderText="Description" SortExpression="description" InsertVisible="False">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("description") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("description") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvdes" ErrorMessage="Name Required in the Field!"
                            ControlToValidate="TextBox3" Text="*" ForeColor="Red" runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvdesc" ErrorMessage="ID Required in the Field!"
                            ControlToValidate="txtdescription" Text="*" ForeColor="Red" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Price" SortExpression="price" InsertVisible="False">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("price") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvprice" ErrorMessage="Name Required in the Field!"
                            ControlToValidate="TextBox3" Text="*" ForeColor="Red" runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvpric" ErrorMessage="ID Required in the Field!"
                            ControlToValidate="txtprice" Text="*" ForeColor="Red" runat="server" />
                    </FooterTemplate>
                     </asp:TemplateField>

                
                 <asp:TemplateField HeaderText="Image" SortExpression="image" InsertVisible="False">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("image") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("image") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvimage" ErrorMessage="Name Required in the Field!"
                            ControlToValidate="TextBox3" Text="*" ForeColor="Red" runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtimage" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvimg" ErrorMessage="ID Required in the Field!"
                            ControlToValidate="txtimage" Text="*" ForeColor="Red" runat="server" />
                    </FooterTemplate>
                     </asp:TemplateField>


             <asp:TemplateField HeaderText="Status" SortExpression="ustatus" InsertVisible="False">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("status") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvstatus" ErrorMessage="Status Required in the Field!"
                            ControlToValidate="TextBox4" Text="*" ForeColor="Red" runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtustatus" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvstat" ErrorMessage="Status Required in the Field!"
                            ControlToValidate="txtustatus" Text="*" ForeColor="Red" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>





            </Columns>
            </asp:Repeater>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:GridView>
        <asp:ValidationSummary ValidationGroup="INSERT" ID="ValidationSummary1" ForeColor="Red"
            runat="server"></asp:ValidationSummary>
        <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red" runat="server"></asp:ValidationSummary>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLDbConnection %>"
            SelectCommand="select * from users" DeleteCommand="delete from users WHERE [uid]=@uid"
            UpdateCommand="UPDATE [users] SET [uid] = @uid , [upassword] =  @upassword , [uname] = @uname , [ustatus]=@ustatus WHERE [uid] = @uid">
            <UpdateParameters>
                <asp:Parameter Type="String" Name="uid"></asp:Parameter>
                <asp:Parameter Type="String" Name="upassword"></asp:Parameter>
                <asp:Parameter Type="String" Name="uname"></asp:Parameter>
                <asp:Parameter Type="String" Name="ustatus"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
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
