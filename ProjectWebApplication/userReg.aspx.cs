using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ProjectWebApplication
{
    public partial class userReg : System.Web.UI.Page
    {
        DBConnCls obj = new DBConnCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadStates();
                DropDownList2.Items.Insert(0, "-select district-");
            }
        }

        public void LoadStates()
        {
            string sel = "SELECT state_id, state_name FROM state_tab";
            DataSet ds = obj.Fn_DataSet(sel);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "state_name";
            DropDownList1.DataValueField = "state_id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "-select state-");
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string stateId = DropDownList1.SelectedValue;

            if (stateId != "0")
            {
                string sel = "SELECT district_id, district_name FROM district_tab WHERE state_id=" + stateId + "";
                DataSet ds = obj.Fn_DataSet(sel);

                DropDownList2.DataSource = ds;
                DropDownList2.DataTextField = "district_name";
                DropDownList2.DataValueField = "district_id";
                DropDownList2.DataBind();

                DropDownList2.Items.Insert(0, "-select district-");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select max(reg_id) from login_tab";
            string maxregid = obj.Fn_scalar(sel);
            int regid = 0;
            if (maxregid == "")
            {
                regid = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(maxregid);
                regid = newregid + 1;
            }

            string ins = "insert into user_tab values(" + regid + "," + DropDownList1.SelectedValue + "," + DropDownList2.SelectedValue + ",'" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "'," + TextBox4.Text + ",'" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','Active')";
            int i = obj.Fn_NonQue(ins);
            if (i == 1)
            {
                string inslogin = "insert into login_tab values(" + regid + ",'" + TextBox8.Text + "','" + TextBox9.Text + "','user')";
                int j = obj.Fn_NonQue(inslogin);
                if (i == 1 && j == 1)
                {
                    Label1.Visible = true;
                    Label1.Text = "Successfully Registered";
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Invalid Entry";
                }
            }
        }
    }
}