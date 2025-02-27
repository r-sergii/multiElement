namespace MyLib
{
    public class InfoTheme : GLib.Object {

        private GLib.Settings settings;
        private string _name;
        private string _color;
        private string _back;
        private string _text;
//        private bool _theme; // true - if Light Theme

        public InfoTheme () {
            Object ();
            settings = new GLib.Settings ("org.gnome.desktop.interface");
//            settings = new GLib.Settings ("org.gnome.desktop.background");
            _name = settings.get_string ("gtk-theme");
//            _theme = settings.get_boolean ("gtk-application-prefer-dark-theme");
            _color = settings.get_string ("color-scheme");
//            _color = settings.get_string ("secondary-color");
//            _back = settings.get_string ("bg");
//            _text = settings.get_string ("gtk-color-scheme");
//            _text = settings.get_string ("primary-color");
        }

        public string name {
            get {
                return _name;
            }
        }

//        public bool theme {
  //          get {
    //            return !_theme;
      //      }
        //}

        public string colorscheme {
            get {
                return _color;
            }
        }

        public string background {
            get {
                return _back;
            }
        }

        public string textcolor {
            get {
                return _text;
            }
        }
    }
}
