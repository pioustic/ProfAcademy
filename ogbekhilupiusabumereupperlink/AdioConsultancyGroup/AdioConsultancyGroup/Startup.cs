using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AdioConsultancyGroup.Startup))]
namespace AdioConsultancyGroup
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
