<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="WebForm1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link rel="stylesheet" href="css/A.css"/>
	<link rel="stylesheet" href="css/bootstapeMin.css"/>	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	<title>Welcome</title>
</head>
<body>
	<form id="form1" runat="server">

		<div class="text-center">
        <h1 class="Home-Screen1">Welcome to Swingtech Consulting, INC.</h1>
		
		
	
		
					   <div class ="row">  <div class="col-sm-4"></div>
		                 <div class="col-sm-4"><br />
		                <asp:Button ID="Button1" runat="server" Text="SIGN IN" CssClass="btn btn-warning" Font-Bold="true" Font-Size="Large" Width="300px" Height="20%" OnClick="Button1_Click"/>
						</div></div>
						     <div class ="row">  <div class="col-sm-4"></div>
		                 <div class="col-sm-4"><br />
		                <asp:Button ID="Button2" runat="server" Text="SIGN OUT" CssClass="btn btn-warning" Font-Bold="true" Font-Size="Large" Width="300px" Height="20%"  OnClick="Button2_Click" />
						</div>
						      
						  
						</div>
						  
		     	</div>		      

			</form>  
	
 </body>
</html>

