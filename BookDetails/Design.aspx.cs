using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BookDetails
{
    public partial class Design : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=adminvm\SQLEXPRESS;Initial Catalog=Database1;User ID=sa;Password=pass@123");
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                show();
            }
        }
        public void show()
        {
            da = new SqlDataAdapter("select * from BookDetails", connection);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            string Query = "insert into BookDetails(Title,Author,Publisher,Price)values('" + txtTitle.Text + "','" + txtAuthor.Text + "','" + txtPublisher.Text + "','" + txtPrice.Text + "');";
            connection.Open();
            SqlCommand sqlCommand = new SqlCommand(Query, connection);
            SqlDataReader reader;
            reader = sqlCommand.ExecuteReader();
            connection.Close();
            ClearControls();
            show();
            Response.Write("Record Inserted");
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            ClearControls();
        }
        private void ClearControls()
        {
            txtAuthor.Text = string.Empty;
            txtTitle.Text = string.Empty;
            txtPublisher.Text = string.Empty;
            txtPrice.Text = string.Empty;
        }
    }
}

   