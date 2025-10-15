using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ProjectWebApplication
{
    public partial class addproduct : System.Web.UI.Page
    {
        DBConnCls obj = new DBConnCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select category_id,category_name from categorytab";
                DataSet ds = obj.Fn_DataSet(sel);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "category_name";
                DropDownList1.DataValueField = "category_id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "-select-");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string ins = "insert into products_tab values(" + DropDownList1.SelectedItem.Value + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox3.Text + "','"+p+"','" + TextBox4.Text + "','available')";
            int i = obj.Fn_NonQue(ins);
            if (i == 1)
            {
                Label1.Visible = true;
                Label1.Text = "Product added";
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Unable to add product";
            }
        }
    }
}