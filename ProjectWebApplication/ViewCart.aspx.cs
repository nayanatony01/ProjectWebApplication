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
    public partial class ViewCart : System.Web.UI.Page
    {
        DBConnCls obj = new DBConnCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                get_grid();
        }

        public void get_grid()
        {
            string sel = "SELECT dbo.carttab.cart_id, dbo.products_tab.image,dbo.products_tab.name, dbo.products_tab.price, dbo.carttab.quantity, dbo.carttab.sub_total FROM dbo.carttab INNER JOIN dbo.products_tab ON dbo.carttab.product_id = dbo.products_tab.product_id where user_id=" + Session["uid"]+ " and cart_status=1";
            DataSet ds = obj.Fn_DataSet(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from carttab where cart_id=" + getid + "";
            obj.Fn_NonQue(del);
            get_grid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            get_grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            get_grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string sel1 = "SELECT dbo.products_tab.price FROM dbo.carttab INNER JOIN dbo.products_tab ON dbo.carttab.product_id = dbo.products_tab.product_id where cart_id="+getid+"";
            string s = obj.Fn_scalar(sel1);
            int j = Convert.ToInt32(s);
            TextBox txtqty = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];
            string upd1 = "update carttab set quantity=" + txtqty.Text + " where cart_id=" + getid + "";
            obj.Fn_NonQue(upd1);
            string sel2 = "select quantity from carttab where cart_id=" + getid + "";
            string t = obj.Fn_scalar(sel2);
            int k = Convert.ToInt32(t);
            int subtotal = k*j;
            string upd="update carttab set sub_total="+subtotal+" where cart_id="+getid+"";
            obj.Fn_NonQue(upd);
            GridView1.EditIndex = -1;
            get_grid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sl="select product_id from carttab where user_id="+ Session["uid"] +" and cart_status=1" ;
            SqlDataReader dr = obj.Fn_Reader(sl);
            List<int> ptdidlst = new List<int>();

            while (dr.Read())
            {
                ptdidlst.Add(Convert.ToInt32(dr["product_id"]));
            }
            foreach(int pid in ptdidlst)
            {
                string sldet = "select * from carttab where product_id=" + pid + " and user_id=" + Session["uid"] + "";
                SqlDataReader dr1 = obj.Fn_Reader(sldet);
                int qty = 0, price = 0;
                while (dr1.Read())
                {
                    price = Convert.ToInt32(dr1["sub_total"]);
                    qty = Convert.ToInt32(dr1["quantity"]);
                }

                string ins = "insert into orders_tab values(" + Session["uid"] + "," + pid + ",'" + DateTime.Now.ToString("yyyy-MM-dd") + "'," + qty + ",'order'," + price + ")";
                obj.Fn_NonQue(ins);
                
                string updt= "update carttab set cart_status=0 where product_id=" + pid + "";
                obj.Fn_NonQue(updt);
            }

            string sm = "select sum(sub_total) from orders_tab where user_id=" + Session["uid"] + " and order_status='order'";
            string a = obj.Fn_scalar(sm);

            string insbill = "insert into bill_table values(" + Session["uid"] + "," + a + ",'" + DateTime.Now.ToString("yyyy-MM-dd") + "')";
            obj.Fn_NonQue(insbill);

            Response.Redirect("ViewBill.aspx");
        }
    }
}