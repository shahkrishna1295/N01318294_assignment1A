using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n01318294_assign1b
{
    public partial class RockConcertReview_webform : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();
                //getting customer name
                string customerName = customer_name.Text;

                //getting customer email address
                string customerEmail = customer_email.Text;

                //getting customer age
                string customerAge = customer_age.Text;

                //getting the source customer recieved the information
                string infoSource = information_source_option.SelectedValue;

                //getting the reviews given by the customer on particular services of the concert
                string bandperformanceReview = bandperformance_review.SelectedValue;
                string foodanddrnkReview = foodanddrink_review.SelectedValue;
                string helpdeskReview = helpdesk_review.SelectedValue;
                string parkingReview = parking_review.SelectedValue;
                string overallconcertReview = overall_review.SelectedValue;

                //getting what customers liked the most in concert
                string most_likedThing = most_liked_thing.Text;

                //getting what customers liked the least in concert
                string least_likedThing = least_liked_thing.Text;

                //other suggestions given by the customer
                string otherSuggestion = suggestion_box.Text;       

                //Thank you Message
                summary.InnerHtml = "Thank you for giving us your review..!!" + "<br/>";

                //displaying the other information summary
                summary.InnerHtml += "Name : " + customerName + "<br />";
                summary.InnerHtml += "Email : " + customerEmail + "<br />";
                summary.InnerHtml += "Age : " + customerAge + "<br />";
                summary.InnerHtml += "Band Performance was : " + bandperformanceReview + "<br />";
                summary.InnerHtml += "Food and drinks was : " + foodanddrnkReview + "<br />";
                summary.InnerHtml += "Help desk service was : " + helpdeskReview + "<br />";
                summary.InnerHtml += "Parking Service was : " + parkingReview + "<br />";
                summary.InnerHtml += "Overall Concert was : " + overallconcertReview + "<br />";
                summary.InnerHtml += customerName + " liked " + most_likedThing + " the most" + "<br />";
                summary.InnerHtml += customerName + " disliked " + most_likedThing + " the most" + "<br />";
                summary.InnerHtml += "Other comments by" + " " + customerName + " are " + otherSuggestion + "<br />";
                summary.InnerHtml += "According to the information recieved, the conclusion is : ";

                if (overallconcertReview == "excellent" && (bandperformanceReview == "excellent" || bandperformanceReview == "good"))
                {
                    summary.InnerHtml += "Concert was a 5 star event.";
                }
                else if (overallconcertReview == "good" && (bandperformanceReview == "excellent" || bandperformanceReview == "good"))
                {
                    summary.InnerHtml += "Concert was a 4 star event.";
                }
                else if((overallconcertReview == "excellent" || overallconcertReview == "good") && bandperformanceReview == "bad")
                {
                    summary.InnerHtml += "Concert was a 3 star event.";
                }
                else if (overallconcertReview == "bad" && bandperformanceReview == "excellent")
                {
                    summary.InnerHtml += "Concert was a 2 star event.";
                }
                else if (overallconcertReview == "bad" && bandperformanceReview == "good")
                {
                    summary.InnerHtml += "Concert was a 1 star event.";
                }
                else if(overallconcertReview == "bad" && bandperformanceReview == "bad")
                {
                    summary.InnerHtml += "Concert was really bad event and got 0 star.";
                }
                else
                {
                    summary.InnerHtml += "No Reviews";
                }
               
            }

        }
    }
}