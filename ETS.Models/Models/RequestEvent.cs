using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETS.Models.Models
{
    public class RequestEvent
    {
        public int id { get; set; }
        public string request_type { get; set; }
        public string request_code { get; set; }
        public string requesting_user_id { get; set; }
        public string requesting_user_code { get; set; }
        public string requested_to { get; set; }
        public DateTime request_time { get; set; }
        public bool pending { get; set; }
        public bool approved { get; set; }
        public bool denied { get; set; }
        public DateTime request_status_time { get; set; }
    }
}
