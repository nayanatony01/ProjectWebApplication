using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWebApplication
{
    public partial class Login : System.Web.UI.Page
    {
        DBConnCls obj = new DBConnCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select count(reg_id) from login_tab where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            string cid = obj.Fn_scalar(str);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string str1 = "select reg_id from login_tab where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                string regid = obj.Fn_scalar(str1);
                Session["uid"] = Convert.ToInt32(regid);

                string str2 = "select log_type from login_tab where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                string logtype = obj.Fn_scalar(str2);
                if (logtype == "admin")
                {
                    Response.Redirect("AdminHome.aspx");
                }
                else if (logtype == "user")
                {
                    string str3 = "select user_status from user_tab where user_id=" + regid + "";
                    string userStatus = obj.Fn_scalar(str3);

                    if (userStatus == "Active") { 
                        Response.Redirect("UserHome.aspx");
                    }
                }
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Invalid";
            }
        }
    }
}