<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm7.aspx.cs" Inherits="WebForm7" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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
            <header class="heading">Please Sign-Out here</header><hr />
			

            <!---Form starting---->
			<div class="row">
           
                <!--- For firstame---->
	       	<div class="col-sm-12">
           

			     <div class="col-xs-4"> 
				<label class="Auto">Your Name :</label>
					 </div>
				  <div class="col-xs-8">
				  <asp:TextBox ID="txt_Visitor_Name" runat="server" placeholder="Please enter your Firstname/Lastname "  CssClass="form-control" required="required"></asp:TextBox>	
				<asp:ScriptManager ID="ScriptManager2" runat="server">
			  
							
					          <Services>
							  <asp:ServiceReference Path="~/WebService1.asmx"/>
							  </Services>

     </asp:ScriptManager><ajaxToolkit:AutoCompleteExtender runat="server" ID="Auto1" TargetControlID="txt_Visitor_Name" ServicePath="WebService1.asmx" ServiceMethod="GetSearch" MinimumPrefixLength="1" EnableCaching = "true" />

				 </div>
                  </div> 
			</div>
				 
		
		 <div class="col-sm-12">
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="sodt">Sign-Out Date/Time:</label>
                        </div>
                        <div class="col-xs-8">
                            <asp:TextBox ID="sodt" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                      </div>
                        </div>
                    </div>



			<div class="col-sm-12">
					<br />
                    <div class="row">
                        <div class="col-xs-4">
                        </div>
                        <div class="col-xs-8"> 
                        <asp:Button ID="BtnSubmit" runat="server" ValidationGroup="Submit" OnClick="BtnSubmit_Click" CssClass=" btn btn-warning" Width="40%" Text="Sign-out"/>
                        </div>
						</div>
				</div>
        </div>

    </form>
</body>
</html>

