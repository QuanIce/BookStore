using BookStore.Data;
using BookStore.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using static Microsoft.Extensions.Logging.EventSource.LoggingEventSource;

namespace BookStore.Controllers
{
    public class ClientController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ClientController(ApplicationDbContext context)
        {
            _context = context;
        }

        [Route("/")]
        // GET: Products
        public async Task<IActionResult> Index()
        {
            return View(await _context.Product.ToListAsync());
        }

        public async Task<IActionResult> Details(int id)
        {
            var books = _context.Product.Find(id);
            return View(books);
        }

        [HttpPost]
        public async Task<IActionResult> Search(string keyword)
        {
            var books = _context.Product.Where(x=>x.Title.Contains(keyword)).ToList();
            if (!String.IsNullOrEmpty(keyword))
            {
                @TempData["Message"] = "No book found";
            }
            return View("Index", books);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}