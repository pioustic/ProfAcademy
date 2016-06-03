using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdioConsultancyGroup
{
    public partial class EmloyeeApplicationPage : System.Web.UI.Page
    {
        private string fileName = null;
        private string extension = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        public bool SaveFile()
        {
            bool tf = true;
            if (FileUpload1.PostedFile != null)
            {
                fileName = FileUpload1.PostedFile.FileName.ToString();
                extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (extension == ".jpg")
                {

                    FileUpload1.SaveAs(Server.MapPath("~/Passport/" + fileName));
                    tf = true;
                    return tf;
                }
                else if (extension != ".jpg")
                {

                    Response.Write("<script>alert('your passport must be in jpg');</script>");
                    tf = false;
                    return tf;
                }

               
            }
            return tf;
        }



        protected void btnSave_Click(object sender, EventArgs e)
        {
            EmployeesDataContext ctx = new EmployeesDataContext();
            List<Employee> allemployess = ctx.Employees.ToList();
            if (allemployess.Count == 4)
            {
                Response.Write("<script>alert('Application closed');</script>");
                return;
            }


            if (FileUpload1.PostedFile != null)
            {


                SaveFile();

                Employee emp = new Employee();
                emp.Email = txtEmail.Text;
                emp.Surname = txtSurname.Text;
                emp.PhoneNumber = txtPhoneNo.Text;
                emp.FirstName = txtSurname.Text;
                emp.Passport = "~/Passport/" + FileUpload1.FileName;
                ctx.Employees.InsertOnSubmit(emp);
                ctx.SubmitChanges();
                Response.Write("<script>alert('data successfully saved');</script>");
                Clear();
            }

        }


        public void Clear()
        {
            txtSurname.Text = txtFirstName.Text = txtEmail.Text = txtPhoneNo.Text = "";
        }

    }
}
