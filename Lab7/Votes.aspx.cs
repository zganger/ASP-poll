using System;
using System.Data.SqlClient;
using System.Data;

public partial class Votes : System.Web.UI.Page
{
    private const string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Lab7.mdf;Integrated Security=True";
    private double total;
    protected void Page_Load(object sender, EventArgs e)
    {
        total = 0.0;
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM Candidates", conn);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            int f = (int)reader["Count"];
            total += f;
        }
        conn.Close();
    }

    public int Percentage(int val)
    {
        return (int)((val/total) * 100);
    }
}