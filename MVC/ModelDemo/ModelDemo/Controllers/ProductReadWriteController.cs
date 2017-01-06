using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ModelDemo.Managers;
using ModelDemo.Models;

namespace ModelDemo.Controllers
{
	public class ProductReadWriteController : Controller
	{
		static readonly List<Product> AllProducts = ProductMgr.GetAllProducts();
		// GET: ProductReadWrite
		public ActionResult Index()
		{
			return View(AllProducts);
		}

		// GET: ProductReadWrite/Details/5
		public ActionResult Details(int id)
		{
			var product = AllProducts.Find(p => p.Id == id);
			if (product != null && product.Id ==id)
			{
				return View(product);
			}
			return RedirectToAction("Index");
		}

		// GET: ProductReadWrite/Create
		public ActionResult Create()
		{
			return View();
		}

		// POST: ProductReadWrite/Create
		[HttpPost]
		public ActionResult Create(FormCollection collection)
		{
			try
			{
				// TODO: Add insert logic here

				return RedirectToAction("Index");
			}
			catch
			{
				return View();
			}
		}

		// GET: ProductReadWrite/Edit/5
		public ActionResult Edit(int id)
		{
			var product = AllProducts.Find(p => p.Id == id);
			if (product != null && product.Id == id)
			{
				return View(product);
			}
			return RedirectToAction("Index");
		}

		// POST: ProductReadWrite/Edit/5
		[HttpPost]
		public ActionResult Edit(int id, FormCollection collection)
		{
			try
			{
				// TODO: Add update logic here

				return RedirectToAction("Index");
			}
			catch
			{
				return View();
			}
		}

		// GET: ProductReadWrite/Delete/5
		public ActionResult Delete(int id)
		{
			var product = AllProducts.Find(p => p.Id == id);
			if (product != null && product.Id == id)
			{
				return View(product);
			}
			return View();
		}

		// POST: ProductReadWrite/Delete/5
		[HttpPost]
		public ActionResult Delete(int id, FormCollection collection)
		{
			try
			{
				// TODO: Add delete logic here

				return RedirectToAction("Index");
			}
			catch
			{
				return View();
			}
		}
	}
}
