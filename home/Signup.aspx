<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="home.Signup" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Signup Page</title>
	<link rel="stylesheet" href="style.css">
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f1f1f1;
		}

		.container {
			margin: 80px auto;
			padding: 20px;
			background-color: #fff;
			box-shadow: 0px 0px 20px #888888;
			max-width: 500px;
		}

		h1 {
			text-align: center;
		}

		form {
			display: flex;
			flex-direction: column;
		}

		label {
			font-weight: bold;
			margin-top: 10px;
		}

		input[type="text"],
		input[type="email"],
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
			color: #fff;
			padding: 10px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		}

		input[type="submit"]:hover {
			background-color: #3e8e41;
		}

		input {
			border: 2px solid #ccc;
			border-radius: 4px;
			padding: 8px 12px;
			margin: 8px 0;
			box-sizing: border-box;
			outline: none;
		}

		input:focus {
			border-color: #3b88c3;
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
		<form action="" method="POST" runat="server">
				<h1>Sign Up</h1>
				<asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
				<asp:TextBox ID="txtUsername" runat="server" placeholder="Username" CssClass="form-control" required></asp:TextBox>
				<asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="form-control" required></asp:TextBox>
				<asp:TextBox ID="txtPassword" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password" required></asp:TextBox>
				<asp:TextBox ID="txtConfirmPassword" runat="server" placeholder="Confirm Password" CssClass="form-control" TextMode="Password" required></asp:TextBox>
				<asp:Button ID="btnSignUp" runat="server" Text="Sign Up" />
		</form>
		<p>Already have an account? <a href="Login.aspx">Login now</a>.</p>
	</div>
</body>
</html>

