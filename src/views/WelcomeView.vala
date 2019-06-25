using Gtk;
using Granite;

namespace Acacia.Views {

    public class WelcomeView : Granite.Widgets.Welcome {

        public WelcomeView () {
            base ("Welcome to Acacia.", "An in-progress way to view your repositories.");
            append ("document-open", "Open a repository", "Open an repository on your machine.");
            append ("document-import", "Clone a repository", "Clone a repository from somewhere else.");
        }
    }
}