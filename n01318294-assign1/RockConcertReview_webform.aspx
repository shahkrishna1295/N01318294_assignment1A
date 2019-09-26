<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RockConcertReview_webform.aspx.cs" Inherits="n01318294_assign1.Rock_Concert_Review_webform" %>

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
            <asp:TextBox runat="server" ID="user_name" Placeholder="Jhon"></asp:TextBox>
            <asp:RangeValidator runat="server" ErrorMessage="Please Enter Your Name..!!" ControlToValidate="user_name"></asp:RangeValidator>
        </section>
        <section>
            <h3>Email Address</h3>
            <asp:TextBox runat="server" ID="user_email" Placeholder="me@example.com"></asp:TextBox>
            <asp:RangeValidator runat="server" ErrorMessage="Please enter valid email" ControlToValidate="user_email"></asp:RangeValidator>
        </section>
        <section>
            <h3>Age</h3>
            <asp:TextBox runat="server" ID="user_age" Placeholder="20"></asp:TextBox>
        </section>
        <section>
            <h3>How did you hear about the Bush Tetras Concert?</h3>
            <asp:DropDownList runat="server" ID="information_recieved_option">
                <asp:ListItem Text="-- Choose One --" Value=""></asp:ListItem>
                <asp:ListItem Text="Internet" Value="internet"></asp:ListItem>
                <asp:ListItem Text="Friend" Value="friend"></asp:ListItem>
                <asp:ListItem Text="Flyer" Value="flyer"></asp:ListItem>
                <asp:ListItem Text="Newspaper" Value="newspaper"></asp:ListItem>
                <asp:ListItem Text="Radio" Value="radio"></asp:ListItem>
                <asp:ListItem Text="Poster" Value="poster"></asp:ListItem>
            </asp:DropDownList>
        </section>
        <section>
            <h3>How satisfactory our services was?</h3>
            <div>
                <h4>Band Performance</h4>
                <asp:RadioButton runat="server" Text="Good" />
                <asp:RadioButton runat="server" Text="Bad" />
                <asp:RadioButton runat="server" Text="Excellent" />
            </div>
            <div>
                <h4>Food and Drinks</h4>
                <asp:RadioButton runat="server" Text="Good"/>
                <asp:RadioButton runat="server" Text="Bad" />
                <asp:RadioButton runat="server" Text="Excellent" />
            </div>
            <div>
                <h4>Help Desk</h4>
                <asp:RadioButton runat="server" Text="Good"/>
                <asp:RadioButton runat="server" Text="Bad" />
                <asp:RadioButton runat="server" Text="Excellent" />
            </div>
            <div>
                <h4>Parking</h4>
                <asp:RadioButton runat="server" Text="Good"/>
                <asp:RadioButton runat="server" Text="Bad" />
                <asp:RadioButton runat="server" Text="Excellent" />
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
    </form>
</body>
</html>
