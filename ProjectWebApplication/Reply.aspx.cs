using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace ProjectWebApplication
{
    public partial class Reply : System.Web.UI.Page
    {
        DBConnCls obj = new DBConnCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "select admin_email from admin_tab where admin_id=" + Session["uid"] + "" ;
            SqlDataReader dr = obj.Fn_Reader(s);
            while (dr.Read())
            {
                TextBox2.Text = dr["admin_email"].ToString();
            }
            string sel = "SELECT dbo.user_tab.email FROM dbo.user_tab INNER JOIN dbo.feedback_tab ON dbo.user_tab.user_id = dbo.feedback_tab.user_id where dbo.feedback_tab.user_id=" + Session["fid"] + "";
            SqlDataReader dr1 = obj.Fn_Reader(sel);
            while (dr1.Read())
            {
                TextBox1.Text = dr1 ["email"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string selna = "select admin_name from admin_tab where admin_id=" + Session["uid"] + "";
            string na = obj.Fn_scalar(selna);
            string selcna = "SELECT dbo.user_tab.name FROM dbo.user_tab INNER JOIN dbo.feedback_tab ON dbo.user_tab.user_id = dbo.feedback_tab.user_id where dbo.feedback_tab.user_id=" + Session["fid"] + "";
            string cna = obj.Fn_scalar(selcna);

            SendEmail2(na, TextBox2.Text, "vdmd syes xhxc uzxc", cna, TextBox1.Text, TextBox3.Text, TextBox4.Text);

            string upd = "UPDATE feedback_tab SET reply_msg = '" + TextBox4.Text + "', feedback_status = 0 WHERE user_id = " + Session["fid"] + "";
            obj.Fn_NonQue(upd);

            Label6.Visible = true;
            Label6.Text = "Email sent successfully!";
        }

        public static void SendEmail2(string yourname, string yourGmailUserName, string yourGmailPassword, string tonaame, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}