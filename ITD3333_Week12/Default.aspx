<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Module 12 Data</title>
    <link rel="stylesheet" href="data.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Sales Entry Form</h1><br />
            <label>To add an entry please fill out the required fields</label><br /><br />
        </div>
        <div>
            <label>Year</label>
            <asp:DropDownList ID="YearDropList" runat="server">
            </asp:DropDownList>
            <label>Region</label>
            <asp:DropDownList ID="RegionDropList" runat="server">
            </asp:DropDownList>
            <label>Month</label>
            <asp:DropDownList ID="MonthDropList" runat="server">
            </asp:DropDownList>
            <label>Sales</label>
            <asp:TextBox ID="SalesInput" runat="server" ></asp:TextBox><br /><br />
            <asp:Button ID="AddButton" runat="server" Text="Add Entry" OnClick="AddButton_Click" /><br /><br />
            <asp:Label ID="lblStatus" runat="server"></asp:Label>
        </div>
        <asp:Button ID="displayButton" runat="server" Text="Display Data" OnClick="displayButton_Click" />
        <asp:DropDownList ID="dataDropList" runat="server"></asp:DropDownList>
        <asp:Chart ID="userChart" runat="server">
            <Series>
                <asp:Series Name="Series1"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
    </form>
</body>
</html>
