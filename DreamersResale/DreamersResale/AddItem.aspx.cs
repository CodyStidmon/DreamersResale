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
        static bool properform(string x, string y, string z)
        {
        return true;
        }
        protected void Addbutton_Click(object sender, EventArgs e)
        {
           
             string myQuery;
            SqlDataReader myReader = null;
            SqlCommand myCommand;

            if ( properform(Itemid.Text, Auctionid.Text, Description.Text))
            {
                myQuery = "SELECT ItemID, Description, Bidder, BidAmount FROM [Item] WHERE itemID = " + this.item_to_get.Text;
                try
                {
                    conn.Open();
                    myCommand = new SqlCommand(myQuery, conn);
                    myReader = myCommand.ExecuteReader();
                    this.txtItemID.Text = myReader["ItemID"].ToString();
                    this.txtDescription.Text = myReader["Description"].ToString();
                    this.txtBidder.Text = myReader["Bidder"].ToString();
                    this.txtBidAmount.Text = myReader["BidAmount"].ToString();
                }
                catch (Exception exc)
                {
                    this.txtItemID.Text = exc.ToString();
                }
                finally
                {
                    conn.Close();
                }
        }
    }
}