namespace MyLib {
    [GtkTemplate (ui = "/io/github/r_sergii/multiElement/widgets/mode_switcher/mode_switcher.ui")]
    public class ModeSwitcher : Gtk.Widget {
        [GtkChild]
        private unowned Gtk.Switch switch_button;

//        private Adw.ColorScheme theme;

        public ModeSwitcher () {
            Object ();
        }

        construct {
            this.set_layout_manager (new Gtk.BinLayout ());
/*            this.system_button.set_detailed_action_name ("app.set_app_theme::default");
            this.light_button.set_detailed_action_name ("app.set_app_theme::force-light");
            this.dark_button.set_detailed_action_name ("app.set_app_theme::force-dark");
            */
           switch_button.state_set.connect (on_check_state_set);
        }

        public void set_theme (bool th) {
/*            switch (th) {
                case 0: //theme = Adw.ColorScheme.DEFAULT;
                        switch_button.set_state (true);
                        break;
                case 1: //theme = Adw.ColorScheme.FORCE_LIGHT;
                        switch_button.set_state (false);
                        break;
                case 2: //theme = Adw.ColorScheme.FORCE_DARK;
                        switch_button.set_state (true);
                        break;
                case 3: //theme = Adw.ColorScheme.PREFER_LIGHT;
                        switch_button.set_state (false);
                        break;
                case 4: //theme = Adw.ColorScheme.PREFER_DARK;
                        switch_button.set_state (true);
                        break;
                default: //theme = Adw.ColorScheme.DEFAULT;
                        switch_button.set_state (true);
                        break;
            }
  */
            switch_button.set_state (th);
            switch_button.set_active (th);
        }

        bool on_check_state_set (bool new_state) {
            var app = GLib.Application.get_default();
//            var theme = (app as Multielement.Application).theme;

            switch_button.set_state (new_state);
            message (new_state.to_string ());
/*
            if(new_state) {
                Adw.StyleManager.get_default ().set_color_scheme (Adw.ColorScheme.FORCE_DARK);
                //Adw.ColorScheme.PREFER_DARK;
                //Adw.ColorScheme.FORCE_DARK;
                //Adw.ColorScheme.DEFAULT;
            }
            else {
                Adw.StyleManager.get_default ().set_color_scheme (Adw.ColorScheme.FORCE_LIGHT);
                //Adw.ColorScheme.PREFER_LIGHT
                //Adw.ColorScheme.FORCE_LIGHT;
                //Adw.ColorScheme.DEFAULT;
            }
            */
            (app as Multielement.Application).changeTheme(new_state);
            return true;
        }
    }
}
