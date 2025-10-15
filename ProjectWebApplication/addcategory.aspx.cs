using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWebApplication
{
    public partial class addcategory : System.Web.UI.Page
    {
        DBConnCls obj = new DBConnCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/Phs/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string ins = "insert into categorytab values('" + TextBox1.Text + "','" + p + "','" + TextBox2.Text + "','available')";
            int i = obj.Fn_NonQue(ins);
            if (i == 1)
            {
                Label1.Visible = true;
                Label1.Text = "Category added";
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Unable to add category";
            }
        }
    }
}