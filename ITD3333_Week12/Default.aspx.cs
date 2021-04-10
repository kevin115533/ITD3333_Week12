using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
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
        dropDownBind();
    }

    protected void AddButton_Click(object sender, EventArgs e)
    {
        string userYear = YearDropList.Text;
        string userRegion = RegionDropList.Text;
        string userMonth = MonthDropList.Text;
        string userSale = SalesInput.Text.ToString();
        if(userSale == "")
        {
            lblStatus.Text = "Sales amount can not be blank!";
        }
        
        string insertSQL = "INSERT INTO Sales(Year, Region, Month, Sales)" +
            "VALUES('" + userYear + "','" +
            userRegion + "'," +
            "'" + userMonth + "'," +
            "'" + userSale + "')"
            ;
        try { 
        SqlConnection myConnection = new SqlConnection();
        myConnection.ConnectionString = @"Data Source=DESKTOP-L965S77\SQLEXPRESS;" + 
                "Initial Catalog=Module12Data;Integrated Security=SSPI";
        SqlCommand cmd = new SqlCommand(insertSQL, myConnection);
            
            myConnection.Open();
            cmd.ExecuteNonQuery();
            lblStatus.Text = "Sales for " + userRegion + " " + userMonth + " " + userYear + " was added sucessfully!";
        }
        catch(Exception err)
        {
            lblStatus.Text = err.Message  + insertSQL;
        }
    }

    protected void dropDownBind()
    {
        List<int> years = new List<int>();
        years.Add(2015);
        years.Add(2016);
        years.Add(2017);
        YearDropList.DataSource = years;
       
        List<string> months = new List<string>();
        months.Add("Jan");
        months.Add("Feb");
        months.Add("Mar");
        months.Add("Apr");
        months.Add("May");
        months.Add("Jun");
        months.Add("Jul");
        months.Add("Aug");
        months.Add("Sep");
        months.Add("Oct");
        months.Add("Nov");
        months.Add("Dec");
        MonthDropList.DataSource = months;
        dataDropList.DataSource = months;
        
        List<string> regions = new List<string>();
        regions.Add("North");
        regions.Add("East");
        regions.Add("South");
        regions.Add("West");
        RegionDropList.DataSource = regions;
        this.DataBind();
    }

    protected void displayButton_Click(object sender, EventArgs e)
    {
        string userMonth = dataDropList.Text;
        string select = "SELECT Month FROM Sales WHERE Month='" + userMonth + "'";
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();
    }
}