using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETS.Models.Models
{
    public class UserAccount
    {
        public int id { get; set; }
        public string user_id { get; set; }
        public string user_code { get; set; }
        public string user_account_code { get; set; }
        public double user_balance { get; set; }
        public DateTime balance_last_updated { get; set; }
        public DateTime balance_last_event { get; set; }
        public DateTime created_at { get; set; }

    }
}
