
using ETS.Models.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace ETS.DataAccess.Repository.IRepository
{
    public interface IBankRepository : IRepositoryAsync<Bank>
    {
        public void Update(Bank bank);
    }
}
