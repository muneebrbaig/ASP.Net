using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ModelDemo.Managers;
using ModelDemo.Models;

namespace ModelDemo.Controllers
{
  public class ProductController : Controller
  {
    // GET: Product
    public ActionResult ProductViewUsingViewBag()
    {
      var product = new Product()
      {
        Id = 1,
        Name = "Tea",
        Price = 10.56
      };
      ViewBag.Product = product;
      return View();
    }

    public ActionResult AllProducts()
    {
      var products = new List<Product>();

      var p1 = new Product() { Id = 2, Name = "Coffee", Price = 11.56 };
      var p2 = new Product() { Id = 34, Name = "Butter", Price = 38.11 };
      var p3 = new Product() { Id = 56, Name = "Milk", Price = 26.33 };

      products.Add(p1);
      products.Add(p2);
      products.Add(p3);
      ViewBag.Products = products;/* ProductMgr.GetAllProducts();*/
      return View();
    }
  }
}