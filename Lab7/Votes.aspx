<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Votes.aspx.cs" Inherits="Votes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Results</title>
</head>
<body>
    <form id="form1" runat="server">
    <center><table style="width: 677px">
        <tr><td colspan="3"><h1 style="text-align: center;">Thank you for Voting!</h1><p style="text-align:center;">Current results:</p></td></tr>
        <tr><td colspan="3">
            <center><asp:Repeater ID="Results" runat="server" DataSourceID="SqlDataSource1">
                <headertemplate>
            <table border="1">
            <tr>
              <td><b>Candidate</b></td>
              <td><b>Votes</b></td>
              <td><b>Percentage</b></td>
            </tr>
        </headertemplate>
        <itemtemplate>
          <tr>
            <td> <%# Eval("Name") %> </td>
            <td> <%# Eval("Count") %> </td>
            <td> <%# Percentage((int.Parse(Eval("Count").ToString()))) %>% </td>
          </tr>
        </itemtemplate>
            </asp:Repeater></center>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Candidates]"></asp:SqlDataSource>
        </td></tr>
    </table></center>
    </form>
</body>
</html>
