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
    public partial class Payment : System.Web.UI.Page
    {
        DBConnCls obj = new DBConnCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string amt = "select grand_total from bill_table where user_id=" + Session["uid"] + "";
                SqlDataReader dr = obj.Fn_Reader(amt);
                while (dr.Read())
                {
                    TextBox4.Text = dr["grand_total"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string accdtl = "insert into acc_tab values(" + Session["uid"] + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            int i = obj.Fn_NonQue(accdtl);
            if (i == 1)
            {
                Label1.Visible = true;
                Label1.Text = "Account details added!";
            }
            else
            {
                Label1.Visible = false;
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            string caccno = "select count(acc_no) from acc_tab where user_id=" + Session["uid"] + " and acc_no=" + TextBox2.Text + "";
            string j = obj.Fn_scalar(caccno);
            if (j == "1")
            {
                Label2.Visible = true;
                Label2.Text = "Already exists!";
            }
            else
            {
                Label2.Visible = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            BalanceService.ServiceClient ob = new BalanceService.ServiceClient();
            string s = ob.balancheck(TextBox5.Text);
            int s1 = Convert.ToInt32(s);
            int am = Convert.ToInt32(TextBox4.Text);
            if (s1 < am)
            {
                ClientScript.RegisterStartupScript(
                this.GetType(),
                "alert",
                "alert('Insufficient balance');",
                true
                );
            }
            else
            {
                string pid = "select product_id from orders_tab where user_id=" + Session["uid"] + " and order_status='order'";
                SqlDataReader dr1 = obj.Fn_Reader(pid);
                List<string> pdlist = new List<string>();
                while (dr1.Read())
                {
                    pdlist.Add(dr1["product_id"].ToString());
                }
                foreach(string productid in pdlist)
                {
                    string ord = "select * from orders_tab where user_id=" + Session["uid"] + " and product_id=" + productid + "";
                    SqlDataReader dr2 = obj.Fn_Reader(ord);
                    string qty = "";
                    while (dr2.Read())
                    {
                        qty = (dr2["quantity"].ToString());
                    }

                    string upd = "update orders_tab set order_status='paid' where user_id=" + Session["uid"] + " and product_id=" + productid + "";
                    obj.Fn_NonQue(upd);

                    string prodstock = "select product_stock from products_tab where product_id=" + productid + "";
                    string k = obj.Fn_scalar(prodstock);

                    int oldstock = Convert.ToInt32(k);
                    int orderedqty = Convert.ToInt32(qty);
                    int updatedstk = oldstock - orderedqty;

                    string up = "update products_tab set product_stock=" + updatedstk + " where product_id=" + productid + "";
                    obj.Fn_NonQue(up);
                }

                string balamt = "select balance_amount from acc_tab where user_id=" + Session["uid"] + " and acc_no='" + TextBox5.Text + "'";
                string p = obj.Fn_scalar(balamt);
                int q = Convert.ToInt32(p);
                int r = Convert.ToInt32(TextBox4.Text);
                int t = q - r;

                int uid1 = Convert.ToInt32(Session["uid"]);
                int amtred = ob.updateamount(TextBox5.Text, uid1, t);
                ClientScript.RegisterStartupScript(
                this.GetType(),
                "alert",
                "alert('Payment Successful!');",
                true
            );
            }
        }
    }
}