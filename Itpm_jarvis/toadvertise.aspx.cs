using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Itpm_jarvis
{
    public partial class toadvertise : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //add btn click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(checkAdbyId())
            {
                Response.Write("<script>alert('Already existing Ads id');</script>");
            }
            else
            {
                addNewAdd();
            }
        }

        
        //user defined funcs

        void addNewAdd()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO advertisement_table(advert_id,advert_name,language,customer_name,starter_date,expire_date,show_time,times_toshow) " +
                    "values(@advert_id,@advert_name,@language,@customer_name,@starter_date,@expire_date,@show_time,@times_toshow)", con);

                cmd.Parameters.AddWithValue("@advert_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@advert_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@customer_name", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@starter_date", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@expire_date", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@show_time", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@times_toshow", TextBox7.Text.Trim());
               
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Added succesful!');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool checkAdbyId()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from advertisement_table where " +
                    "advert_id ='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
    }
}