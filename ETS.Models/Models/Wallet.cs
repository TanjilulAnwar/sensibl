using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETS.Models.Models
{
    public class Wallet
    {
        public int id { get; set; }
        public string wallet_name { get; set; }
        public string wallet_id   { get; set; }
        public string wallet_code { get; set; }
        public string wallet_type { get; set; }
        public string founded     { get; set; }
        public string headquarter { get; set; }
        public string website     { get; set; }
        public string logo { get; set; }

    }
}
