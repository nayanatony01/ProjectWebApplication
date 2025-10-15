using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace ProjectWebApplication
{
    public partial class editproduct : System.Web.UI.Page
    {
        DBConnCls obj = new DBConnCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            get_Grid();
        }
        public void get_Grid()
        {
            string s = "select * from products_tab";
            DataSet ds = obj.Fn_DataSet(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            get_Grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            get_Grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtdescript = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            TextBox txtst = (TextBox)GridView1.Rows[i].Cells[7].Controls[0];
            TextBox txtprice= (TextBox)GridView1.Rows[i].Cells[4].Controls[0];
            FileUpload fileUpload = (FileUpload)GridView1.Rows[i].FindControl("FileUpload1");
            HiddenField HiddenField = (HiddenField)GridView1.Rows[i].FindControl("HiddenField1");

            string imgPath = HiddenField.Value; // Set old image as default

            if (fileUpload != null && fileUpload.HasFile)
            {


                string fileName = Path.GetFileName(fileUpload.FileName);
                string uploadPath = Server.MapPath("~/Photo/") + fileName;
                fileUpload.SaveAs(uploadPath);
                imgPath = "~/Photo/" + fileName;

            }
            string upd = "update products_tab set description='" + txtdescript.Text + "',product_status='" + txtst.Text + "',price='"+txtprice.Text+ "',image='" + imgPath + "' where product_id=" + getid + "";
            obj.Fn_NonQue(upd);

            GridView1.EditIndex = -1;
            get_Grid();
        }
    }
}