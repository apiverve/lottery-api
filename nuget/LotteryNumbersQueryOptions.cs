using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.LotteryNumbers
{
    /// <summary>
    /// Query options for the Lottery Numbers API
    /// </summary>
    public class LotteryNumbersQueryOptions
    {
        /// <summary>
        /// The lottery game to lookup
        /// </summary>
        [JsonProperty("numbers")]
        public string Numbers { get; set; }

        /// <summary>
        /// Optional date for historical lookup (YYYY-MM-DD). Returns the nearest draw to this date.
        /// </summary>
        [JsonProperty("date")]
        public string Date { get; set; }
    }
}
