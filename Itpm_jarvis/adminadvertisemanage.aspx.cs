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
    public partial class adminadvertisemanage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //go btn.
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getAdvertbyId();
        }

        //update btn click
        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        //delete btn click
        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        //add btn click
        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }


        //user defined funcs

        void getAdvertbyId()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from advertisement_table WHERE advert_id" +
                    "='" + TextBox1.Text.Trim() +"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                if (dt.Rows.Count >= 1)
                {


                    TextBox2.Text = dt.Rows[0]["advert_name"].ToString();
                    TextBox5.Text = dt.Rows[0]["customer_name"].ToString();
                    TextBox4.Text = dt.Rows[0]["starter_date"].ToString();
                    TextBox3.Text = dt.Rows[0]["expire_date"].ToString(); 
                    TextBox7.Text = dt.Rows[0]["times_toshow"].ToString();



                }
                else
                {
                    Response.Write("<script>alert('Invalid add Id')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        void fillCustomerAdsValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from advertisement_table where " +
                    "advert_id ='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
            }
            catch
            {

            }
        }

        void addNewAds()
        {

        }
    }
}