<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RockConcertReview_webform.aspx.cs" Inherits="n01318294_assign1b.RockConcertReview_webform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Rock Concert Review</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css" />

</head>
<body>
    <form id="form" runat="server">
            <h1 class="band_name">Bush Tetras band</h1>        
            <h2 class="formtype">Share your experiance with us..!!</h2>
        <section>
            <h3>Name</h3>
            <asp:TextBox runat="server" ID="customer_name" Placeholder="Jhon"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter your name." ControlToValidate="customer_name"></asp:RequiredFieldValidator>
           
        </section>
        <section>
            <h3>Email Address</h3>
            <asp:TextBox runat="server" ID="customer_email" Placeholder="me@example.com"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="customer_email" ErrorMessage="Please enter your email."></asp:RequiredFieldValidator>            
            <%/*Reference for the email expression : (The Official Forums for Microsoft ASP.NET, 2019)*/ %>
            <asp:RegularExpressionValidator runat="server" ValidationExpression="^[\w-\.]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]{2,6}$" ErrorMessage="Please enter valid email" ControlToValidate="customer_email" EnableClientScript="true"></asp:RegularExpressionValidator>
        </section>
        <section>
            <h3>Age</h3>
            <asp:TextBox runat="server" ID="customer_age" Placeholder="from 15 to 70"></asp:TextBox>            
            <asp:RangeValidator runat="server" Type="Integer" ControlToValidate="customer_age" ErrorMessage="Please enter valid age." MinimumValue="10" MaximumValue="70"></asp:RangeValidator>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="customer_age" ErrorMessage="Please enter your age." EnableClientScript="true"></asp:RequiredFieldValidator>
        </section>
        <section>
            <h3>How did you hear about the Bush Tetras Concert?</h3>
            <asp:DropDownList runat="server" ID="information_source_option">
                <asp:ListItem Text="-- Choose One --" Value=""></asp:ListItem>
                <asp:ListItem Text="Internet" Value="internet"></asp:ListItem>
                <asp:ListItem Text="Friend" Value="friend"></asp:ListItem>
                <asp:ListItem Text="Flyer" Value="flyer"></asp:ListItem>
                <asp:ListItem Text="Newspaper" Value="newspaper"></asp:ListItem>
                <asp:ListItem Text="Radio" Value="radio"></asp:ListItem>
                <asp:ListItem Text="Poster" Value="poster"></asp:ListItem>
                <asp:ListItem Text="Other" Value="other"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="information_source_option" ErrorMessage="Please select a source."></asp:RequiredFieldValidator>
        </section>
        <section>
            <h3>How satisfactory our services was?</h3>
            <div>
                <h4>Band Performance</h4>
                <asp:RadioButtonList runat="server" ID="bandperformance_review" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Bad" Value="bad"></asp:ListItem>                                
                    <asp:ListItem Text="Good" Value="good" ></asp:ListItem>
                    <asp:ListItem Text="Excellent" Value="excellent"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="bandperformance_review" ErrorMessage="Please select review for band performnace"></asp:RequiredFieldValidator>
            </div>
            <div>
                <h4>Food and Drinks</h4>
                <asp:RadioButtonList runat="server" ID="foodanddrink_review" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Bad" Value="bad"></asp:ListItem>                                
                    <asp:ListItem Text="Good" Value="good" ></asp:ListItem>
                    <asp:ListItem Text="Excellent" Value="excellent"></asp:ListItem>
                </asp:RadioButtonList>
                
            </div>
            <div>
                <h4>Help Desk</h4>
                <asp:RadioButtonList runat="server" ID="helpdesk_review" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Bad" Value="bad"></asp:ListItem>                                
                    <asp:ListItem Text="Good" Value="good" ></asp:ListItem>
                    <asp:ListItem Text="Excellent" Value="excellent"></asp:ListItem>
                </asp:RadioButtonList>
                
            </div>
            <div>
                <h4>Parking</h4>
                <asp:RadioButtonList runat="server" ID="parking_review" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Bad" Value="bad"></asp:ListItem>                                
                    <asp:ListItem Text="Good" Value="good" ></asp:ListItem>
                    <asp:ListItem Text="Excellent" Value="excellent"></asp:ListItem>
                </asp:RadioButtonList>
                
            </div>
            <div>
                <h4>Overall Concert</h4>
                <asp:RadioButtonList runat="server" ID="overall_review" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Bad" Value="bad"></asp:ListItem>                                
                    <asp:ListItem Text="Good" Value="good" ></asp:ListItem>
                    <asp:ListItem Text="Excellent" Value="excellent"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="overall_review" ErrorMessage="Please select an option for overall review"></asp:RequiredFieldValidator>
            </div>
        </section>
        <section>
            <h3>What fascinated you the most in the Concert?</h3>
            <asp:TextBox runat="server" ID="most_liked_thing" Placeholder="props"></asp:TextBox>
        </section>
        <section>
            <h3>What did you like the least about the Concert?</h3>
            <asp:TextBox runat="server" ID="least_liked_thing" Placeholder="entrance"></asp:TextBox>
        </section>
        <section>
            <div>
                <h3>Other Suggestions</h3>
            </div>
            <div>
                <asp:TextBox runat="server" TextMode="MultiLine" ID="suggestion_box"></asp:TextBox>
            </div>            
        </section>
        <section>
            <asp:CheckBox runat="server" id="publish_permission_checkbox" />
            <label>I am ok if you publish my feedback on the website or other promotional activities.</label>
        </section>
        <section>
            <asp:CheckBox runat="server" id="newsletter_checkbox"/>
            <label>Subscribe to Newsletter.</label>
        </section>
        <section>
            <asp:Button runat="server" Text="Submit"/>
        </section>
        <section>
            <asp:ValidationSummary ID="ValidationSummary" runat="server" DisplayMode = "BulletList" ShowSummary = "true" HeaderText="Error Message:" />
        </section>
        <section id="summary" runat="server"></section>
    </form>
</body>
</html>
