using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Itpm_jarvis
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]==null)
                {
                    LinkButton1.Visible = true; //custmr login
                    LinkButton2.Visible = true; //custmr signup
                    LinkButton4.Visible = true; //viewshows

                    LinkButton3.Visible = false; //logout
                    LinkButton5.Visible = false; //toadvtise
                    LinkButton6.Visible = false; //hiCustomr

                    LinkButton7.Visible = true; //adminLogin
                    LinkButton11.Visible = false; //custmrManage
                    LinkButton8.Visible = false; //AdverisManage

                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //custmr login
                    LinkButton2.Visible = false; //custmr signup
                    LinkButton4.Visible = true; //viewshows

                    LinkButton3.Visible = true; //logout
                    LinkButton5.Visible = true; //toadvtise
                    LinkButton6.Visible = true; //hiCustmr
                    LinkButton6.Text="Hallo "+Session["username"].ToString(); //hiCustomr

                    LinkButton7.Visible = true; //adminLogin
                    LinkButton11.Visible = false; //custmrManage
                    LinkButton8.Visible = false; //AdverisManage
                }
                else if(Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //custmr login
                    LinkButton2.Visible = false; //custmr signup
                    LinkButton4.Visible = true; //viewshows

                    LinkButton3.Visible = true; //logout
                    LinkButton5.Visible = true; //toadvtise
                    LinkButton6.Visible = true; //hiUsr
                    LinkButton6.Text = "Hallo admin";

                    LinkButton7.Visible = false; //adminLogin
                    LinkButton11.Visible = true; //custmrManage
                    LinkButton8.Visible = true; //AdverisManage
                }
            }
            catch(Exception ex)
            {

            }
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("admincustomermanage.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAdvertManage.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("showmanagement.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("customerlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("customersignup.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("toAddAdvert.aspx");
        }

        //logOut btn
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Loged Out Successfull!')</script>");
            Session["username"] = "";
            Session["cusname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; //custmr login
            LinkButton2.Visible = true; //custmr signup
            LinkButton4.Visible = true; //viewshows

            LinkButton3.Visible = false; //logout
            LinkButton5.Visible = false; //toadvtise
            LinkButton6.Visible = false; //hiCustomr

            LinkButton7.Visible = true; //adminLogin
            LinkButton11.Visible = false; //custmrManage
            LinkButton8.Visible = false; //AdverisManage

            Response.Redirect("homepage.aspx");
        }
    }
}