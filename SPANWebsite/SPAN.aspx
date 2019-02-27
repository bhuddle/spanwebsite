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
                    <p>Select your group:</p>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px" OnSelectedIndexChanged="DropDownList1_SelectedChanged" AutoPostBack="true">
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
                <div class="form-group-sm" id="CBCPace" runat="server" visible="false"> 
                    <p></p>
                    <p>SPL Change?</p>
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" CssClass="radiobutton" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No" Value="2"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group-sm" id="CBCPaceElligible" runat="server" visible="false">
                    <p></p>
                    <p>Still eligible?</p>
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" CssClass="radiobutton" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList4_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No" Value="2"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group-sm" id="CBCPaceNoChange" runat="server" visible="false">
                    <asp:ListBox ID="ListBox4" runat="server" Width ="300px">
                        <asp:ListItem Text="No SPAN"></asp:ListItem>
                        <asp:ListItem Text="etc."></asp:ListItem>
                    </asp:ListBox>
                </div>
                <div class="form-group-sm" id="CBCPaceStillElligible" runat="server" visible="false">
                    <asp:ListBox ID="ListBox5" runat="server" Width="300px">
                        <asp:ListItem Text="Send SPAN"></asp:ListItem>
                        <asp:ListItem Text="002N"></asp:ListItem>
                        <asp:ListItem Text="etc..."></asp:ListItem>
                    </asp:ListBox>
                </div>
                <div class="form-group-sm" id="CBCPaceNotElligible" runat="server" visible="false">
                    <asp:ListBox ID="ListBox6" runat="server" Width="300px">
                        <asp:ListItem Text="Review EWE"></asp:ListItem>
                        <asp:ListItem Text="Or other program eligibility"></asp:ListItem>
                    </asp:ListBox>
                </div>

                <!--ICP-->  
                <div class="form-group-sm" id="ICP" runat="server" visible="false">
                    <p></p>
                    <p>SPL Change?</p>
                    <asp:RadioButtonList ID="RadioButtonList5" runat="server" CssClass="radiobutton" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList5_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No" Value="2"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group-sm" id="ICPElligible" runat="server" visible="false">
                    <p></p>
                    <p>Still eligible?</p>
                    <asp:RadioButtonList ID="RadioButtonList6" runat="server" CssClass="radiobutton" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList6_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No" Value="2"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group-sm" id="ICPNoChange" runat="server" visible="false">
                    <asp:ListBox ID="ListBox7" runat="server" Width="300px">
                        <asp:ListItem Text="No SPAN"></asp:ListItem>
                        <asp:ListItem Text="Send Service plan agreement"></asp:ListItem>
                        <asp:ListItem Text="add different ICP forms"></asp:ListItem>
                    </asp:ListBox>
                </div>
                <div class="form-group-sm" id="ICPStillElligible" runat="server" visible="false">
                    <asp:ListBox ID="ListBox8" runat="server" Width="300px">
                        <asp:ListItem Text="Send SPAN"></asp:ListItem>
                        <asp:ListItem Text="002N"></asp:ListItem>
                        <asp:ListItem Text="etc..."></asp:ListItem>
                        <asp:ListItem Text="add different ICP forms"></asp:ListItem>
                    </asp:ListBox>
                </div>
                <div class="form-group-sm" id="ICPNotElligible" runat="server" visible="false">
                    <asp:ListBox ID="ListBox9" runat="server" Width="300px">
                        <asp:ListItem Text="Review EWE"></asp:ListItem>
                        <asp:ListItem Text="Or other program eligibility"></asp:ListItem>
                        <asp:ListItem Text="add different ICP forms"></asp:ListItem>
                    </asp:ListBox>
                </div>
                <!--CBC-->
                <div class="form-group-sm" id="CBC" runat="server" visible="false"> 
                    <p></p>
                    <p>SPL Change?</p>
                    <asp:RadioButtonList ID="RadioButtonList7" runat="server" CssClass="radiobutton" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList7_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No" Value="2"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group-sm" id="CBCElligible" runat="server" visible="false">
                    <p></p>
                    <p>Still eligible?</p>
                    <asp:RadioButtonList ID="RadioButtonList8" runat="server" CssClass="radiobutton" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList8_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No" Value="2"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group-sm" id="CBCNoChange" runat="server" visible="false">
                    <asp:ListBox ID="ListBox10" runat="server" Width ="300px">
                        <asp:ListItem Text="No SPAN"></asp:ListItem>
                        <asp:ListItem Text="etc. for CBC"></asp:ListItem>
                    </asp:ListBox>
                </div>
                <div class="form-group-sm" id="CBCStillElligible" runat="server" visible="false">
                    <asp:ListBox ID="ListBox11" runat="server" Width="300px">
                        <asp:ListItem Text="Send SPAN"></asp:ListItem>
                        <asp:ListItem Text="002N"></asp:ListItem>
                        <asp:ListItem Text="etc...For CBC"></asp:ListItem>
                    </asp:ListBox>
                </div>
                <div class="form-group-sm" id="CBCNotElligible" runat="server" visible="false">
                    <asp:ListBox ID="ListBox12" runat="server" Width="300px">
                        <asp:ListItem Text="Review EWE"></asp:ListItem>
                        <asp:ListItem Text="Or other program eligibility for CBC"></asp:ListItem>
                    </asp:ListBox>
                </div>
                <!--NFC-->
                <div class="form-group-sm" id="NFC" runat="server" visible="false"> 
                    <p></p>
                    <p>SPL Change?</p>
                    <asp:RadioButtonList ID="RadioButtonList9" runat="server" CssClass="radiobutton" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList9_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No" Value="2"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group-sm" id="NFCElligible" runat="server" visible="false">
                    <p></p>
                    <p>Still eligible?</p>
                    <asp:RadioButtonList ID="RadioButtonList10" runat="server" CssClass="radiobutton" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList10_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No" Value="2"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group-sm" id="NFCNoChange" runat="server" visible="false">
                    <asp:ListBox ID="ListBox13" runat="server" Width ="300px">
                        <asp:ListItem Text="No SPAN"></asp:ListItem>
                        <asp:ListItem Text="etc. for NFC"></asp:ListItem>
                    </asp:ListBox>
                </div>
                <div class="form-group-sm" id="NFCStillElligible" runat="server" visible="false">
                    <asp:ListBox ID="ListBox14" runat="server" Width="300px">
                        <asp:ListItem Text="Send SPAN"></asp:ListItem>
                        <asp:ListItem Text="002N"></asp:ListItem>
                        <asp:ListItem Text="etc... for NFC"></asp:ListItem>
                    </asp:ListBox>
                </div>
                <div class="form-group-sm" id="NFCNotElligible" runat="server" visible="false">
                    <asp:ListBox ID="ListBox15" runat="server" Width="300px">
                        <asp:ListItem Text="Review EWE"></asp:ListItem>
                        <asp:ListItem Text="Or other program eligibility for NFC"></asp:ListItem>
                    </asp:ListBox>
                </div>
                <!--Reset Button-->
                <div class="form-group-sm">
                    <p></p>
                    <asp:Button ID="Button1" runat="server" Text="Reset" OnClick="Button1_Click"/>
                </div>
            </div>
            <div class="col-sm-2 sidenav-right">
                <p></p>
            </div>
        </div>
        <!--#include file="Footer.html"-->
    </form>
</body>
</html>
