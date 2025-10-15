using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWebApplication
{
    public partial class Feedback : System.Web.UI.Page
    {

        DBConnCls obj = new DBConnCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "insert into feedback_tab values(" + Session["uid"] + ",'" + TextBox1.Text + "','nill',1)";
            int i = obj.Fn_NonQue(ins);
            if (i == 1)
            {
                Label3.Visible = true;
                Label3.Text = "Feedback sent!";
            }
            else
            {
                Label3.Visible = false;
            }
        }
    }
}