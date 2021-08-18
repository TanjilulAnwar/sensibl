using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETS.Models.Models
{
    public class UserMerchant
    {
        public int id { get; set; }
        public string user_id { get; set; }
        public string user_code { get; set; }
        public string merchant_id { get; set; }
        public string merchant_code { get; set; }
        public string user_merchant_account { get; set; }
        public string user_merchant_account_id { get; set; }
        public int user_merchant_account_sl { get; set; }
        public double user_merchant_account_balance { get; set; }

    }
}
