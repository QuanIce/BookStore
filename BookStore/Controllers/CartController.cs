using BookStore.Data;
using BookStore.Models;
using Microsoft.AspNetCore.Mvc;

namespace BookStore.Controllers
{
    public class CartController : Controller
    {
        private readonly ApplicationDbContext _context;

        public CartController(ApplicationDbContext context)
        {
            _context = context;
        }
        public IActionResult MakeCart(int id, int quantity, string customerName, int price)
        {
            TempData["ok"] = "Order successfully !";
            var order = new Cart();
            order.Status = -1;
            order.Price = price;
            order.OrderQuantity = quantity;
            order.ProductId = id;
            order.Customer = customerName;
            order.OrderName = _context.Product.Find(id).Title;
            order.OrderPrice = (_context.Product.Find(id).Price) * quantity;

            _context.Carts.Add(order);
            _context.SaveChanges();
            return View(order);
        }

        public IActionResult CancelCart(int id)
        {
            var order = _context.Carts.Find(id);
            _context.Carts.Remove(order);
            _context.SaveChanges();
            return RedirectToAction(nameof(Index));
        }
    }
}
