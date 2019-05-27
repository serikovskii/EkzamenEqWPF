using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EkzamenWPF.DTO
{
    public class Feature
    {
        [JsonProperty("properties")]
        public Properties Properties { get; set; }
    }
}
