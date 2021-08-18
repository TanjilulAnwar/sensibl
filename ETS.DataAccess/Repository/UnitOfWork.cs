using ETS.DataAccess.Data;
using ETS.DataAccess.Repository;
using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;
using System.Threading.Tasks;

namespace POS.DataAccess.Repository
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly ApplicationDbContext _db;

        public UnitOfWork(ApplicationDbContext db)
        {
            _db = db;
            User = new UserRepository(_db);
            Bank = new BankRepository(_db);
        }

        public IUserRepository User { get; private set; }
        public IBankRepository Bank { get; private set; }

        public async void Dispose()
        {
         await _db.DisposeAsync();
        }

        public Task<int> SaveAsync()
        {
          return _db.SaveChangesAsync();
        }
    }
}
