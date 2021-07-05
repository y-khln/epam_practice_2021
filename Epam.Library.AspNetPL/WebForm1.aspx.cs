using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
            try
            {
                UserEntity user = new UserEntity();
                user.Password = Password.Text;
                user.UserType = UserType.Text;
                user.Surname = Surname.Text;
                user.Name = Name.Text;
                user.Patronymic = Patronymic.Text;
                user.Gender = Gender.Text;
                user.DateOfBirth = Calendar1.SelectedDate.ToLongDateString();
            }
            catch (Exception x)
            {
                //MessageBox.Show("" + x.ToString());
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
