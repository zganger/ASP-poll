using System;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    private const string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Lab7.mdf;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        int idmatch = CandidateList.SelectedIndex + 1;
        int newcount = (int.Parse((CandidateList.SelectedValue.ToString())) + 1);
        SqlCommand cmd = new SqlCommand("UPDATE Candidates SET Count = @newcount WHERE Id = @index");
        cmd.Connection = conn;
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@index", idmatch);
        cmd.Parameters.AddWithValue("@newcount", newcount);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("Votes.aspx");
    }
}