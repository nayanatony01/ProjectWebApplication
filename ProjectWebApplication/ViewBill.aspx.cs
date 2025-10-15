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
    public partial class ViewBill : System.Web.UI.Page
    {
        DBConnCls obj = new DBConnCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int uid = Convert.ToInt32(Session["uid"]);
                string sel = "SELECT dbo.bill_table.user_id, dbo.bill_table.bill_id, dbo.bill_table.grand_total, dbo.bill_table.bill_date, dbo.user_tab.user_id, dbo.user_tab.name, dbo.user_tab.email, dbo.user_tab.address, dbo.user_tab.loct FROM dbo.bill_table INNER JOIN dbo.user_tab ON dbo.bill_table.user_id = dbo.user_tab.user_id where bill_table.user_id=" + uid + "";
                SqlDataReader dr = obj.Fn_Reader(sel);
                while (dr.Read())
                {
                    Label7.Text = dr["bill_id"].ToString();
                    Label8.Text = dr["name"].ToString();
                    Label9.Text = dr["address"].ToString();
                    Label10.Text = dr["loct"].ToString();
                    Label11.Text = dr["email"].ToString();
                    Label13.Text = Convert.ToDateTime(dr["bill_date"]).ToString("dd-MM-yyyy");
                    Label15.Text = dr["grand_total"].ToString();
                }

                string seldetl= "SELECT dbo.products_tab.product_id, dbo.products_tab.name, dbo.products_tab.brand, dbo.products_tab.price, dbo.orders_tab.quantity, dbo.orders_tab.sub_total, dbo.orders_tab.order_status, dbo.orders_tab.order_date FROM dbo.products_tab INNER JOIN dbo.orders_tab ON dbo.products_tab.product_id = dbo.orders_tab.product_id where orders_tab.user_id=" + uid + " and order_status='order'";
                DataSet ds = obj.Fn_DataSet(seldetl);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
    }
}