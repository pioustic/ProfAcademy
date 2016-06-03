using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebGrid.aspx.Startup))]
namespace WebGrid.aspx
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
