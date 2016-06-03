using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdioConsultancyGroup
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //The username and password is hardcoded in the appsetting of the web.config
            //and they are (adminuser and adminpass)
            string username = WebConfigurationManager.AppSettings["AdminUsername"];
            string password = WebConfigurationManager.AppSettings["AdminPassword"];
            if (txtUserName.Text == username && txtPassword.Text == password)
            {
                Session["adminsession"] = "adminsession";
                Response.Redirect("~/AdminFolder/webgrid.aspx");
            }
        }
    }
}