<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="home.Login" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Page</title>
	<style>
		body {
			background-color: #f3f3f3;
			font-family: Arial, sans-serif;
			font-size: 16px;
			margin: 0;
			padding: 0;
		}

		.container {
			background-color: #fff;
			border-radius: 5px;
			box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
			margin: 100px auto;
			max-width: 400px;
			padding: 20px;
		}

		h1 {
			color: #333;
			font-size: 28px;
			margin: 0 0 20px 0;
			text-align: center;
		}

		form {
			display: flex;
			flex-direction: column;
			align-items: center;
		}

		input[type="text"],
		input[type="password"] {
			border: 1px solid #ccc;
			border-radius: 5px;
			box-sizing: border-box;
			font-size: 16px;
			margin: 10px 0;
			padding: 10px;
			width: 100%;
		}

		input[type="submit"] {
			background-color: #4CAF50;
			border: none;
			border-radius: 5px;
			color: #fff; 
			cursor: pointer;
			font-size: 16px;
			padding: 10px;
			width: 100%;
		}

		input[type="submit"]:hover {
			background-color: #3e8e41;
			transition: background-color 0.2s ease;
		}

		input {
			border: 2px solid #ccc;
			border-radius: 4px;
			padding: 8px 12px;
			margin: 8px 0;
			box-sizing: border-box;
			outline: none;
		}

		p {
			color: #333;
			font-size: 14px;
			margin: 0;
			text-align: center;
		}

		a {
			color: #4CAF50;
			text-decoration: none;
		}

		a:hover {
			text-decoration: underline;
		}

	</style>
</head>
<body>
	<div class="container">
		<h1>Login Page</h1>
		<form runat="server">
			<asp:textbox ID="UserName" runat="server" Placeholder="Username" required></asp:textbox>
			<asp:textbox ID="PassWord" runat="server" TextMode="Password" Placeholder="Password" required></asp:textbox>
			<asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
			<asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="UserLogin"/>
		</form>
		<p>Don't have an account? <a href="Signup.aspx">Sign up here</a>.</p>
	</div>
</body>
</html>

