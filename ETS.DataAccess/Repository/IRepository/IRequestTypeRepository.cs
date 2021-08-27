using ETS.Models.Models;

namespace ETS.DataAccess.Repository.IRepository
{
    public interface IRequestTypeRepository : IRepositoryAsync<RequestType>
    {
        public void Update(RequestType requestType);
    }
}
