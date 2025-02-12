/* application.vala
 *
 * Copyright 2024 Serhii
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

namespace Multielement {
    public class Application : Adw.Application {

        public Adw.ColorScheme theme { get; set; }
        private Multielement.ElementService _elementService;
        private Multielement.PropertiesService _propertiesService;

        public Application () {
            Object (application_id: "ua.inf.multiapps.multiElement", flags: ApplicationFlags.FLAGS_NONE);
        }

        construct {
            ActionEntry[] action_entries = {
                { "about", this.on_about_action },
                { "preferences", this.on_preferences_action },
                { "quit", this.quit }
            };
            this.add_action_entries (action_entries, this);
            this.set_accels_for_action ("app.quit", {"<primary>q"});

            var set_theme_action = new GLib.PropertyAction ("set_app_theme", this, "theme");
            set_theme_action.notify.connect (this.set_app_theme);
            this.add_action (set_theme_action);

            _elementService = new ElementService ();
            _propertiesService = new PropertiesService ();
        }

        public override void activate () {
            base.activate ();

            // Css settings
            var provider = new Gtk.CssProvider ();
            provider.load_from_resource ("/ua/inf/multiapps/multiElement/theme_switcher.css");
            Gtk.StyleContext.add_provider_for_display (Gdk.Display.get_default (), provider, Gtk.STYLE_PROVIDER_PRIORITY_USER);

            var win = this.active_window;
            if (win == null) {
                var splash = new Multielement.SplashWindow (this);
                splash.present ();
                _elementService.getItems ();
                _propertiesService.getItems ();
                Timeout.add (3000, make_window);

//                win = this.create_window ();
//                win.present ();
                this.set_app_theme ();

//                win = new Multielement.Window (this);
            }
            win.present ();
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

            // GLib settings
//            var settings = new GLib.Settings ("org.hitchhiker_linux.vapad");
  //          settings.bind ("vimode", win, "vimode", GLib.SettingsBindFlags.DEFAULT);
    //        settings.bind ("grid", win, "display_grid", GLib.SettingsBindFlags.DEFAULT);
      //      settings.bind ("syntax", win, "editor_theme", GLib.SettingsBindFlags.DEFAULT);
        //    settings.bind ("font", win, "editor_font", GLib.SettingsBindFlags.DEFAULT);
          //  settings.bind ("theme", this, "theme", GLib.SettingsBindFlags.DEFAULT);
            return win;
        }

        private void on_about_action () {
//            string[] authors = { "Serhii Rudchenko" };
  //          Gtk.show_about_dialog (this.active_window,
    //                               "program-name", "multiElement",
      //                             "authors", authors,
        //                           "version", "0.1.0");

            var win = new Adw.AboutWindow () {
                application_name = "multiElement",
                application_icon = "ua.inf.multiapps.multiElement",
                version = "0.1.0",
                copyright = "Copyright © 2024 Serhii Rudchenko",
//                license_type = License.GPL_3_0,
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
            message ("app.preferences action activated");
        }

        private void set_app_theme () {
            Adw.StyleManager.get_default ().set_color_scheme (this.theme);
        }
    }
}
