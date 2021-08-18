using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace ETS.Controllers
{
    public class BaseController : Controller
    {


        private static Random random = new Random();
        public static string RandomNumber(int length)
        {
            //   const string chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            const string chars = "0123456789";
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }

        public static string RandomString(int length)
        {
              const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }
        public static string MySpecialString()
        {

            string base64Guid = Convert.ToBase64String(Guid.NewGuid().ToByteArray());
            string pattern = "[\\~#%&*{}/:<>?|\"-$^.()!@]";
            string replacement = random.Next(9).ToString();
            Regex regEx = new Regex(pattern);
            string sanitized = Regex.Replace(regEx.Replace(base64Guid, replacement), @"\s+", " ");

            return sanitized.Trim('=');
        }
    }
}
