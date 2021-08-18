using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETS.Models.Models
{
    public class TransactionType
    {
        public int id { get; set; }
        public string transaction_type { get; set; }
        public string transaction_type_code { get; set; }
        public string transaction_type_description { get; set; }
    }
}
