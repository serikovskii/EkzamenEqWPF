using Newtonsoft.Json;
using System;

namespace EkzamenWPF.DTO
{
    public class Properties
    {
        [JsonProperty("mag")]
        public double Mag { get; set; }

        [JsonProperty("place")]
        public string Place { get; set; }

        [JsonProperty("time")]
        //[JsonConverter(typeof(MicrosecondEpochConverter))]
        public DateTime Time { get; set; }

        [JsonProperty("title")]
        public string Title { get; set; }

        [JsonProperty("sig")]
        public int Sig { get; set; }
    }
}