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
            <h1 class="band_name">Bush Tetras</h1>        
            <h2 class="formtype">Share your experiance with us..!!</h2>
        <section>
            <h3>Name</h3>
            <asp:TextBox runat="server" ID="user_name"></asp:TextBox>
        </section>
        <section>
            <h3>Email Address</h3>
            <asp:TextBox runat="server" ID="user_email"></asp:TextBox>
        </section>
        <section>
            <h3>Age</h3>
            <asp:TextBox runat="server" ID="user_age"></asp:TextBox>
        </section>
        <section>
            <label>How did you hear about the Bush Tetras Concert?</label>
            <asp:DropDownList runat="server" ID="information_recieved_option">
                <asp:ListItem Text="Internet" Value="internet"></asp:ListItem>
                <asp:ListItem Text="Friend" Value="friend"></asp:ListItem>
                <asp:ListItem Text="Flyer" Value="flyer"></asp:ListItem>
                <asp:ListItem Text="Newspaper" Value="newspaper"></asp:ListItem>
                <asp:ListItem Text="Radio" Value="radio"></asp:ListItem>
                <asp:ListItem Text="Poster" Value="poster"></asp:ListItem>
            </asp:DropDownList>
        </section>
        <section>
                <asp:Table runat="server">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>Services</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Very Dissatisfied</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Dissatisfied</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Neutral</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Satisfied</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Very Satisfied</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell><label>Date</label></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="date_radiobutton_1" value="very_dissatisfied" Name="radio_date"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="date_radiobutton_2" value="dissatisfied" Name="radio_date"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="date_radiobutton_3" value="neutral" Name="radio_date"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="date_radiobutton_4" value="satisfied" Name="radio_date"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="date_radiobutton_5" value="very_satisfied" Name="radio_date"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><label>Location</label></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="location_radiobutton_1" value="very_dissatisfied" Name="radio_location"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="location_radiobutton_2" value="dissatisfied" Name="radio_location"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="location_radiobutton_3" value="neutral" Name="radio_location"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="location_radiobutton_4" value="satisfied" Name="radio_location"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="location_radiobutton_5" value="very_satisfied" Name="radio_location"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><label>Band Performance</label></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="bandperformance_radiobutton_1" value="very_dissatisfied" Name="radio_performance"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="bandperformance_radiobutton_2" value="dissatisfied" Name="radio_performance"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="bandperformance_radiobutton_3" value="neutral" Name="radio_performance"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="bandperformance_radiobutton_4" value="satisfied" Name="radio_performance"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="bandperformance_radiobutton_5" value="very_satisfied" Name="radio_performance"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><label>Food and Drinks</label></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="fooddrink_radiobutton_1" value="very_dissatisfied" Name="radio_fooddrink"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="fooddrink_radiobutton_2" value="dissatisfied" Name="radio_fooddrink"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="fooddrink_radiobutton_3" value="neutral" Name="radio_fooddrink"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="fooddrink_radiobutton_4" value="satisfied" Name="radio_fooddrink"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="fooddrink_radiobutton_5" value="very_satisfied" Name="radio_fooddrink"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><label>Help Desk</label></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="helpdesk_radiobutton_1" value="very_dissatisfied" Name="radio_helpdesk"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="helpdesk_radiobutton_2" value="dissatisfied" Name="radio_helpdesk"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="helpdesk_radiobutton_3" value="neutral" Name="radio_helpdesk"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="helpdesk_radiobutton_4" value="satisfied" Name="radio_helpdesk"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="helpdesk_radiobutton_5" value="very_satisfied" Name="radio_helpdesk"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><label>Parking</label></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="RadioButton26" value="very_dissatisfied" Name="radio_parking"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="RadioButton27" value="dissatisfied" Name="radio_parking"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="RadioButton28" value="neutral" Name="radio_parking"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="RadioButton29" value="satisfied" Name="radio_parking"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="RadioButton30" value="very_satisfied" Name="radio_parking"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><label>First Aid</label></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="RadioButton31" value="very_dissatisfied" Name="radio_firstaid"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="RadioButton32" value="dissatisfied" Name="radio_firstaid"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="RadioButton33" value="neutral" Name="radio_firstaid"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="RadioButton34" value="satisfied" Name="radio_firstaid"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="RadioButton35" value="very_satisfied" Name="radio_firstaid"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><label>Overall Event</label></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="RadioButton36" value="very_dissatisfied" Name="radio_overallevent"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="RadioButton37" value="dissatisfied" Name="radio_overallevent"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="RadioButton38" value="neutral" Name="radio_overallevent"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="RadioButton39" value="satisfied" Name="radio_overallevent"/></asp:TableCell>
                        <asp:TableCell><asp:RadioButton runat="server" ID="RadioButton40" value="very_satisfied" Name="radio_overallevent"/></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
        </section>
        <section>
            <h3>What fascinated you the most in the Concert?</h3>
            <asp:TextBox runat="server" ID="most_liked_thing"></asp:TextBox>
        </section>
        <section>
            <h3>What did you like the least about the Concert?</h3>
            <asp:TextBox runat="server" ID="least_liked_thing"></asp:TextBox>
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
            <asp:CheckBox runat="server" id="publish_permission_checkbox"/>
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
