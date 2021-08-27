using ETS.Models.Models;

namespace ETS.DataAccess.Repository.IRepository
{
    public interface IRequestEventRepository : IRepositoryAsync<RequestEvent>
    {
        public void Update(RequestEvent requestEvent);
    }
}
