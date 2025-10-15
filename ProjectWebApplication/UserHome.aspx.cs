using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ProjectWebApplication
{
    public partial class UserHome : System.Web.UI.Page
    {
        DBConnCls obj = new DBConnCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select * from categorytab where category_status='available'";
                DataTable dt = obj.Fn_Datatab(sel);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }   
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            Session["catid"] = getid;
            Response.Redirect("viewproducts.aspx");
        }
    }
}