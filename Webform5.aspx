<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Webform5.aspx.cs" Inherits="Webform5" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="signout.css"/>
    <title>Welcome</title>
    <link rel="stylesheet" href="css/A.css"/>
	<link rel="stylesheet" href="css/bootstapeMin.css"/>	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.8.0.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.22/jquery-ui.js"></script>
    <link rel="Stylesheet" href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/themes/redmond/jquery-ui.css" />
   
        <script type="text/javascript">
            var dataSrc;
      
        $.ajax({
            type: "POST",
            url: "webservice.asmx/searchRecord",
            data: "{}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: ShowData                    
        });
        
        function ShowData(data) {
            dataSrc = data.d.split(',');           
            $(function () {
                $("#txt_Visitor_Name").autocomplete({
                    source: dataSrc
                });
            });
        }
           
    </script>
	
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

