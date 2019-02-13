<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SPAN.aspx.cs" Inherits="SPANWebsite.SPAN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Oregon DHS Form Assist</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="~/Style/StyleSheet1.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <!--#include file="Header.html"-->
        <div>
            <div class="col-sm-2 sidenav-left">
                <p><a href="#">Link</a></p>
                <p><a href="#">Link</a></p>
                <p><a href="#">Link</a></p>
            </div>
            <div class="col-sm-8 body">
                <div class="form-group-sm">
                    <h1>SPAN</h1>
                    <p>Something about getting started</p>
                    <hr />
                </div>
                <div class="form-group-sm">
                    <p>Select your group</p>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="120px">
                        <asp:ListItem Text="In Home PACE" Value="1"></asp:ListItem>
                        <asp:ListItem Text="CBC PACE" Value="2"></asp:ListItem>
                        <asp:ListItem Text="ICP" Value="3"></asp:ListItem>
                        <asp:ListItem Text="CBC" Value="4"></asp:ListItem>
                        <asp:ListItem Text="NFC" Value="5"></asp:ListItem>
                    </asp:DropDownList>
                    <p></p>
                </div>
                <div class="form-group-sm"> <!--Add 'Hidden' to class to hide it-->
                    <p>This choice will only show with certain selection of above</p>
                </div>
            </div>
            <div class="col-sm-2 sidenav-right">
                <p>Nada</p>
            </div>
        </div>
        <!--#include file="Footer.html"-->
    </form>
</body>
</html>
