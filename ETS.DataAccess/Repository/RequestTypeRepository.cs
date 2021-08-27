using ETS.DataAccess.Data;
using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ETS.DataAccess.Repository
{
    public class RequestTypeRepository : RepositoryAsync<RequestType>, IRequestTypeRepository
    {
        private readonly ApplicationDbContext _db;

        public RequestTypeRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(RequestType requestType)
        {
            _db.Request_type.Update(requestType);
        }
    }
}
