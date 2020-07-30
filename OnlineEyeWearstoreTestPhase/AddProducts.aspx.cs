using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace OnlineEyeWearstoreTestPhase
{
    public partial class AddProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));//save image into the folder
            string link = "images/" + Path.GetFileName(FileUpload1.FileName);//save path into the database

            SqlConnection conn = new SqlConnection(DBClass.constring);



            string query = "INSERT INTO Products(prType,prCategory,brand,price,description,photo) values('" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + link + "')";



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