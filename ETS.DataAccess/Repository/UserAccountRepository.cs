using ETS.DataAccess.Data;
using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ETS.DataAccess.Repository
{
    public class UserAccountRepository : RepositoryAsync<UserAccount>, IUserAccountRepository
    {
        private readonly ApplicationDbContext _db;

        public UserAccountRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }
        public void Update(UserAccount userAccount)
        {
            _db.User_account.Update(userAccount);
         
        }
    }
}
