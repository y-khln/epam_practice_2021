using Epam.Library.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epam.Library.AspNetPL
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LibraryLogic bll = new LibraryLogic();
            Current.DataSource = bll.GetUserFull(6);
            Current.DataBind();
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            //Response.Redirect("WebForm2.aspx");
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            LibraryLogic bll = new LibraryLogic();
            bll.EditUser(6, Password1.Text, UserType1.Text, Surname1.Text, Name1.Text, Patronymic1.Text, Calendar1.SelectedDate.ToShortDateString());

            Changed1.DataSource = bll.GetUserFull(6);
            Changed1.DataBind();
            Success1.Visible = true;
            Changed1.Visible = true;
        }

        protected void UserType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Gender_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}