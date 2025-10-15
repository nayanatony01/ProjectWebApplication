using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ProjectWebApplication
{
    public partial class viewsingleproduct : System.Web.UI.Page
    {
        DBConnCls obj = new DBConnCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Text = "0";
                string sel = "select * from products_tab where product_id=" + Session["productid"] + "";
                SqlDataReader dr = obj.Fn_Reader(sel);
                while (dr.Read())
                {
                    Label1.Text = dr["name"].ToString();
                    Label2.Text = dr["brand"].ToString();
                    Label3.Text = dr["price"].ToString();
                    Label4.Text = dr["description"].ToString();
                    Image1.ImageUrl = dr["image"].ToString();

                    Session["stockavail"] = Convert.ToInt32(dr["product_stock"]);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int qty = int.Parse(TextBox1.Text);
            if (qty > 1) 
            {
                qty--;
            }
            TextBox1.Text = qty.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int qty = int.Parse(TextBox1.Text);
            qty++;
            TextBox1.Text = qty.ToString();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            int stockavail = Convert.ToInt32(Session["stockavail"]);
            int enteredqty = Convert.ToInt32(TextBox1.Text); 

            if (enteredqty > stockavail)
            {
                Label6.Visible = true;
                Label6.Text = "Out of stock";
            }
            else
            {
                Label6.Visible = false;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string subtotal = (Convert.ToInt32(Label3.Text) * Convert.ToInt32(TextBox1.Text)).ToString();

            string ins = "insert into carttab values(" +Session["uid"]+ "," + Session["productid"] + "," + TextBox1.Text + "," + subtotal + ",'1')";
            int i=obj.Fn_NonQue(ins);
            if (i == 1)
            {
                Label7.Visible = true;
                Label7.Text = "Added";
            }
            else
            {
                Label7.Visible = false;
            }
        }
    }
}