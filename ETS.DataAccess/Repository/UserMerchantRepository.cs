using ETS.DataAccess.Data;
using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ETS.DataAccess.Repository
{
    public class UserMerchantRepository : RepositoryAsync<UserMerchant>, IUserMerchantRepository
    {
        private readonly ApplicationDbContext _db;

        public UserMerchantRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }
        public void Update(UserMerchant userMerchant)
        {
            _db.User_merchant.Update(userMerchant);
         
        }
    }
}
