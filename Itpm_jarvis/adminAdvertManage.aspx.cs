using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Itpm_jarvis
{
    public partial class adminAdvertManage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;
        static int per_cost,times_toshow;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }


        //go
        protected void Button1_Click1(object sender, EventArgs e)
        {
            getAdvertByID();
        }

        //update
        protected void Button2_Click(object sender, EventArgs e)
        {
            updateAdvertByID();
        }

        //delete
        protected void Button3_Click(object sender, EventArgs e)
        {
            deleteByAdvertID();
        }


        //user defined funcs
        void deleteByAdvertID()
        {
            if(checkIfAdvertExist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from advert_table WHERE advert_id='" + TextBox1.Text.Trim() + "'", con);


                    

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Adverticement deleted success');</script>");
                    clearForm();
                    GridView1.DataBind();


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('invalid adverticement id!');</script>");
            }
        }


        bool checkIfAdvertExist()
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

        void updateAdvertByID()
        {
            if(checkIfAdvertExist())
            {
                try
                {
                    string filepath = "~/Add_Posters/";
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    if (filename == "" || filename == null)
                    {
                        filepath = global_filepath;
                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("Add_Posters/" + filename));
                        filepath = "~/Add_Posters/" + filename;
                    }

                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("UPDATE advert_table SET " +
                        "advert_name=@advert_name,language=@language,customer_name=@customer_name," +
                        "starter_date=@starter_date,expire_date=@expire_date,show_time=@show_time," +
                        "times_toshow=@times_toshow,times_showed=@times_showed,total_fee=@total_fee," +
                        "posterimg_link=@posterimg_link WHERE advert_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@advert_name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@customer_name", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@starter_date", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@expire_date", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@show_time", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@times_toshow", TextBox9.Text.Trim());
                    cmd.Parameters.AddWithValue("@times_showed", TextBox11.Text.Trim());
                    cmd.Parameters.AddWithValue("@total_fee", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@posterimg_link", filepath);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Adverticement Details updated success');</script>");
                    //clearForm();
                    
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
                

            }
            else
            {
                Response.Write("<script>alert('invalid Adverticement id');</script>");
            }
            
            
        }


        void getAdvertByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from advert_table WHERE advert_id" +
                    "='"+ TextBox1.Text.Trim() +"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["advert_name"].ToString();
                    DropDownList1.SelectedValue = dt.Rows[0]["language"].ToString().Trim();
                    TextBox6.Text = dt.Rows[0]["customer_name"].ToString();
                    TextBox5.Text = dt.Rows[0]["starter_date"].ToString();
                    TextBox3.Text = dt.Rows[0]["expire_date"].ToString();
                    DropDownList3.SelectedValue = dt.Rows[0]["show_time"].ToString().Trim();
                    TextBox9.Text = dt.Rows[0]["times_toshow"].ToString();
                    TextBox4.Text = "" + (Convert.ToInt32(dt.Rows[0]["times_toshow"].ToString()) * Convert.ToInt32(dt.Rows[0]["times_toshow"].ToString()));


                    global_filepath = dt.Rows[0]["posterimg_link"].ToString();
                    per_cost = Convert.ToInt32(dt.Rows[0]["show_time"].ToString().Trim());
                    times_toshow = Convert.ToInt32(dt.Rows[0]["times_showed"].ToString().Trim());

                }
                else
                {
                    Response.Write("<script>alert('Invalid adverticement ID!');</script>");
                }
            } 
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }


        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}