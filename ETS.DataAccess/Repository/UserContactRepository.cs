using ETS.DataAccess.Data;
using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ETS.DataAccess.Repository
{
    public class UserContactRepository : RepositoryAsync<UserContact>, IUserContactRepository
    {
        private readonly ApplicationDbContext _db;

        public UserContactRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }
        public void Update(UserContact userContact)
        {
            _db.User_contact.Update(userContact);
         
        }
    }
}
