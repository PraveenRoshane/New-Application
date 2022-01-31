using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetEmployeeList();
            }
        }

        private const string ConnectionString = "Data Source=LAPTOP-SGFDO4F5\\MSSQLSERVER01;Initial Catalog=CRUDTutorialDB;Integrated Security=True";
        SqlConnection connection = new SqlConnection(ConnectionString);

        protected void Button1_Click(object sender, EventArgs e)
        {
            int empid = int.Parse(TextBox1.Text);
            string empname = TextBox2.Text;
            string city = DropDownList1.SelectedValue;
            double age = double.Parse(TextBox3.Text);
            string sex = RadioButtonList1.SelectedValue;
            DateTime jdate = DateTime.Parse(TextBox4.Text);
            string contact = TextBox5.Text;

            connection.Open();
            SqlCommand command = new SqlCommand("Insert into EmployeeSetup_Tab values ('"+ empid + "','" + empname + "','" + city + "','" + age + "','" + sex + "','" + jdate + "','" + contact + "')", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this,this.GetType(),"script","alert('Succressfully saved');",true);
            GetEmployeeList();
        }

        void GetEmployeeList()
        {
            SqlCommand command = new SqlCommand("Select * from EmployeeSetup_Tab", connection);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sqlDataAdapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int empid = int.Parse(TextBox1.Text);
            string empname = TextBox2.Text;
            string city = DropDownList1.SelectedValue;
            double age = double.Parse(TextBox3.Text);
            string sex = RadioButtonList1.SelectedValue;
            DateTime jdate = DateTime.Parse(TextBox4.Text);
            string contact = TextBox5.Text;

            connection.Open();
            SqlCommand command = new SqlCommand("Update EmployeeSetup_Tab set  EmpName = '" + empname + "', City = '" + city + "', Age = '" + age + "', Sex = '" + sex + "', JoiningData = '" + jdate + "', Contact = '" + contact + "' where EnpID = '" + empid + "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succressfully Updated');", true);
            GetEmployeeList();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int empid = int.Parse(TextBox1.Text);

            connection.Open();
            SqlCommand command = new SqlCommand("Delete EmployeeSetup_Tab where EnpID = '" + empid + "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succressfully Deleted');", true);
            GetEmployeeList();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int empid = int.Parse(TextBox1.Text);

            SqlCommand command = new SqlCommand("Select * from EmployeeSetup_Tab where EnpID = '" + empid + "'", connection);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sqlDataAdapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            GetEmployeeList();
        }
    }
}