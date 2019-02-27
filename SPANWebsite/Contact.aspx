<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SPANWebsite.Contact" %>

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
            <div class="col-sm-8 body" style="text-align:center">
                <h1>Contact</h1>
                <h4>Creator</h4>
                <p>Benjamin Huddle</p>
                <h4>Email</h4>
                <p>benjaminehuddle@gmail.com</p>
                <!--Add some kind of mailto stuff-->
            </div>
            <div class="col-sm-2 sidenav-right">
                <p></p>
            </div>
        </div>
        <!--#include file="Footer.html"-->
    </form>
</body>
</html>
