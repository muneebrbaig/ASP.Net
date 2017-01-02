using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FirstApp.Controllers
{
    public class RazorReviewController : Controller
    {
        // GET: RazorReview
        public ActionResult Index()
        {
            return View();
        }

      public ActionResult Loops() { return View(); }
    public ActionResult UIControls() { return View(); }
  }
}