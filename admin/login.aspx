<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>



<!DOCTYPE html>
<html lang="en">
    <head>
    <title>McDonald's Cabanatuan</title>
   <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>Custom Login Form Styling</title>
        <meta name="description" content="Custom Login Form Styling with CSS3" />
        <meta name="keywords" content="css3, login, form, custom, input, submit, button, html5, placeholder" />
        <link rel="shortcut icon" href="../favicon.ico"> 
         <link rel="stylesheet" type="text/css" href="../style/login.css"/>
        <link rel="stylesheet" type="text/css" href="../style/loginstyle.css"/>
         <link rel="stylesheet" type="text/css" href="../style/demo.css"/>
          <link rel="stylesheet" type="text/css" href="../style/font-awsome.css"/>
        <script src="../tool/jscript/modernizr.custom.63321.js"></script>
 
	
    </head>
    <body bgcolor="#eae3d1" >
    	<div id="topbanner">
	<div id="bannertextcontainer">
	<a href="../index.aspx"><div id="logo"></div></a><!--end of logo div-->
	
    <br /><br />

    <div id="menutop"> </div>


</div><!--bannertextcontainer end div -->
</div><!--topbanner end div -->
        <div class="container">
			<section class="main">
            <br /> <br /> <br /> <br /> <br /> <br />
				<form class="form-2" runat="server" autocomplete="off">
					<h1><span class="log-in">Log in</span></h1>
					<p class="float">
						<label for="login"><i class="icon-user"></i>Username</label>
						<asp:TextBox ID="UserName" RunAt="server" />
                    <asp:RequiredFieldValidator ID="rfvUserName" runat="server" Display="Dynamic"
 CssClass="validator"  ControlToValidate="UserName" ErrorMessage="User Name is required"></asp:RequiredFieldValidator>
					</p>
					<p class="float">
						<label for="password"><i class="icon-lock"></i>Password</label>
						 <asp:TextBox ID="Password" TextMode="password" RunAt="server" />
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" Display="Dynamic"
 CssClass="validator" ControlToValidate="Password" ErrorMessage="Password is required"></asp:RequiredFieldValidator> 
                 	
					</p>
                    
                    <p class="float">
						<label for="login">Message</label>
						<asp:Label ID="Message" runat="server" Text=""></asp:Label>
					</p>
                    
				  <p class="clearfix">  <center>  
						<asp:Button ID="SubmitForm" OnClick="SubmitForm_Click" RunAt="server" text="Login" />
					</center></p>
				</form>​​
			</section>
			
        </div>
		<!-- jQuery if needed -->
        <script type="text/javascript" src="../tool/jscript/jquery.minss.js"></script>
		<script type="text/javascript">
			$(function(){
			    $(".showpassword").each(function(index,input) {
			        var $input = $(input);
			        $("<p class='opt'/>").append(
			            $("<input type='checkbox' class='showpasswordcheckbox' id='showPassword' />").click(function() {
			                var change = $(this).is(":checked") ? "text" : "password";
			                var rep = $("<input placeholder='Password' type='" + change + "' />")
			                    .attr("id", $input.attr("id"))
			                    .attr("name", $input.attr("name"))
			                    .attr('class', $input.attr('class'))
			                    .val($input.val())
			                    .insertBefore($input);
			                $input.remove();
			                $input = rep;
			             })
			        ).append($("<label for='showPassword'/>").text("Show password")).insertAfter($input.parent());
			    });

			    $('#showPassword').click(function(){
					if($("#showPassword").is(":checked")) {
						$('.icon-lock').addClass('icon-unlock');
						$('.icon-unlock').removeClass('icon-lock');    
					} else {
						$('.icon-unlock').addClass('icon-lock');
						$('.icon-lock').removeClass('icon-unlock');
					}
			    });
			});
		</script>
       
   <br /><br />
<br />
	
<div id="footlogoscontainer"> <div id="footlogo"><a href="#thumb"><img src="../images/pootpoot.png" /></a>
                          </div> </div>
       <div id="footer">
 		<div id="footbanner">
        <div id="footcontainer">
        <div id="footmenu">
        <div id="footfirst">
        <br />
           <p><a href="terms.aspx">Terms & Conditions</a> | <a href="privacy.aspx">Privacy & Policy</a> | 
         <font color="#f1ede2"> Follow us on &nbsp;&nbsp;&nbsp;</font></p><br />
    	<p><font size="2" color="#9d9fa1">2014 McDonald's All rights reserved | Web Design by:</font><font color="#FFFFFF" size="2"> 
        <a href="https://www.facebook.com/rens.ramos" target="_blank">Rens Daniel Ramos</a></font></p>
        </div>
        <div id="circlefb"><a href="https://www.facebook.com/McDonaldsCabanatuan" target="_blank"><img src="../images/fb.png" /></a>
        <a href="https://twitter.com/McDo_PH" target="_blank"><img src="../images/twitter.png" /></a>
        </div>
       
          </div>
        </div>
        </div> 
       <embed height="50" width="100" src="../audio/Hooray For Today!.mp3" autostart="true" hidden="true">  
</div>
        
</body>
</html>