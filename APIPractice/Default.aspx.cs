using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;

namespace APIPractice
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // This is all taken from PostMan
            var client = new RestClient("https://ussouthcentral.services.azureml.net/workspaces/00bdc3fc373e4c65bc3ca23c91c40eea/services/ca581ae89ad44095874e1dcb3d91bb51/execute?api-version=2.0&details=true");
            var request = new RestRequest(Method.POST);
            request.AddHeader("Postman-Token", "b22b4d05-92c9-4640-a946-dd7b7a55d4f4");
            request.AddHeader("cache-control", "no-cache");
            request.AddHeader("Content-Type", "application/json");
            request.AddHeader("Authorization", "Bearer fa1Pe9yLdV9+o/NziaNSvCBn4M33GbILgPotrgO4D1c9VqMbBKRiOTJnZCc+30x4hPoBRqOXUytWhb8I8i4rdg==");
            request.AddParameter("undefined", "{\r\n  \"Inputs\": {\r\n    \"input1\": {\r\n      \"ColumnNames\": [\r\n        \"Marital Status\",\r\n        \"Gender\",\r\n        \"Income\",\r\n        \"Children\",\r\n        \"Cars\",\r\n        \"Age\",\r\n        \"PurchaseBikeNumeric\",\r\n        \"Education\",\r\n        \"Occupation\",\r\n        \"Home Owner\",\r\n        \"Commute Distance\",\r\n        \"Region\"\r\n      ],\r\n      \"Values\": [\r\n        [\r\n          \"Married\",\r\n          \"Female\",\r\n          \"100000\",\r\n          \"2\",\r\n          \"2\",\r\n          \"38\",\r\n          \"0\",\r\n          \"Graduate\",\r\n          \"Management\",\r\n          \"Yes\",\r\n          \"0-1 Miles\",\r\n          \"Europe\"\r\n        ]\r\n      ]\r\n    }\r\n  },\r\n  \"GlobalParameters\": {}\r\n}", ParameterType.RequestBody);
            IRestResponse response = client.Execute(request);
            // PostMan code stops here
        }
    }
}