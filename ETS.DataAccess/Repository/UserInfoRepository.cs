using ETS.DataAccess.Data;
using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ETS.DataAccess.Repository
{
    public class UserInfoRepository : RepositoryAsync<UserInfo>, IUserInfoRepository
    {
        private readonly ApplicationDbContext _db;

        public UserInfoRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }
        public void Update(UserInfo userInfo)
        {
            _db.User_info.Update(userInfo);
         
        }
    }
}
