using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Epam.Library.BLL;
using Epam.Library.Entities;

namespace Epam.Library.AspNetPL
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignIn_Click(object sender, EventArgs e)
        {

        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            //try
            //{
                UserEntity user = new UserEntity();
                user.Password = Password.Text;
                user.UserType = UserType.Text;
                user.Surname = Surname.Text;
                user.Name = Name.Text;
                user.Patronymic = Patronymic.Text;
                user.Gender = Gender.Text;
                user.DateOfBirth = Calendar.Text;

                LibraryLogic bll = new LibraryLogic();
                bll.AddUser(user);

                GridView1.DataSource = bll.GetUsers();
                GridView1.DataBind();
                Button1.Visible = true;
            //}

            //catch (Exception x)
            //{
               // Console.WriteLine(x.Message);
            //}
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }
    }
}
