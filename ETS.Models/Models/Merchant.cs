using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETS.Models.Models
{
    public class Merchant
    {
        public string id { get; set; }
        public string merchant_id { get; set; }
        public string merchant_code { get; set; }
        public string merchant_type { get; set; }
        public string merchant_logo { get; set; }
        public string gateway_url { get; set; }
        public string gateway_key { get; set; }
        public string gateway_sender_id { get; set; }
    }
}
