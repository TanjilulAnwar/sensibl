using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ETS.Controllers
{
    public class BankController : BaseController
    {
        private readonly IUnitOfWork _unitOfWork;

        public BankController(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;

        }



        //[Route("~/Bank/paging")]
        //public async Task<IActionResult> Paging(int page_no)
        //{
        //    int page_size = 10;
        //    IEnumerable<Bank> list = await _unitOfWork.Bank.GetAllAsync().ToPageList(pageNumber, pageSize); ;
        //    return Json(new { success = true, message = list });
        //}

        [HttpGet]
        [Route("~/Bank/GetList")]
        public async Task<IActionResult> List()
        {
            IEnumerable<Bank> list = await _unitOfWork.Bank.GetAllAsync();
            return Json(new { success = true, message = list });
        }

     


        [HttpPost]
        [Route("~/Bank/Add")]
        public async Task<IActionResult> AddUpdate([FromBody] Bank bank)
        {
            try
            {

                if (ModelState.IsValid)
                {
                    if (bank.id == 0)
                    {

                        await _unitOfWork.Bank.AddAsync(bank);

                    }
                    else
                    {
                        _unitOfWork.Bank.Update(bank);

                    }
                    await _unitOfWork.SaveAsync();
                    return Json(new { success = true, message = "Data has been inserted Successfully!" });

                }
                else
                {
                    throw new InvalidOperationException("The Data sent to API is invalid!");
                    //return Json(new { success = false, message = "The Data sent to API is invalid!" });
                }
            }
            catch (Exception e)
            {
                return Json(new { success = false, message = e.Message });
            }


        }



        [HttpDelete]
        [Route("~/Bank/delete/{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            Bank bank = await _unitOfWork.Bank.GetFirstOrDefaultAsync(u => u.id == id);
            if (bank == null)
            {
                return Json(new { success = false, message = "Error while deleting" });
            }
            _unitOfWork.Bank.Remove(bank);
            await _unitOfWork.SaveAsync();
            return Json(new { success = true, message = "Delete Successful" });

        }












        //public class banko
        //{
        //    public List<tanko> Banks { get; set; }
        //}

        //public class tanko
        //{


        //    public string BankName { get; set; }
        //    public string BankShortCode { get; set; }
        //    public string Type { get; set; }
        //    public string Founded { get; set; }
        //    public string Headquarters { get; set; }
        //    public string Website { get; set; }

        //}


        //[HttpPost]
        //[Route("~/Bank/bulkadd")]
        //public async Task<IActionResult> AddBulk([FromBody] banko banklist)
        //{

        //    foreach (tanko bank in banklist.Banks)
        //    {
        //        Guid guid = Guid.NewGuid();

        //        Bank b = new Bank();
        //        b.bank_code = "ETS" + RandomString(3) + RandomNumber(12);
        //        b.bank_name = bank.BankName;
        //        b.bank_id = guid.ToString();
        //        b.bank_short_code = bank.BankShortCode;
        //        b.bank_type = bank.Type;
        //        b.founded = bank.Founded;
        //        b.headquarter = bank.Headquarters;
        //        b.website = bank.Website;
        //        await _unitOfWork.Bank.AddAsync(b);
        //    }


        //    await _unitOfWork.SaveAsync();
        //    return Json(new { success = true, message = "Data has been inserted Successfully!" });


        //}





    }
}
