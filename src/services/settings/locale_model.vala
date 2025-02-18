namespace Multielement {

    public abstract class LocaleField {
        public const string locale = "locale";
        public const string loading = "loading";
        public const string language = "language";
        public const string towns = "towns";
        public const string about = "about";
        public const string quit = "quit";
        public const string ok = "ok";
        public const string cancel = "cancel";
        public const string close = "close";
        public const string choose_lang = "choose-lang";
        public const string yes_rem = "yes-rem";
        public const string no_rem = "no-rem";
        public const string choose_cities = "choose-cities";
        public const string bad_inet = "bad-inet";
        public const string make_connect = "make-connect";
        public const string exit_ = "exit";
        public const string are_exit = "are-exit";

        public const string group = "group";
        public const string period = "period";
        public const string row = "row";
        public const string lanthanides = "lanthanides";
        public const string actinides = "actinides";
        public const string halogens = "halogens";
        public const string noble_gases = "noble-gases";
        public const string non_metal = "non-metal";
        public const string alkali_metals = "alkali-metals";
        public const string alkaline_earth_metals = "alkaline-earth-metals";
        public const string transition_metals = "transition-metals";
        public const string post_transition_metals = "post-transition-metals";
        public const string semimetals = "semimetals";

        public const string short_name = "short";
        public const string extended = "extended";
        public const string circle = "circle";
        public const string piramid = "piramid";
        public const string adomah_vertical = "adomah-vertical";
        public const string adomah_horizontal = "adomah-horizontal";
        public const string short_table = "short-table";
        public const string extended_table = "extended-table";
        public const string circle_table = "circle-table";
        public const string piramid_table = "piramid-table";
        public const string adomah_table = "adomah-table";
    }

    const char SPACE = 32;

    public class LocaleModel {
        public string locale;
        public string loading;
        public string language;
        public string towns;
        public string about;
        public string quit;
        public string ok;
        public string cancel;
        public string close;
        public string choose_lang;
        public string yes_rem;
        public string no_rem;
        public string choose_cities;
        public string bad_inet;
        public string make_connect;
        public string exit_;
        public string are_exit;

        public string group;
        public string period;
        public string row;
        public string lanthanides;
        public string actinides;
        public string halogens;
        public string noble_gases;
        public string non_metal;
        public string alkali_metals;
        public string alkaline_earth_metals;
        public string transition_metals;
        public string post_transition_metals;
        public string semimetals;

        public string short_name;
        public string extended;
        public string circle;
        public string piramid;
        public string adomah_vertical;
        public string adomah_horizontal;
        public string short_table;
        public string extended_table;
        public string circle_table;
        public string piramid_table;
        public string adomah_table;

        public LocaleModel() {
            reinit ();
        }

        public void for_translate () {
            locale = "EN";
            loading = "Loading...";
            language = "Language";
            towns = "Towns";
            about = "About";
            quit = "Quit";
            ok = "Ok";
            cancel = "Cancel";
            close = "Close";
            choose_lang = "Choose%20language%20for%20application";
            yes_rem = "Apply%20your%20selection";
            no_rem = "Undo%20changes";
            choose_cities = "Choose%20cities%20to%20show";
            bad_inet = "No%20access%20to%20the%20internet";
            make_connect = "Make%20the%20connection%20and%20try%20again";
            exit_ = "Exit?";
            are_exit = "Are%20you%20sure%20you%20want%20to%20exit?";

            group = "Group";
            period = "Period";
            row = "Row";
            lanthanides = "Lanthanides";
            actinides = "Actinides";
            halogens = "Halogens";
            noble_gases = "Noble%20gases";
            non_metal = "Non%20metal";
            alkali_metals = "Alkali%20metals";
            alkaline_earth_metals = "Alkaline%20earth%20metals";
            transition_metals = "Transition%20metals";
            post_transition_metals = "Post-transition%20metals";
            semimetals = "Semimetals";
            short_name = "Short";
            extended = "Extended";
            circle = "Circle";
            piramid = "Piramid";
            adomah_vertical = "vertical%20view";
            adomah_horizontal = "horizontal%20view";
            short_table = "short%20periodic%20table";
            extended_table = "extended%20periodic%20table";
            circle_table = "circle%20periodic%20table";
            piramid_table = "piramid%20periodic%20table";
            adomah_table = "adomah%20table";
        }

        public void reinit () {
            locale = "EN";
            loading = "Loading...";
            language = "Language";
            towns = "Towns";
            about = "About";
            quit = "Quit";
            ok = "Ok";
            cancel = "Cancel";
            close = "Close";
            choose_lang = "Choose language for application";
            yes_rem = "Apply your selection";
            no_rem = "Undo changes";
            choose_cities = "Choose cities to show";
            bad_inet = "No access to the internet";
            make_connect = "Make the connection and try again";
            exit_ = "Exit?";
            are_exit = "Are you sure you want to exit?";

            group = "Group";
            period = "Period";
            row = "Row";
            lanthanides = "Lanthanides";
            actinides = "Actinides";
            halogens = "Halogens";
            noble_gases = "Noble gases";
            non_metal = "Non metal";
            alkali_metals = "Alkali metals";
            alkaline_earth_metals = "Alkaline earth metals";
            transition_metals = "Transition metals";
            post_transition_metals = "Post-transition metals";
            semimetals = "Semimetals";
            short_name = "Short";
            extended = "Extended";
            circle = "Circle";
            piramid = "Piramid";
            adomah_vertical = "vertical view";
            adomah_horizontal = "horizontal view";
            short_table = "short periodic table";
            extended_table = "extended periodic table";
            circle_table = "circle periodic table";
            piramid_table = "piramid periodic table";
            adomah_table = "adomah table";
        }

        public void fromSettings (GLib.Settings settings)
        {
//            LocaleField localeField = new LocaleField();

            locale = settings.get_string (LocaleField.locale);
            loading = settings.get_string (LocaleField.loading);
            language = settings.get_string (LocaleField.language);
            towns = settings.get_string (LocaleField.towns);
            about = settings.get_string (LocaleField.about);
            quit = settings.get_string (LocaleField.quit);
            ok = settings.get_string (LocaleField.ok);
            cancel = settings.get_string (LocaleField.cancel);
            close = settings.get_string (LocaleField.close);
            choose_lang = settings.get_string (LocaleField.choose_lang);
            yes_rem = settings.get_string (LocaleField.yes_rem);
            no_rem = settings.get_string (LocaleField.no_rem);
            choose_cities = settings.get_string (LocaleField.choose_cities);
            bad_inet = settings.get_string (LocaleField.bad_inet);
            make_connect = settings.get_string (LocaleField.make_connect);
            exit_ = settings.get_string (LocaleField.exit_);
            are_exit = settings.get_string (LocaleField.are_exit);

            group = settings.get_string (LocaleField.group);
            period = settings.get_string (LocaleField.period);
            row = settings.get_string (LocaleField.row);
            lanthanides = settings.get_string (LocaleField.lanthanides);
            actinides = settings.get_string (LocaleField.actinides);
            halogens = settings.get_string (LocaleField.halogens);
            noble_gases = settings.get_string (LocaleField.noble_gases);
            non_metal = settings.get_string (LocaleField.non_metal);
            alkali_metals = settings.get_string (LocaleField.alkali_metals);
            alkaline_earth_metals = settings.get_string (LocaleField.alkaline_earth_metals);
            transition_metals = settings.get_string (LocaleField.transition_metals);
            post_transition_metals = settings.get_string (LocaleField.post_transition_metals);
            semimetals = settings.get_string (LocaleField.semimetals);
            short_name = settings.get_string (LocaleField.short_name);
            extended = settings.get_string (LocaleField.extended);
            circle = settings.get_string (LocaleField.circle);
            piramid = settings.get_string (LocaleField.piramid);
            adomah_vertical = settings.get_string (LocaleField.adomah_vertical);
            adomah_horizontal = settings.get_string (LocaleField.adomah_horizontal);
            short_table = settings.get_string (LocaleField.short_table);
            extended_table = settings.get_string (LocaleField.extended_table);
            circle_table = settings.get_string (LocaleField.circle_table);
            piramid_table = settings.get_string (LocaleField.piramid_table);
            adomah_table = settings.get_string (LocaleField.adomah_table);
        }

        public void toSettings (GLib.Settings settings)
        {
//            LocaleField localeField = new LocaleField();

            settings.set_string (LocaleField.locale, locale);
            settings.set_string (LocaleField.loading, loading);
            settings.set_string (LocaleField.language, language);
            settings.set_string (LocaleField.towns, towns);
            settings.set_string (LocaleField.about, about);
            settings.set_string (LocaleField.quit, quit);
            settings.set_string (LocaleField.ok, ok);
            settings.set_string (LocaleField.cancel, cancel);
            settings.set_string (LocaleField.close, close);
            settings.set_string (LocaleField.choose_lang, choose_lang);
            settings.set_string (LocaleField.yes_rem, yes_rem);
            settings.set_string (LocaleField.no_rem, no_rem);
            settings.set_string (LocaleField.choose_cities, choose_cities);
            settings.set_string (LocaleField.bad_inet, bad_inet);
            settings.set_string (LocaleField.make_connect, make_connect);
            settings.set_string (LocaleField.exit_, exit_);
            settings.set_string (LocaleField.are_exit, are_exit);

            settings.set_string (LocaleField.group, group);
            settings.set_string (LocaleField.period, period);
            settings.set_string (LocaleField.row, row);
            settings.set_string (LocaleField.lanthanides, lanthanides);
            settings.set_string (LocaleField.actinides, actinides);
            settings.set_string (LocaleField.halogens, halogens);
            settings.set_string (LocaleField.noble_gases, noble_gases);
            settings.set_string (LocaleField.non_metal, non_metal);
            settings.set_string (LocaleField.alkali_metals, alkali_metals);
            settings.set_string (LocaleField.alkaline_earth_metals, alkaline_earth_metals);
            settings.set_string (LocaleField.transition_metals, transition_metals);
            settings.set_string (LocaleField.post_transition_metals, post_transition_metals);
            settings.set_string (LocaleField.semimetals, semimetals);
            settings.set_string (LocaleField.short_name, short_name);
            settings.set_string (LocaleField.extended, extended);
            settings.set_string (LocaleField.circle, circle);
            settings.set_string (LocaleField.piramid, piramid);
            settings.set_string (LocaleField.adomah_vertical, adomah_vertical);
            settings.set_string (LocaleField.adomah_horizontal, adomah_horizontal);
            settings.set_string (LocaleField.short_table, short_table);
            settings.set_string (LocaleField.extended_table, extended_table);
            settings.set_string (LocaleField.circle_table, circle_table);
            settings.set_string (LocaleField.piramid_table, piramid_table);
            settings.set_string (LocaleField.adomah_table, adomah_table);
        }

    }
}
