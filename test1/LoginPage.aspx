<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="test1.LoginPage" %>
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<meta name="author"/>
	<title>Login Page</title>
	<link rel="stylesheet" type="text/css" href="login.css"/>	<!-- to link the css file -->
</head>
<body>
	
	<div class="bg">
		<div class="form-box">
			
		
			<form id="Login" runat="server" class="input-group"> <!-- Login option -->
				<div class="Login">
									<br /><br /><h3>Login</h3>
						</div><br /><br />
				<asp:TextBox ID="TextBoxEmail" runat="server" class="input-field" placeholder="Enter Email Address"></asp:TextBox>

				<asp:TextBox ID="TextBoxPassword" runat="server" class="input-field" placeholder="Enter Password"></asp:TextBox>
				
				<input type="checkbox" class="check-box"><span/>Remember Password
					<br /><br />
                <asp:Label ID="WarningLabel" runat="server" Text=""></asp:Label>
					<br /><br />
                <asp:Button ID="LoginButton" runat="server" class="submit-btn" Text="Login" OnClick="Buttonlog_Click" Height="62px" />
				<br /><br />
				<asp:Label ID="Label" runat="server" Text=""></asp:Label> 
				No account? Please Register <a href="RegisterPage.aspx">here</a><br /><br />
				<asp:Label ID="Label2" runat="server" Text=""></asp:Label> 
				ADMIN LOGIN... <a href="LoginAdmin.aspx">here</a>
			</form>
			
		</div>
	</div>

</body>
</html>