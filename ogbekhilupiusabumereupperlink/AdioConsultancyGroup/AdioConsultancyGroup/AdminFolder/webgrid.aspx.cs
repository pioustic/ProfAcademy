using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdioConsultancyGroup
{
    public partial class webgrid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminsession"] == null)
            {
                Response.Redirect("~/AdminFolder/Login.aspx");
            }

            if (Session["adminsession"] != null)
                {
                    GetAllEmployees();
                }
            Session["adminsession"] = null;

        }
        public void GetAllEmployees()
        {
            EmployeesDataContext ctx=new EmployeesDataContext();
            var empl = ctx.Employees.ToList();

            gvEmployess.DataSource = empl;
            gvEmployess.DataBind();
        }
    }
}