using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETS.Models.Models
{
    public class TransactionEvent
    {
        public int id { get; set; }
        public string transaction_id { get; set; }
        public string user_id { get; set; }
        public string user_code { get; set; }
        public string user_account_code { get; set; }
        public string merchant_id { get; set; }
        public string merchant_code { get; set; }
        public string user_merchant_account { get; set; }
        public string contact_code { get; set; }
        public double opening_balance { get; set; }
        public double closing_balance { get; set; }
        public double debit { get; set; }
        public double debit_service_charge { get; set; }
        public double total_debit { get; set; }
        public double credit { get; set; }
        public double credit_service_charge { get; set; }
        public double total_credit { get; set; }
        public string transaction_type { get; set; }
        public string transaction_type_code { get; set; }
        public DateTime transaction_time { get; set; }
        public string transaction_status { get; set; }
        public string transaction_description { get; set; }

    }
}
