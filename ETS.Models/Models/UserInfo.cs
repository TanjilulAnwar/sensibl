using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETS.Models.Models
{
    public class UserInfo
    {
        public int id { get; set; }
        public string user_id { get; set; }
        public string nid { get; set; }
        public string passport { get; set; }
        public string present_address { get; set; }
        public string present_thana { get; set; }
        public string present_district { get; set; }
        public string present_division { get; set; }
        public string present_postcode { get; set; }
        public string permanent_address { get; set; }
        public string permanent_thana { get; set; }
        public string permanent_district { get; set; }
        public string permanent_division { get; set; }
        public string permanent_postcode { get; set; }
        public string phone_secondary { get; set; }
        public string email_secondary { get; set; }
    }

}
