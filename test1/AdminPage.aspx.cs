using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;

namespace test1
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

                string searchkey = Request.QueryString["searchkey"];
                string searchby = Request.QueryString["searchby"];

                if (!this.IsPostBack)
                {
                    if (String.IsNullOrEmpty(searchby))
                    {
                        searchby = "full_name";
                    }

                    DataTable dt = this.GetData(searchkey, searchby);
                    StringBuilder html = new StringBuilder();
                    string gender_icon = "";
                    foreach (DataRow row in dt.Rows)
                    {
                        string member_gender = row["gender"].ToString();
                        if (member_gender == "Male")
                        {
                            gender_icon = "boy.jpg";
                        }
                        else if (member_gender == "Female")
                        {
                            gender_icon = "female1.png";
                        }
                        else if (member_gender == "Others")
                        {
                            gender_icon = "boy.jpg";
                        }
                        html.Append("<div class=\"box\">");
                        html.Append("<img src=\"image/" + gender_icon + "\" width=\"50px\" style=\"float:center\">");
                        html.Append("<h3>" + row["full_name"] + "</h3>");
                        html.Append("Email:<br>" + row["email_address"] + "<br><br>");
                        html.Append("Phone Number:<br>" + row["phone_number"] + "<br><br>");
                        html.Append("Password:<br>" + row["password"] + "<br><br>");
                        html.Append("Gender:<br>" + row["gender"] + "<br><br>");
                        html.Append("<a class=\"edit\" href=\"EditForm.aspx?Id=" + row["id"] + "\">Edit</a>");
                        html.Append("<a onClick=\"return confirm('Delete this record?')\"class=\"delete\" href=\"DeleteForm.aspx?Id=" + row["id"] + "\">Delete</a>");
                        html.Append("</div>");

                    }

                    PlaceHolder2.Controls.Add(new Literal { Text = html.ToString() });
                

            }
        }
        private DataTable GetData(string searchkey, string searchby)
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM members WHERE " + searchby + " LIKE '%"+ searchkey +"%'"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string searchKeyword = TextBox2.Text;
            string column_name = RadioButtonList2.Text;
            Response.Redirect("AdminPage.aspx?searchkey=" + searchKeyword+"&searchby="+ column_name);
        }
    }
}