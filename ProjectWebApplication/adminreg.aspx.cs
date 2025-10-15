using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWebApplication
{
    public partial class adminreg : System.Web.UI.Page
    {
        DBConnCls obj = new DBConnCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select max(reg_id) from login_tab";
            string maxregid = obj.Fn_scalar(sel);
            int regid = 0;
            if (maxregid == "")
            {
                regid = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(maxregid);
                regid = newregid + 1;
            }

            string ins = "insert into admin_tab values(" + regid + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','"+TextBox3.Text+"')";
            int i = obj.Fn_NonQue(ins);
            if (i == 1)
            {
                string inslogin = "insert into login_tab values(" + regid + ",'" + TextBox4.Text + "','" + TextBox5.Text + "','admin')";
                int j = obj.Fn_NonQue(inslogin);
                if (i == 1 && j == 1)
                {
                    Label1.Visible = true;
                    Label1.Text = "Successfully Registered";
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Invalid Entry";
                }
            }
        }
    }
}