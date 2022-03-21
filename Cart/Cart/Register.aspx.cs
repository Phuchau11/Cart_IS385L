﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cart
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtEmail.Text = (string)Session["EMAIL"];
            txtPassword.Text = (string)Session["PASSWORD"];
        }

        protected void btnRegister_Click1(object sender, EventArgs e)
        {

            //Kết nối dữ liệu 
            string path = Server.MapPath("App_Data/CART_IS385L.mdf");
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True ";
            connect.Open();

            Console.WriteLine(connect.State);
            string sqlconn = "select * from ACCOUNTS where EMAIL =N'" + txtEmail.Text + "'";
            SqlCommand lenhxem = new SqlCommand();
            lenhxem.Connection = connect;
            lenhxem.CommandType = System.Data.CommandType.Text;
            lenhxem.CommandText = sqlconn;
            var dong = lenhxem.ExecuteReader();
            if (dong.HasRows)
            {
                //tb.Text = "Username available";
            }
            else
            {
                if (CheckBox1.Checked)
                {
                    dong.Close();
                    string sql_command_update = "INSERT INTO ACCOUNTS (EMAIL,PASSWORD,FULLNAME,BIRTHDAY,GENDER,ADDRESS,PHONENUMBER) VALUES(N'" + txtEmail.Text + "',N'" 
                        + txtPassword.Text + "',N'" + txtFullName.Text + "',N'" + txtBirthday.Text + "',N'"
                        + txtGender.Text + "',N'" + txtAddress.Text + "',N'" + txtNumberPhone.Text + "')";
                    SqlCommand lenhthem = new SqlCommand();
                    lenhthem.Connection = connect;
                    lenhthem.CommandType = System.Data.CommandType.Text;
                    lenhthem.CommandText = sql_command_update;
                    lenhthem.ExecuteNonQuery();
                    //tb.Text = "Sign Up successfully";
                    //Session["Email"] = txtEmail.Text;
                    //Session["Password"] = txtPassword.Text;
                    Response.Redirect("Login.aspx");
                    Thread.Sleep(3000);
                }
                //tb.Text = "Chưa đồng ý các điều khoản";
            }
        }
    }
}