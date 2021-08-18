
using ETS.Models.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace ETS.DataAccess.Repository.IRepository
{
    public interface IUserRepository:IRepositoryAsync<UserClient>
    {
        public void Update(UserClient user);
    }
}
