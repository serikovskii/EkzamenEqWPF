using EkzamenWPF.DTO;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace EkzamenWPF.Service
{
    public class Deserialize
    {
        public FeatureCollection GetJson(int count)
        {
            WebClient client = new WebClient();
            string json = client.DownloadString($"https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&limit={count}");
            var result = JsonConvert.DeserializeObject<FeatureCollection>(json, new MicrosecondEpochConverter());

            return result;
        }
    }
}
