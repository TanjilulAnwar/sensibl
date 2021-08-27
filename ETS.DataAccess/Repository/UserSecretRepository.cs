using ETS.DataAccess.Data;
using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ETS.DataAccess.Repository
{
    public class UserSecretRepository : RepositoryAsync<UserSecret>, IUserSecretRepository
    {
        private readonly ApplicationDbContext _db;

        public UserSecretRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }
        public void Update(UserSecret userSecret)
        {
            _db.User_secret.Update(userSecret);
         
        }
    }
}
