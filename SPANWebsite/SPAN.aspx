﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SPAN.aspx.cs" Inherits="SPANWebsite.SPAN" %>

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
                    <p>Select your group:</p>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="120px" OnSelectedIndexChanged="DropDownList1_SelectedChanged" AutoPostBack="true">
                        <asp:ListItem Text="" Value=""></asp:ListItem>
                        <asp:ListItem Text="In Home PACE" Value="1"></asp:ListItem>
                        <asp:ListItem Text="CBC PACE" Value="2"></asp:ListItem>
                        <asp:ListItem Text="ICP" Value="3"></asp:ListItem>
                        <asp:ListItem Text="CBC" Value="4"></asp:ListItem>
                        <asp:ListItem Text="NFC" Value="5"></asp:ListItem>
                    </asp:DropDownList>
                    <p></p>
                </div>
                <!--In Home PACE-->
                <div class="form-group-sm" id="IHP" runat="server"> 
                    <p></p>
                    <p>SPL Change?</p>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radiobutton" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No" Value="2"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group-sm" id="IHPEligible" runat="server">
                    <p></p>
                    <p>Still eligible?</p>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="radiobutton" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No" Value="2"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group-sm" id="IHPNoChange" runat="server">
                    <asp:ListBox ID="ListBox3" runat="server" Width="300px">
                        <asp:ListItem Text="No SPAN"></asp:ListItem>
                        <asp:ListItem Text="Send Service plan agreement"></asp:ListItem>
                    </asp:ListBox>
                </div>
                <div class="form-group-sm" id="IHPStillEligible" runat="server">
                    <asp:ListBox ID="ListBox1" runat="server" Width="300px">
                        <asp:ListItem Text="Send SPAN"></asp:ListItem>
                        <asp:ListItem Text="002N"></asp:ListItem>
                        <asp:ListItem Text="etc..."></asp:ListItem>
                    </asp:ListBox>
                </div>
                <div class="form-group-sm" id="IHPNotElligible" runat="server">
                    <asp:ListBox ID="ListBox2" runat="server" Width="300px">
                        <asp:ListItem Text="Review EWE"></asp:ListItem>
                        <asp:ListItem Text="Or other program eligibility"></asp:ListItem>
                    </asp:ListBox>
                </div>
                
                <!--CBC PACE-->
                <!--ICP-->
                <!--CBC-->
                <!--NFC-->
                <div class="form-group-sm">
                    <p></p>
                    <asp:Button ID="Button1" runat="server" Text="Reset" OnClick="Button1_Click"/>
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
