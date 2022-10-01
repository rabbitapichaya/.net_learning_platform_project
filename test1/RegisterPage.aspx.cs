using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Text;

namespace test1
{
    public partial class RegisterPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

                try
                {
                    con.Close();
                   con.Open();
                    string query = "INSERT INTO users (full_name, email_address, user_password) VALUES" +
                    " (@full_name,@email_address,@user_password)";

                    //string query2 = "INSERT INTO members (full_name, email_address, phone_number, password, gender) VALUES
                    //(@full_name,@email_address,@phone_number,@password,@gender)";

                   SqlCommand cmd = new SqlCommand(query, con);
                   // SqlCommand cmd2 = new SqlCommand(query2, con);

                    cmd.Parameters.AddWithValue("@full_name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@email_address", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@user_password", TextBox5.Text);

                   /* cmd2.Parameters.AddWithValue("@full_name", TextBox1.Text);              
                   cmd2.Parameters.AddWithValue("@email_address", TextBox3.Text);
                   cmd2.Parameters.AddWithValue("@phone_number", TextBox4.Text);
                   cmd2.Parameters.AddWithValue("@password", TextBox5.Text);
                   cmd2.Parameters.AddWithValue("@gender", RadioButtonList1.Text);*/

                   cmd.ExecuteNonQuery();
                    //cmd2.ExecuteNonQuery();

                Response.Write("<script>alert('Registration Succesfull!';window.location.href ='LoginPage.aspx';<script>");
                Response.Redirect("Userprofile.aspx");
                con.Close();

                   }
               catch (Exception ex)
                    {
                      Response.Write("Error:" + ex.ToString());

                 }
            }
            
        }
    }