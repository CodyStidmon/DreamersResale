using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
namespace DreamersResale
{
    public partial class AddUser : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=\"D:\\Dropbox\\SeniorDesign\\Core\\R1\\DreamersResale\\DreamersResale\\App_Data\\MainDatabase.mdf\";Integrated Security=True");
         
           
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}