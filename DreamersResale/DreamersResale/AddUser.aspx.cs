using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
using System.Data;
using DreamersResale.App_Code;

namespace DreamersResale
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
            if (!String.IsNullOrEmpty(stateTextBox.Text)
               && !String.IsNullOrWhiteSpace(stateTextBox.Text)
               && stateTextBox.Text.Length <= 2)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        private bool ValidPostalCode()
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

        protected void addCustomerButton_Click(object sender, EventArgs e)
        {
            if (ValidateSubmission())
            {
                Customer.CreateBidder(firstNameTextBox.Text,
                                        lastNameTextBox.Text,
                                        addressTextBox.Text,
                                        cityTextBox.Text,
                                        stateTextBox.Text,
                                        zipTextBox.Text,
                                        homePhoneTextBox.Text,
                                        workPhoneTextBox.Text);
            }
        }
    }
}