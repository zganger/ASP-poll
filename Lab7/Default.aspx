<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Poll</title>
</head>
<body>
    <form id="form1" runat="server">
    <center><table style="width: 677px">
        <tr><td colspan="2"><h1 style="text-align: center;">Select a Candidate</h1></td></tr>
        <tr><td colspan="2"><center><asp:RadioButtonList ID="CandidateList" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Count"></asp:RadioButtonList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Candidates]"></asp:SqlDataSource>
            </center></td></tr>
        <tr><td colspan="2" style="text-align:center;"><asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click"></asp:Button></td></tr>
    </table></center>
    </form>
</body>
</html>
