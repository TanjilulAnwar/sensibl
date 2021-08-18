using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ETS.DataAccess.Repository.IRepository
{

    public interface IUnitOfWork : IDisposable
    {
        IUserRepository User { get; }
        IBankRepository Bank { get; }
        Task<int> SaveAsync();
    }

}
