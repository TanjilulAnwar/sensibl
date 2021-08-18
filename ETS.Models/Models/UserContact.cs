using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETS.Models.Models
{
    public class UserContact
    {
        public int id { get; set; }

        public string user_id { get; set; }
        public string user_code { get; set; }
        public string contact_code { get; set; }
        public string contact_first_name { get; set; }
        public string contact_last_name { get; set; }
        public string contact_photo { get; set; }
        public string contact_primary_phone { get; set; }
        public string contact_primary_email { get; set; }
        public bool contact_permitted { get; set; }
        public DateTime contact_added { get; set; }

    }
}
