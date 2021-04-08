using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Common;

public partial class _Default : System.Web.UI.Page
{
    
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddButton_Click(object sender, EventArgs e)
    {
        SqlConnection myConnection = new SqlConnection();
        myConnection.ConnectionString = @"Data Source =(localdb)/v.11.0; Initial Catalog=Module12Data;Integrated Security=SSPI";
    }
}