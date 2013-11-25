using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Web.Configuration;

namespace DreamersResale
{
    public partial class AddUser : System.Web.UI.Page
    {
        //SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=\"D:\\DROPBOX\\SENIORDESIGN\\CORE\\R1\\DREAMERSRESALE\\DREAMERSRESALE\\APP_DATA\\MAINDATABASE.MDF\";Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                Console.WriteLine("");
            }
        }

        private bool ValidateSubmission()
        {
            return false;
        }

        private bool ValidFirstName()
        {
            if (!String.IsNullOrEmpty(firstNameTextBox.Text)
                && !String.IsNullOrWhiteSpace(firstNameTextBox.Text)
                && firstNameTextBox.Text.Length <= 50)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        private bool ValidLastName()
        {
            if (!String.IsNullOrEmpty(lastNameTextBox.Text)
                && !String.IsNullOrWhiteSpace(lastNameTextBox.Text)
                && lastNameTextBox.Text.Length <= 50)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        private bool ValidAddress()
        {
            if (!String.IsNullOrEmpty(addressTextBox.Text)
               && !String.IsNullOrWhiteSpace(addressTextBox.Text)
               && addressTextBox.Text.Length <= 60)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        private bool ValidCity()
        {
            if (!String.IsNullOrEmpty(cityTextBox.Text)
               && !String.IsNullOrWhiteSpace(cityTextBox.Text)
               && cityTextBox.Text.Length <= 30)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        private bool ValidState()
        {
            if (!String.IsNullOrEmpty(cityTextBox.Text)
               && !String.IsNullOrWhiteSpace(cityTextBox.Text)
               && cityTextBox.Text.Length <= 2)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

<<<<<<< .mine
=======
        private bool ValidZip()
        {
            if (!String.IsNullOrEmpty(zipTextBox.Text)
               && !String.IsNullOrWhiteSpace(zipTextBox.Text)
               && zipTextBox.Text.Length <= 12)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

>>>>>>> .r15
        private bool ValidHomePhone()
        {
            if (!String.IsNullOrEmpty(homePhoneTextBox.Text)
               && !String.IsNullOrWhiteSpace(homePhoneTextBox.Text)
               && homePhoneTextBox.Text.Length <= 14)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        private bool ValidWorkPhone()
        {
            if (!String.IsNullOrEmpty(workPhoneTextBox.Text)
               && !String.IsNullOrWhiteSpace(workPhoneTextBox.Text)
               && workPhoneTextBox.Text.Length <= 14)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}