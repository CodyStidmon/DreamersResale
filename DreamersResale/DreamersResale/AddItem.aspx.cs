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
    public partial class AddItem : System.Web.UI.Page
    {
        protected SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
             
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected bool properform(string x)
        {
            try
            {
                SqlDataReader myReader = null;
                string myQuerey = "select * from [Consignor] where ConsignorID ="+x;
                SqlCommand myCommand = new SqlCommand(myQuerey, conn);
                myReader = myCommand.ExecuteReader();
               
            }
            catch (Exception e)
            {
                return false;
            } 
        return true;
        }
        protected void Addbutton_Click(object sender, EventArgs e)
        {

            string myQuery;
            SqlDataReader myReader = null;
            SqlCommand myCommand;

            //if (properform(cosign.Text))
            //{
                myQuery = "INSERT INTO [Item] (ConsignorID,  Description) VALUES ('" + Convert.ToInt32(cosign.Text )+ "','" + Description.Text + "')";
                try
                {
                    conn.Open();
                    myCommand = new SqlCommand(myQuery, conn);
                    myReader = myCommand.ExecuteReader();
                   
                    myQuery = "SELECT * FROM [Item] WHERE Description = "+Description.Text;
                  //  myReader.VisibleFieldCount
                    myReader.Read();
                    itemnumber.Text = myReader["ItemID"].ToString();
                    myCommand = new SqlCommand(myQuery, conn);
                    myReader = myCommand.ExecuteReader();

                }
                catch (Exception exc)
                {
                    Description.Text = exc.ToString();
                }
                finally
                {
                    conn.Close();
                }
           // }
            //else { }
        }
    }
}