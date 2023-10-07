using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Itpm_jarvis
{
    public partial class toAddAdvert : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        // add adverticement
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckIfAdvertExist())
            {
                Response.Write("<script>alert('showID already taken, use anothr');</script>");
            }
            else
            {
                addNewAdverts();
            }
        }



        //user defined funcs
        bool CheckIfAdvertExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from advert_table where " +
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
                Response.Write("<script>alert('" + ex.Message + "');<script>");
                return false;
            }
        }


        void addNewAdverts()
        {
            try
            {
                string filepath = "~/Add_Posters/library.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("Add_Posters/" + filename));
                filepath = "~/Add_Posters/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO advert_table(advert_id,advert_name,language,customer_name," +
                    "starter_date,expire_date,show_time,times_toshow,posterimg_link)" +
                    " values(@advert_id,@advert_name,@language,@customer_name,@starter_date,@expire_date," +
                    "@show_time,@times_toshow,@posterimg_link)", con);

                cmd.Parameters.AddWithValue("@advert_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@advert_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@customer_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@starter_date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@expire_date", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@show_time", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@times_toshow", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@posterimg_link", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('adverticement added success');</script>");
                
                
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


    }
}