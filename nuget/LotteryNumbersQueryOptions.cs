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
        /// The name of the lottery to lookup the winning numbers (e.g., powerball or megamillions)
        /// Example: megamillions
        /// </summary>
        [JsonProperty("numbers")]
        public string Numbers { get; set; }
    }
}
