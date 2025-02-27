namespace Multielement {

    public abstract class ThemeField {
        public const string theme = "theme";
    }

    public class ThemeModel {
        //public int theme;
        public bool theme;

        public ThemeModel() {
            //theme = 0;
            theme = false;
        }

        public void fromSettings (GLib.Settings settings)
        {
//            theme = settings.get_int (ThemeField.theme);
            theme = settings.get_boolean (ThemeField.theme);
        }

        public void toSettings (GLib.Settings settings)
        {
//            settings.set_int (ThemeField.theme, theme);
            settings.set_boolean (ThemeField.theme, theme);
        }
    }
}
