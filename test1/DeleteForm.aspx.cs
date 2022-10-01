﻿using System;
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
    public partial class DeleteForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String member_id = Request.QueryString["Id"];
                int intTest = Convert.ToInt32(member_id);
                string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM members WHERE Id=" + intTest))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                foreach (DataRow row in dt.Rows)
                                {
                                    string memberid = row["Id"].ToString();
                                    string full_name = row["full_name"].ToString();
                                    string user_id = row["user_id"].ToString();
                                    string email_address = row["email_address"].ToString();
                                    string phone_number = row["phone_number"].ToString();
                                    string password = row["password"].ToString();
                                    string gender = row["gender"].ToString();

                                    this.HiddenField_Id.Value = memberid;
                                    this.full_name.Text = full_name;
                                    this.user_id.Text = user_id;
                                    this.email_address.Text = email_address;
                                    this.phone_number.Text = phone_number;
                                    this.password.Text = password;
                                    this.gender.Text = gender;

                                }
                            }
                        }
                    }
                }

            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int member_id = Convert.ToInt32(Request.QueryString["Id"]);

                SqlConnection con = new
                    SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                string query = "DELETE FROM members WHERE Id=" + member_id;
                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("AdminPage.aspx");
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}