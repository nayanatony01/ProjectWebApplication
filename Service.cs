using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{
	SqlConnection con = new SqlConnection(@"server=LAPTOP-HNN9ARL1\SQLEXPRESS;database=ProjDB;Integrated security=true");
	public string balancheck(string accno)
    {
		string bal = "select balance_amount from acc_tab where acc_no='" + accno + "'";
		SqlCommand cmd = new SqlCommand(bal, con);
		con.Open();
		SqlDataReader dr = cmd.ExecuteReader();
		string b = "";
        if (dr.Read())
        {
			b = dr["balance_amount"].ToString();
        }
		con.Close();
		return b;
    }

	public int updateamount(string accno, int uid, int amount)
    {
		string upd = "update acc_tab set balance_amount='" + amount + "' where user_id=" + uid + " and acc_no='" + accno + "'";
		SqlCommand cmd = new SqlCommand(upd, con);
		con.Open();
		int i = cmd.ExecuteNonQuery();
		con.Close();
		return i;
    }
	public string GetData(int value)
	{
		return string.Format("You entered: {0}", value);
	}

	public CompositeType GetDataUsingDataContract(CompositeType composite)
	{
		if (composite == null)
		{
			throw new ArgumentNullException("composite");
		}
		if (composite.BoolValue)
		{
			composite.StringValue += "Suffix";
		}
		return composite;
	}
}
