using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
using System.Data;


namespace DreamersResale.App_Code
{
    public static class Customer
    {
        public static void CreateBidder(string firstName, string lastName, string address, string city, string state, string postalCode, string homePhone, string workPhone)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AuctionManagement"].ToString()))
                {
                    string query = @"INSERT INTO dbo.Bidder(FirstName
                                                                ,LastName
                                                                ,Address
                                                                ,City
                                                                ,State
                                                                ,PostalCode
                                                                ,HomePhone
                                                                ,WorkPhone)
                                                      VALUES(@FirstName
                                                            ,@LastName
                                                            ,@Address
                                                            ,@City
                                                            ,@State
                                                            ,@PostalCode
                                                            ,@HomePhone
                                                            ,@WorkPhone)";

                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.Add("@FirstName", SqlDbType.NChar, 50).Value = firstName;
                    cmd.Parameters.Add("@LastName", SqlDbType.NChar, 50).Value = lastName;
                    cmd.Parameters.Add("@Address", SqlDbType.NChar, 60).Value = address;
                    cmd.Parameters.Add("@City", SqlDbType.NChar, 30).Value = city;
                    cmd.Parameters.Add("@State", SqlDbType.NChar, 2).Value = state;
                    cmd.Parameters.Add("@PostalCode", SqlDbType.NChar, 12).Value = postalCode;
                    cmd.Parameters.Add("@HomePhone", SqlDbType.NChar, 14).Value = homePhone;
                    cmd.Parameters.Add("@WorkPhone", SqlDbType.NChar, 14).Value = workPhone;

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            catch (SqlException ex)
            {
                //Error handling here...
            }
        }

        public static void CreateConsignor(string firstName, string lastName, string address, string city, string state, string postalCode, string homePhone, string workPhone, decimal houseTake)
        {
            try
            {

                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AuctionManagement"].ToString()))
                {
                    string query = @"INSERT INTO dbo.Bidder(HouseTake
                                                                ,FirstName
                                                                ,LastName
                                                                ,Address
                                                                ,City
                                                                ,State
                                                                ,PostalCode
                                                                ,HomePhone
                                                                ,WorkPhone)
                                                      VALUES(@HouseTake
                                                            ,@FirstName
                                                            ,@LastName
                                                            ,@Address
                                                            ,@City
                                                            ,@State
                                                            ,@PostalCode
                                                            ,@HomePhone
                                                            ,@WorkPhone)";

                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.Add("@HouseTake", SqlDbType.Decimal).Value = houseTake;
                    cmd.Parameters.Add("@FirstName", SqlDbType.NChar, 50).Value = firstName;
                    cmd.Parameters.Add("@LastName", SqlDbType.NChar, 50).Value = lastName;
                    cmd.Parameters.Add("@Address", SqlDbType.NChar, 60).Value = address;
                    cmd.Parameters.Add("@City", SqlDbType.NChar, 30).Value = city;
                    cmd.Parameters.Add("@State", SqlDbType.NChar, 2).Value = state;
                    cmd.Parameters.Add("@PostalCode", SqlDbType.NChar, 12).Value = postalCode;
                    cmd.Parameters.Add("@HomePhone", SqlDbType.NChar, 14).Value = homePhone;
                    cmd.Parameters.Add("@WorkPhone", SqlDbType.NChar, 14).Value = workPhone;

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            catch (SqlException ex)
            {
                // Error handling here...
            }
        }
    }
}