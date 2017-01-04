using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ModelDemo.Models;

namespace ModelDemo.Managers
{
  public static class ProductMgr
  {
    public static List<Product> GetAllProducts()
    {
      var products = new List<Product>();

      var p1 = new Product() { Id = 2, Name = "Coffee", Price = 11.56 };
      var p2 = new Product() { Id = 34, Name = "Butter", Price = 38.11 };
      var p3 = new Product() { Id = 56, Name = "Milk", Price = 26.33 };

      products.Add(p1);
      products.Add(p2);
      products.Add(p3);
      return products;
    }
  }
}