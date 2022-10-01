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
    public partial class LoginAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Buttonlog_Click(object sender, EventArgs e)
        {
            string email_address = this.TextBoxEmail.Text;
            string user_password = this.TextBoxPassword.Text;

            string user_id = "";

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();
            string query = "SELECT * FROM admin WHERE email_address='" + email_address + "'AND user_password ='" + user_password + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = System.Data.CommandType.Text;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            cmd.ExecuteNonQuery();

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    user_id = row["Id"].ToString();
                }
                this.Session["email_address"] = email_address;
                this.Session["user_id"] = user_id;

                Response.Redirect("AdminPage.aspx");

            }

            else
            {
                WarningLabel.Text = "Your email or password is incorrect";
                WarningLabel.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();

        }

    }
}
    