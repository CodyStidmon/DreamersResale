using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Diagnostics;

namespace DreamersResale
{
    public class SQLHandler
    {
        private SqlCommand myCommand;
        public SQLHandler()
        {

        }

        public void Add_Client(String[] s, int i)
        {
            string table;
            switch (i)
            {
                case 1:
                    table = "Bidder";
                    break;
                default:
                    table = "Consignor";
                    break;
            }
            String add_bidder = "INSERT INTO " + table + " (FirstName, LastName, Address, City, State, HomePhone, WorkPhone)" +
            " VALUES (\"" + s[0] + "\",\"" + s[1] + "\",\"" + s[2] + "\",\"" + s[3] + "\",\"" + s[4] + "\",\"" + s[5] + "\",\"" + s[6] + "\")";
            Debug.WriteLine(add_bidder);
        }

        public void Add_Item(string[] s)
        {
            String add_item = "INSERT INTO Item (ConsignorID, BidderID, BidAmount) VALUES (\"" + s[0] + "\",\"" + s[1] + "\",\"" + s[2] + "\")";
            Debug.WriteLine(add_item);
        }
    }
}