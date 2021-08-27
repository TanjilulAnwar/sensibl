using ETS.DataAccess.Data;
using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;


namespace ETS.DataAccess.Repository
{
    public class UserClientRepository : RepositoryAsync<UserClient>, IUserClientRepository
    {
        private readonly ApplicationDbContext _db;

        public UserClientRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }
        public void Update(UserClient userClient)
        {
            _db.User_client.Update(userClient);
         
        }
    }
}
