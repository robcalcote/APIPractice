<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="APIPractice.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bike Buyers Prediction Calculator</title>
    <style>
        body {font-family: Arial; font-size: 12px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Rob Calcote IS 415 Bike Buyers Prediction Calculator</h1>
        </div>
        <asp:Label ID="lblResults" runat="server" Text="{Results Show here}"></asp:Label>
    </form>
</body>
</html>
