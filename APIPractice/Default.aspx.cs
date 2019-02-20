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

        }

        protected void lbPredict_Click(object sender, EventArgs e)
        {
            // This is all taken from PostMan
            var client = new RestClient("https://ussouthcentral.services.azureml.net/workspaces/00bdc3fc373e4c65bc3ca23c91c40eea/services/ca581ae89ad44095874e1dcb3d91bb51/execute?api-version=2.0&details=true");
            var request = new RestRequest(Method.POST);
            request.AddHeader("Postman-Token", "b22b4d05-92c9-4640-a946-dd7b7a55d4f4");
            request.AddHeader("cache-control", "no-cache");
            request.AddHeader("Content-Type", "application/json");
            request.AddHeader("Authorization", "Bearer fa1Pe9yLdV9+o/NziaNSvCBn4M33GbILgPotrgO4D1c9VqMbBKRiOTJnZCc+30x4hPoBRqOXUytWhb8I8i4rdg==");
            request.AddParameter("undefined", "{\r\n  \"Inputs\": {\r\n    \"input1\": {\r\n      \"ColumnNames\": [\r\n        \"Marital Status\",\r\n        \"Gender\",\r\n        \"Income\",\r\n        \"Children\",\r\n        \"Cars\",\r\n        \"Age\",\r\n        \"PurchaseBikeNumeric\",\r\n        \"Education\",\r\n        \"Occupation\",\r\n        \"Home Owner\",\r\n        \"Commute Distance\",\r\n        \"Region\"\r\n      ],\r\n      \"Values\": [\r\n        [\r\n          \"" + rblMaritalStatus.SelectedItem.Text + "\",\r\n          \"" + rblGender.SelectedItem.Text + "\",\r\n          \"" + txtIncome.Text + "\",\r\n          \"" + ddlChildren.SelectedValue + "\",\r\n          \"" + txtCars.Text + "\",\r\n          \"" + txtAge.Text + "\",\r\n          \"0\",\r\n          \"" + rblEducation.SelectedItem.Text + "\",\r\n          \"" + rblOccupation.SelectedItem.Text + "\",\r\n          \"" + rblHomeOwner.SelectedItem.Text + "\",\r\n          \"" + rblCommute.SelectedItem.Text + "\",\r\n          \"" + rblRegion.SelectedItem.Text + "\"\r\n        ]\r\n      ]\r\n    }\r\n  },\r\n  \"GlobalParameters\": {}\r\n}", ParameterType.RequestBody);
            IRestResponse response = client.Execute(request);
            // PostMan code stops here

            lblResults.Text = response.Content.ToString();
        }
    }
}