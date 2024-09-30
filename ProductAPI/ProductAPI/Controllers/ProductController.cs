using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;
using ProductAPI.Modell;
using System.Security.Cryptography;

namespace ProductAPI.Controllers
{
    [Route("product")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        public static Connect conn = new();

        [HttpGet]
        public List<Product> Get()
        {
            List<Product> products = new();
            string sql = "SELECT * FROM products";

            conn.Connection.Open();
            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            MySqlDataReader reader = cmd.ExecuteReader();

            reader.Read();

            do
            {
                var result = new Product
                {
                    Id = reader.GetGuid(0),
                    Name = reader.GetString(1),
                    Price = reader.GetInt32(2),
                    CreatedTime = reader.GetDateTime(3)
                };
                products.Add(result);
            }
            while (reader.Read());

            conn.Connection.Close();

            return products;
        }

        [HttpPost]
        public object Post(Product product)
        {
            conn.Connection.Open();
            string sql = $"INSERT INTO `products`(`id`, `Name`, `Price`, `CreatedTime`) VALUES ('{product.Id}','{product.Name}','{product.Price}','{DateTime.Now.ToString("yyyy-mm-dd-HH-mm--ss"}')";

            MySqlCommand cmd = new MySqlCommand(sql,conn.Connection);
            cmd.ExecuteNonQuery();

            conn.Connection.Close();
            return new { message = "Új rekord felvéve" };
        }
    }
}
