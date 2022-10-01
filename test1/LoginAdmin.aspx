<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="test1.LoginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<meta name="author"/>
	<title>Login Page</title>
	<link rel="stylesheet" type="text/css" href="login.css"/>
</head>
<body>
    <div class="bg">
		<div class="form-box">
			
		
			<form id="Login" runat="server" class="input-group"> <!-- Login option -->
				<div class="Login">
									<br /><br /><h3>Login Admin</h3>
						</div><br /><br />
				<asp:TextBox ID="TextBoxEmail" runat="server" class="input-field" placeholder="Enter Email Address"></asp:TextBox>

				<asp:TextBox ID="TextBoxPassword" runat="server" class="input-field" placeholder="Enter Password"></asp:TextBox>
				
				<input type="checkbox" class="check-box"><span/>Remember Password
					<br /><br />
                <asp:Label ID="WarningLabel" runat="server" Text=""></asp:Label>
					<br /><br />
                <asp:Button ID="LoginButton" runat="server" class="submit-btn" Text="Login" OnClick="Buttonlog_Click" Height="62px" />
				<br /><br />
				
			</form>
			
		</div>
	</div>
</body>
</html>
