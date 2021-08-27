using System;
using System.Threading.Tasks;

namespace ETS.DataAccess.Repository.IRepository
{

    public interface IUnitOfWork : IDisposable
    {
        IUserClientRepository UserClient { get; }
        IUserAccountRepository UserAccount { get; }
        IBankRepository Bank { get; }
        IMerchantRepository Merchant { get; }
        IRequestEventRepository RequestEvent { get; }
        IRequestTypeRepository RequestType{ get; }
        ITransactionEventRepository TransactionEvent { get; }
        ITransactionTypeRepository TransactionType { get; }
        IUserContactRepository UserContact { get; }
        IUserInfoRepository UserInfo { get; }
        IUserMerchantRepository UserMerchant { get; }
        IUserSecretRepository UserSecret { get; }
        IWalletRepository Wallet { get; }
        
        
        Task<int> SaveAsync();
    }

}
