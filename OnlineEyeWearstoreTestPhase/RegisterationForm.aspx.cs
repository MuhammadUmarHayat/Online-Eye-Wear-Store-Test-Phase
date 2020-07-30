using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEyeWearstoreTestPhase
{
    public partial class RegisterationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(DBClass.constring);



            string query = "INSERT INTO users(name,userid,password,gender,DOB,Address,Mobile)" + " values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + RadioButtonList1.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";



            SqlCommand sqlCmd = new SqlCommand(query, conn);

            conn.Open();

            sqlCmd.ExecuteNonQuery();

            conn.Close();





            Label1.Text = "Data is saved";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterationForm.aspx");
        }
    }
}