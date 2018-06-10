using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Online_Questionnair.Startup))]
namespace Online_Questionnair
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
