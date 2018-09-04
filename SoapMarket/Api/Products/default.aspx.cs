using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoapMarket.Api.Products
{
    public partial class _default : System.Web.UI.Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{

        //}

        [WebMethod]
        public static string Read(string quantity)
        {
            return @"{
    ""products"": [
        {
            ""name"": ""Family Soap"",
            ""price"": " + quantity + @"
        }, {
            ""name"": ""Vegan Bullshit"",
            ""price"": 49.99
        }
    ]
}";
        }
    }
}