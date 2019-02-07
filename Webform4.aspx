<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Webform4.aspx.cs" Inherits="Webform4" %>

	
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
        <div class="container1">
            <!---heading---->
            <header class="heading">Administrator Login</header><hr></hr>


            <!---Form starting---->

            <div class="row ">

             </div> 
			

			<!--- For firstame---->
	       	<div class="col-sm-12">
             <div class="row">
			     <div class="col-xs-4">
				<label class="uname">Admin Username:</label>
			</div>
				  <div class="col-xs-8">
					  <asp:TextBox ID="uname" runat="server" placeholder="Enter your Username" CssClass="form-control" required="required" ></asp:TextBox>
					 
				  </div>
                 </div>
				   </div>
			
			  <div class="col-sm-12">
				  <br />
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="pswd">Admin Password:</label>
                        </div>
                        <div class="col-xs-8">
                            <asp:TextBox ID="pswd" runat="server" placeholder="Enter your password" CssClass="form-control" required="required" TextMode="Password" ></asp:TextBox>
                           
                          

						</div>
                    </div>
                </div>

			<div class="col-sm-12">
				<br />
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="sidt">Login-in Date/Time:</label>
                        </div>
                        <div class="col-xs-8">
                            <asp:TextBox ID="sidt" runat="server" CssClass="form-control"></asp:TextBox>
                      </div>
                        </div>
                    </div>

		
			<div class="col-sm-12">
					<br />
                    <div class="row">
                        <div class="col-xs-4">
                        </div>
                        <div class="col-xs-8">
                        <asp:Button ID="BtnSubmit" runat="server" CssClass=" btn btn-warning" Width="40%" Text="Submit" OnClick="Btnlogin_Click" />
                        </div>
                    </div>
                </div>

        </div>
                 
        </form>
	</body>
	</html>