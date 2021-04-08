<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>To add an entry please fill out the required fields</label><br /><br />
        </div>
        <div>
            <label>Year</label>
            <asp:DropDownList ID="YearDropList" runat="server">
                <asp:ListItem Enabled="true" Text="Select Year"></asp:ListItem>
                <asp:ListItem Text="2015"></asp:ListItem>
                <asp:ListItem Text="2016"></asp:ListItem>
                <asp:ListItem Text="2017"></asp:ListItem>
            </asp:DropDownList>
            
            <label>Region</label>
            <asp:DropDownList ID="RegionDropList" runat="server">
                <asp:ListItem Enabled="true" Text="Select Region"></asp:ListItem>
                <asp:ListItem Text="North"></asp:ListItem>
                <asp:ListItem Text="East"></asp:ListItem>
                <asp:ListItem Text="South"></asp:ListItem>
                <asp:ListItem Text="West"></asp:ListItem>
            </asp:DropDownList>
            <label>Month</label>
            <asp:DropDownList ID="MonthDropList" runat="server">
                <asp:ListItem Enabled="true" Text="Select Month"></asp:ListItem>
                <asp:ListItem Text="January"></asp:ListItem>
                <asp:ListItem Text="February"></asp:ListItem>
                <asp:ListItem Text="March"></asp:ListItem>
                <asp:ListItem Text="April"></asp:ListItem>
                <asp:ListItem Text="May"></asp:ListItem>
                <asp:ListItem Text="June"></asp:ListItem>
                <asp:ListItem Text="July"></asp:ListItem>
                <asp:ListItem Text="August"></asp:ListItem>
                <asp:ListItem Text="September"></asp:ListItem>
                <asp:ListItem Text="October"></asp:ListItem>
                <asp:ListItem Text="November"></asp:ListItem>
                <asp:ListItem Text="December"></asp:ListItem>
            </asp:DropDownList>
            <label>Sales</label>
            <asp:TextBox ID="SalesInput" runat="server" ></asp:TextBox><br /><br />
            <asp:Button ID="AddButton" runat="server" Text="Add Entry" OnClick="AddButton_Click" />
        </div>
    </form>
</body>
</html>
