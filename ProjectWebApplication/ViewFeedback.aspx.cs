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
    public partial class ViewFeedback : System.Web.UI.Page
    {
        DBConnCls obj = new DBConnCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel= "SELECT dbo.user_tab.user_id, dbo.user_tab.name, dbo.feedback_tab.feedback_msg, dbo.feedback_tab.feedback_id FROM dbo.user_tab INNER JOIN dbo.feedback_tab ON dbo.user_tab.user_id = dbo.feedback_tab.user_id where feedback_status=1";
                DataSet ds = obj.Fn_DataSet(sel);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            Session["fid"] = getid;
            Response.Redirect("Reply.aspx");
        }
    }
}