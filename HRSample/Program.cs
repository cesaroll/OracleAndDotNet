using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Oracle.ManagedDataAccess.Types;
using Oracle.ManagedDataAccess.Client;

namespace HRSample
{
    class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
            string conString = "User Id=hr;Password=hr;Data Source=PDBSAMPLE;Pooling=false;";

            try
            {
                //Demo 1: Basic ODP.NET application
                //Create a connection to Oracle
                OracleConnection con = new OracleConnection(conString);
                con.Open();


                //Display Employee names and salaries
                OracleCommand cmd = con.CreateCommand();
                cmd.CommandText = "SELECT last_name FROM Employees WHERE Department_id = 100";

                //Execute Command and use Datareader to display the data
                var reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Console.WriteLine("Employee Name: {0}", reader["last_name"]);
                }

            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                Console.WriteLine(e.InnerException);
                Console.WriteLine(e.Data);
            }

            
        }
    }
}
