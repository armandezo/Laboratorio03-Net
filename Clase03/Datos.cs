using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Clase03
{
    public class Datos
    {
        public SqlConnection con;

        public SqlConnection LeerCadena()
        {
            SqlConnection connection = new SqlConnection("Data Source=DESKTOP-KQV916P\\SQLEXPRESS2017;Initial Catalog=neptuno;Integrated Security=True");
            return connection;
        }

        //Final del código
    }
}
