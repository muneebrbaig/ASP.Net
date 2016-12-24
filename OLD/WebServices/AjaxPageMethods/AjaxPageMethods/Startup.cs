using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AjaxPageMethods.Startup))]
namespace AjaxPageMethods
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
