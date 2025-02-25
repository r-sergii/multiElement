namespace Multielement {
    public class Application : Adw.Application {

        public Adw.ColorScheme theme { get; set; }
        private Multielement.ElementService _elementService;
        private Multielement.PropertiesService _propertiesService;
        private Multielement.SettingsService _settingsService;

        private MyLib.InfoLinux _info;

        public Application () {
            Object (application_id: "io.github.r_sergii.multiElement", flags: ApplicationFlags.FLAGS_NONE);
        }

        construct {
            ActionEntry[] action_entries = {
//                { "towns", this.on_towns_action },
                { "language", this.on_language_action },
                { "about", this.on_about_action },
                { "preferences", this.on_preferences_action },
                { "quit", this.quit }
            };
            this.add_action_entries (action_entries, this);
            this.set_accels_for_action ("app.language", {"<primary>l"});
//            this.set_accels_for_action ("app.towns", {"<primary>t"});
            this.set_accels_for_action ("app.about", {"<primary>a"});
            this.set_accels_for_action ("app.quit", {"<primary>q"});

            var set_theme_action = new GLib.PropertyAction ("set_app_theme", this, "theme");
            set_theme_action.notify.connect (this.set_app_theme);
            this.add_action (set_theme_action);

            _info = new MyLib.InfoLinux ();
//            stdout.printf ("%s\n", info.os + "-" + info.cpu);
//            stdout.printf ("%s\n", info.theme ? "true" : "false");

            _settingsService = new SettingsService ();
            _elementService = new ElementService ();
            _propertiesService = new PropertiesService ();
        }

        public override void activate () {
            base.activate ();

            init_app_theme ();

            // Css settings
            var provider = new Gtk.CssProvider ();
            provider.load_from_resource ("/io/github/r_sergii/multiElement/theme_switcher.css");
            Gtk.StyleContext.add_provider_for_display (Gdk.Display.get_default (), provider, Gtk.STYLE_PROVIDER_PRIORITY_USER);

            var win = this.active_window;
            if (win == null) {

                var connectService = new ConnectService ();
                bool result = connectService.connect ();
                if (result == false) {
                    var noconnect = new Multielement.NoConnectWindow (this);
                    noconnect.present ();
                    return;
                }

                var locale = this.settingsService.locale;

                var appsLoad = new Multielement.AppsLoadService (_info, _settingsService.locale.locale );
                appsLoad.insert ();

                var splash = new Multielement.SplashWindow (this);
                splash.present ();
                _elementService.getItems (locale.locale);
                _propertiesService.getItems (locale.locale);
                Timeout.add (3000, make_window);

//                win = this.create_window ();
//                win.present ();
////////////                this.set_app_theme ();

//                win = new Multielement.Window (this);
            }
            win.present ();
        }

        public MyLib.InfoLinux info {
            get {
                return _info;
            }
        }

        public Multielement.ElementService elementService {
            get {
                return _elementService;
            }
        }

        public Multielement.PropertiesService propertiesService {
            get {
                return _propertiesService;
            }
        }

        public Multielement.SettingsService settingsService {
            get {
                return _settingsService;
            }
        }

        private bool make_window()
        {
            var win = new Multielement.MainWindow (this);
//            win.set_position ( Gtk.WindowPosition.CENTER );// (GTK_WIN_POS_CENTER);
            win.present ();
            return false;
        }

        private Multielement.MainWindow create_window () {
            var win = new Multielement.MainWindow (this);

            // Css settings
            var provider = new Gtk.CssProvider ();
            provider.load_from_resource ("/ua/inf/multiapps/multiElement/theme_switcher.css");
            Gtk.StyleContext.add_provider_for_display (Gdk.Display.get_default (), provider, Gtk.STYLE_PROVIDER_PRIORITY_USER);

            this.set_app_theme ();

            return win;
        }

        private void on_about_action () {
//            (this.active_window as Multielement.MainWindow).shortWidget.changeTheme();
//            string[] authors = { "Serhii Rudchenko" };
  //          Gtk.show_about_dialog (this.active_window,
    //                               "program-name", "multiElement",
      //                             "authors", authors,
        //                           "version", "0.1.0");
            var win = new Adw.AboutWindow () {
                application_name = "multiElement",
                application_icon = "ua.inf.multiapps.multiElement",
                version = "0.1.0",
                copyright = "Copyright © 2025 Serhii Rudchenko",
//                license_type = License.Apache_2_0,
                developer_name = "Serhii Rudchenko",
                developers = {"Serhii Rudchenko email:sergej.rudchenko@gmail.com"},
                translator_credits = _("translator-credits"),
                website = "https://r-serega.github.io/mapps/",
                issue_url = "email:multiApps@i.ua"
            };
            win.set_transient_for (this.active_window);
            win.show ();

        }

        private void on_preferences_action () {
//            message ("app.preferences action activated");
        }

        private void init_app_theme () {
            var th = settingsService.theme;
            switch (th.theme) {
                case 0: theme = Adw.ColorScheme.DEFAULT;
                        break;
                case 1: theme = Adw.ColorScheme.FORCE_LIGHT;
                        break;
                case 2: theme = Adw.ColorScheme.FORCE_DARK;
                        break;
                case 3: theme = Adw.ColorScheme.PREFER_LIGHT;
                        break;
                case 4: theme = Adw.ColorScheme.PREFER_DARK;
                        break;
                default: theme = Adw.ColorScheme.DEFAULT;
                        break;
            }
            Adw.StyleManager.get_default ().set_color_scheme (this.theme);
        }

        private void set_app_theme () {
            Adw.StyleManager.get_default ().set_color_scheme (this.theme);
//            message (this.theme.to_string());

            var th = settingsService.theme;

            switch(theme) {
                case Adw.ColorScheme.FORCE_LIGHT:
//                    message ("FL");
                    th.theme = 1;
                    break;
                case Adw.ColorScheme.FORCE_DARK:
//                    message ("FD");
                    th.theme = 2;
                    break;
                case Adw.ColorScheme.PREFER_LIGHT:
//                    message ("PFL");
                    th.theme = 3;
                    break;
                case Adw.ColorScheme.PREFER_DARK:
//                    message ("PFL");
                    th.theme = 4;
                    break;
                case Adw.ColorScheme.DEFAULT:
//                    message ("DEF");
                    th.theme = 0;
                    break;
                default:
//                    message ("default");
                    th.theme = 0;
                    break;
            }

            settingsService.writeTheme ();
            var win = this.active_window as Multielement.MainWindow;
            //message ("Start");
            if((win != null) && (win.isCreate != false)) {
                win.shortWidget.changeTheme ();
                win.extendedWidget.changeTheme ();
                win.adomahHorizWidget.changeTheme ();
                win.adomahVertWidget.changeTheme ();
//            (this.active_window as Multielement.MainWindow).shortWidget.changeTheme();
            }
            //message ("Short");

        }
/*
        private void on_towns_action () {
            message ("towns action show activated");

//            var towns = new Multiclock.TownsWindow ();
  //          towns.set_transient_for (this.active_window);
   //         towns.show ();
        }
*/
        private void on_language_action () {
//            message ("language action show activated");

            var language = new Multielement.LanguageWindow (this.active_window as Multielement.MainWindow);
            language.set_transient_for (this.active_window);
            language.show ();

        }

        private void on_quit () {
//            this.get_windows ().foreach ((obj) => {
  //              var win = (Multiclock.MainWindow) obj;
    //            win.close_all ();
      //      });
            Multielement.MainWindow win = this.active_window as Multielement.MainWindow;
            win.on_close_application ();
        }
    }
}
