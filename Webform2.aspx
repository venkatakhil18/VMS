<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Webform2.aspx.cs" Inherits="Webform2" %>


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
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container">
            <!---heading---->
            <header class="heading">Visitor Information</header><hr></hr>


            <!---Form starting---->

            <div class="row ">

                <!--- For firstame---->
	       	<div class="col-sm-12">
            
			     <div class="col-xs-4">
				<label class="fname">First Name :</label>
			</div>
				  <div class="col-xs-8">
					  <asp:TextBox ID="fname" runat="server" placeholder="Enter your Last Name" CssClass="form-control" required="required" ></asp:TextBox>
				 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter charecters only" ControlToValidate="fname" ForeColor="White"
								ValidationExpression="^[a-zA-Z].*[\s\.]*$"
								ValidationGroup="Submit">
                </asp:RegularExpressionValidator>
			 
				  </div>
                     
			
				   </div>
                </div>

				<!---For lastname--->
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="lname">Last Name :</label>
                        </div>
                        <div class="col-xs-8">
                            <asp:TextBox ID="lname" runat="server" placeholder="Enter your Last Name" CssClass="form-control" required="required" ></asp:TextBox>
						    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter charecters only" ControlToValidate="lname" ForeColor="White"
								ValidationExpression="^[a-zA-Z].*[\s\.]*$"
								ValidationGroup="Submit">
						    </asp:RegularExpressionValidator>	
						</div>
                    </div>
                </div>


                <!-----For email---->
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="email">Email :</label>
                        </div>
                        <div class="col-xs-8">
                            <asp:TextBox ID="email" runat="server" placeholder="Enter your email" CssClass="form-control" required="required" ></asp:TextBox>
                           
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter in correct format" ControlToValidate="email" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Submit"></asp:RegularExpressionValidator>

						</div>
                    </div>
                </div>

                <!-----For Contact---->
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="contact"> Contact number :</label>
                        </div>
					
                        <div class="col-xs-8">
                            <asp:TextBox ID="contact" runat="server" placeholder="Enter your contact number" CssClass="form-control" required="required"></asp:TextBox>
                            
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please enter numbers only" ControlToValidate="contact" ForeColor="White" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ValidationGroup="Submit"></asp:RegularExpressionValidator>
				
						</div>
                    </div>
                </div>



                <!-----For Organisation---->
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="org">Your Organisation :</label>
                        </div>
                        <div class="col-xs-8">
                            <asp:TextBox ID="org" runat="server" placeholder="Enter your organisation name" CssClass="form-control" Required="required"></asp:TextBox>
							<asp:RegularExpressionValidator
			ID="RegularExpressionValidator5" runat="server" 
							ErrorMessage="Please enter charecters only"
							ControlToValidate="org"
							ForeColor="White"
								ValidationExpression="^[a-zA-Z].*[\s\.]*$"
								ValidationGroup="Submit"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>

				<!--for hostname-->
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="host">Host Name :</label>
                        </div>
                        <div class="col-xs-8">
                            <asp:TextBox ID="host" runat="server" placeholder="Enter your host name" CssClass="form-control" required="required" ></asp:TextBox>
							<asp:RegularExpressionValidator	ID="RegularExpressionValidator6" runat="server"	ErrorMessage="Please enter charecters only" ControlToValidate="host" ForeColor="White"
								ValidationExpression="^[a-zA-Z].*[\s\.]*$"
								ValidationGroup="Submit"></asp:RegularExpressionValidator>	
                        </div>
                    </div>
                </div>

				<!--for Reason--->
				 <div class="col-sm-12">
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="reason">Reason for Visit :</label>
                        </div>
                        <div class="col-xs-8">
				     <asp:DropDownList ID="reason" runat="server" CssClass="form-control" ValidateRequestMode="Enabled" required="required"></asp:DropDownList>

                     
                        </div>
						</div>
					 </div>
           

                <div class="col-sm-12">
					<br />
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="sidt">Sign-in Date/Time :</label>
                        </div>
                        <div class="col-xs-8">
                            <asp:TextBox ID="sidt" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                      </div>
                        </div>
                    </div>

                   <div class="col-sm-12">
					   <br/>
                    <div class="row">
                        <div class="col-xs-4">
                        </div>
                        <div class="col-xs-8">
                        <asp:Button ID="BtnSubmit" runat="server" ValidationGroup="Submit" CssClass=" btn btn-warning" Width="40%" Text="Submit" OnClick="BtnSubmit_Click"/>
                        </div>
                    </div>
                </div>

            

            </div>

       

    </form>
</body>
</html>
