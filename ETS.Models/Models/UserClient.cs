using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETS.Models.Models
{
    public class UserClient
    {

        public int id { get; set; }
        public string user_id { get; set; }
        public string user_code { get; set; }
        public string user_type { get; set; }
        public string user_photo { get; set; }
        public string first_name { get; set; }
        public string last_name { get; set; }
        public string phone_primary { get; set; }
        public string email_primary { get; set; }
        public string password_hashed { get; set; }
        public DateTime date_of_birth { get; set; }
        public DateTime created_at { get; set; }
        public DateTime Last_login_time { get; set; }
    }
}
