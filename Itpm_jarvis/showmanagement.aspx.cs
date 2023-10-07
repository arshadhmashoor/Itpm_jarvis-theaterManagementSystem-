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
    public partial class showmanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //add button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if(checkIfShowExist())
            {
                Response.Write("<script>alert('showID already taken, use anothr');</script>");
            }
            else
            {
                addNewShow();
            }
        }

        //update btn click
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfShowExist())
            {
                updateShow();
                
            }
            else
            {
                Response.Write("<script>alert('showID doesn't exist');</script>");
            }
        }

        //delete btn click
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfShowExist())
            {
                deleteShow();
            }
            else
            {
                Response.Write("<script>alert('showID doesn't exist');</script>");
            }
        }

        //go btn click
        protected void Button1_Click(object sender, EventArgs e)
        {
            getShowbyId();
        }







        //user defined function
        void getShowbyId()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from show_table where " +
                    "show_id ='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Show Id');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        void deleteShow()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from show_table WHERE show_id='" + TextBox1.Text.Trim() + "'", con);


                cmd.Parameters.AddWithValue("@show_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('show deleted success');</script>");
                clearForm();
                GridView1.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void updateShow()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE show_table SET show_name=@show_name WHERE show_id='"+TextBox1.Text.Trim()+"'", con);

                
                cmd.Parameters.AddWithValue("@show_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('show updated success');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void addNewShow()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO show_table(show_id,show_name) values(@show_id,@show_name)", con);

                cmd.Parameters.AddWithValue("@show_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@show_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('show added success');</script>");
                clearForm();
                GridView1.DataBind();
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool checkIfShowExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from show_table where " +
                    "show_id ='" + TextBox1.Text.Trim() + "';", con);
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
    }
}