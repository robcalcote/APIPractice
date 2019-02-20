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


        <table>
            <tr>
                <td>Marital Status:</td>
                <td><asp:RadioButtonList ID="rblMaritalStatus" runat="server">
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td><asp:RadioButtonList ID="rblGender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td>Income:</td>
                <td><asp:TextBox ID="txtIncome" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Children:</td>
                <td><asp:DropDownList ID="ddlChildren" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem Value="6">6+</asp:ListItem>
                </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Cars:</td>
                <td><asp:TextBox ID="txtCars" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Age:</td>
                <td><asp:TextBox ID="txtAge" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Education:</td>
                <td><asp:RadioButtonList ID="rblEducation" runat="server">
                    <asp:ListItem>Partial High School</asp:ListItem>
                    <asp:ListItem>High School</asp:ListItem>
                    <asp:ListItem>Partial College</asp:ListItem>
                    <asp:ListItem>Bachelors</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td>Occupation:</td>
                <td><asp:RadioButtonList ID="rblOccupation" runat="server">
                    <asp:ListItem>Skilled Manual</asp:ListItem>
                    <asp:ListItem>Clerical</asp:ListItem>
                    <asp:ListItem>Management</asp:ListItem>
                    <asp:ListItem>Professional</asp:ListItem>
                </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td>Home Owner:</td>
                <td><asp:RadioButtonList ID="rblHomeOwner" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td>Commute Distance:</td>
                <td><asp:RadioButtonList ID="rblCommute" runat="server">
                    <asp:ListItem>0-1 Miles</asp:ListItem>
                    <asp:ListItem>1-2 Miles</asp:ListItem>
                    <asp:ListItem>2-5 Miles</asp:ListItem>
                    <asp:ListItem>5-10 Miles</asp:ListItem>
                    <asp:ListItem>10+ Miles</asp:ListItem>
                </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td>Region:</td>
                <td><asp:RadioButtonList ID="rblRegion" runat="server">
                    <asp:ListItem>North America</asp:ListItem>
                    <asp:ListItem>Europe</asp:ListItem>
                    <asp:ListItem>Pacific</asp:ListItem>
                </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:LinkButton ID="lbPredict" runat="server" OnClick="lbPredict_Click">Predict</asp:LinkButton></td>
            </tr>
        </table>

        <h2><asp:Label ID="lblResults" runat="server" Text="{Results Show here}"></asp:Label></h2>
        <br /> <br />
        
    </form>
</body>
</html>
