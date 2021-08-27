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
            UserClient = new UserClientRepository(_db);
            UserAccount = new UserAccountRepository(_db);
            Bank = new BankRepository(_db);
            Merchant = new MerchantRepository(_db);
            RequestEvent = new RequestEventRepository(_db);
            RequestType = new RequestTypeRepository(_db);
            TransactionType = new TransactionTypeRepository(_db);
            TransactionEvent = new TransactionEventRepository(_db);
            UserContact = new UserContactRepository(_db);
            UserInfo = new UserInfoRepository(_db);
            UserMerchant = new UserMerchantRepository(_db);
            UserSecret = new UserSecretRepository(_db);
            Wallet = new WalletRepository(_db);


        }

        public IUserClientRepository UserClient { get; private set; }
        public IUserAccountRepository UserAccount { get; private set; }
        public IBankRepository Bank { get; private set; }
        public IMerchantRepository Merchant  { get; private set; }
        public IRequestEventRepository RequestEvent { get; private set; }
        public IRequestTypeRepository RequestType{ get; private set; }
        public ITransactionTypeRepository TransactionType { get; private set; }
        public ITransactionEventRepository TransactionEvent { get; private set; }
        public IUserContactRepository UserContact { get; private set; }
        public IUserInfoRepository UserInfo { get; private set; }
        public IUserMerchantRepository UserMerchant { get; private set; }
        public IUserSecretRepository UserSecret { get; private set; }
        public IWalletRepository Wallet { get; private set; }
      



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
