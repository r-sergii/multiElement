namespace Multielement {


    public class SplashWindow : Adw.Window {

        private Gtk.Box main_box;
        private CircularProgressWidgets.CircularProgressBar pbar;

        public SplashWindow (Gtk.Application app) {
            Object (application: app);
        }

        construct{
            var logo = new Gtk.Image.from_icon_name("io.github.r_sergii.multiElement") {
                pixel_size = 128
            };

            //get current theme
            var app = GLib.Application.get_default();
            var theme = (app as Multielement.Application).theme;
            var locale = (app as Multielement.Application).settingsService.locale;

            //var
            pbar = new CircularProgressWidgets.CircularProgressBar ();
            pbar.percentage = 0;//.44;
            pbar.line_width = 10;
            pbar.center_filled = true;
            pbar.radius_filled = true;

            if((theme == Adw.ColorScheme.FORCE_LIGHT) || (theme == Adw.ColorScheme.PREFER_LIGHT)
                || (theme == Adw.ColorScheme.DEFAULT)) {
                pbar.center_fill_color = "#FAFAFA";
            } else {
                pbar.center_fill_color = "#050505";
            }
//            pbar.center_fill_color = "#FAFAFA";
  //          pbar.radius_fill_color = "#0099FF";
    //        pbar.progress_fill_color = "#DDDAAD";

            Gtk.Label title = new Gtk.Label("multiElement");
            title.set_markup ("<span size='22000'> multiElement </span>");
//////////            Gtk.Label load = new Gtk.Label("loading ...");
            Gtk.Label load = new Gtk.Label(locale.loading);

            Gtk.Viewport viewport1 = new Gtk.Viewport(null, null);
            viewport1.set_size_request (72,72);
            viewport1.set_child (pbar);

            main_box = new Gtk.Box(Gtk.Orientation.VERTICAL, 5);
            main_box.margin_top = 10;
            main_box.append (logo);
            main_box.append (title);
            main_box.append (load);
            main_box.append (viewport1);

            this.set_content(main_box);

//            var currencyService = new CurrencyService ();
  //          currencyService.getItems (this);

            isClose = false;
            Timeout.add (30, run);
        }

        private int j;

        public bool isClose { get;set; }

        private bool run()
        {
            if(j<=100) {
                j++;
                pbar.percentage = j / 100.0;
                pbar.queue_draw ();
            }
            else {
                isClose = true;
                close();
            }
            return true;
        }
    }
}

