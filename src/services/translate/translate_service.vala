namespace Multielement {

    public class TranslatorService {

        private LocaleModel __currentLocale;
        public Gee.ArrayList<ResultTranslatorModel> listTranslator;

        public TranslatorService() {
            __currentLocale = new LocaleModel();
            listTranslator = new Gee.ArrayList<ResultTranslatorModel> ();
        }

        public Multielement.LocaleModel currentLocale {
            get {
                return __currentLocale;
            }
        }

        public void getDataItems (string local) {
            listTranslator.clear ();
            var temp = new LocaleModel();
            temp.for_translate ();
            var translateModel = new TranslatorModel(local);
            translateModel.words = temp.loading + ";" + temp.language + ";" + temp.towns + ";"
                + temp.about + ";" + temp.quit + ";" + temp.ok + ";" + temp.cancel + ";"
                + temp.close + ";" + temp.choose_lang + ";" + temp.yes_rem + ";" + temp.no_rem + ";"
                + temp.choose_cities + ";" + temp.bad_inet + ";" + temp.exit_ + ";"
                + temp.make_connect + ";" + temp.are_exit

                + ";" + temp.group + ";" + temp.period + ";" + temp.row
                + ";" + temp.lanthanides + ";" + temp.actinides
                + ";" + temp.halogens + ";" + temp.noble_gases
                + ";" + temp.adomah_horizontal
                + ";" + temp.non_metal + ";" + temp.alkali_metals
                + ";" + temp.alkaline_earth_metals + ";" + temp.transition_metals
                + ";" + temp.post_transition_metals + ";" + temp.semimetals
                + ";" + temp.short_name + ";" + temp.extended + ";" + temp.circle + ";" + temp.piramid
                + ";" + temp.adomah_vertical //+ ";" + temp.adomah_horizontal
                + ";" + temp.short_table + ";" + temp.extended_table + ";" + temp.circle_table
                + ";" + temp.piramid_table + ";" + temp.adomah_table;

//            message (translateModel.lang);
            message (translateModel.words);
            var translateProvider = new TranslatorProvider ();
            translateProvider.getItems ( translateModel, listTranslator );
            //_currentLocale.locale = translateModel.lang;

//            message (listTranslator.size.to_string ());
        }

        public void reinitModel (LocaleModel _currentLocale) {
            _currentLocale.reinit ();
        }

        public void fillModel (LocaleModel _currentLocale, string local) {
            _currentLocale.locale = local;
//            message (_currentLocale.locale);

            for(int i = 0;i<listTranslator.size;i++) {
                message(listTranslator[i].translation);
                switch (listTranslator[i].original)
                {
                    case "Loading...":
                        _currentLocale.loading = listTranslator[i].translation;
                        break;
                    case "Language":
                        _currentLocale.language = listTranslator[i].translation;
                        break;
                    case "Towns":
                        _currentLocale.towns = listTranslator[i].translation;
                        break;
                    case "About":
                        _currentLocale.about = listTranslator[i].translation;
                        break;
                    case "Quit":
                        _currentLocale.quit = listTranslator[i].translation;
                        break;
                    case "Ok":
                        _currentLocale.ok = listTranslator[i].translation;
                        break;
                    case "Cancel":
                        _currentLocale.cancel = listTranslator[i].translation;
                        break;
                    case "Close":
                        _currentLocale.close = listTranslator[i].translation;
                        break;
                    case "Choose language for application":
                        _currentLocale.choose_lang = listTranslator[i].translation;
                        break;
                    case "Apply your selection":
                        _currentLocale.yes_rem = listTranslator[i].translation;
                        break;
                    case "Undo changes":
                        _currentLocale.no_rem = listTranslator[i].translation;
                        break;
                    case "Choose cities to show":
                        _currentLocale.choose_cities = listTranslator[i].translation;
                        break;
                    case "No access to the internet":
                        _currentLocale.bad_inet = listTranslator[i].translation;
                        break;
                    case "Make the connection and try again":
                        _currentLocale.make_connect = listTranslator[i].translation;
                        break;
                    case "Exit?":
                        _currentLocale.exit_ = listTranslator[i].translation;
                        break;
                    case "Are you sure you want to exit?":
                        _currentLocale.are_exit = listTranslator[i].translation;
                        break;
                    case "Group":
                        _currentLocale.group = listTranslator[i].translation;
                        break;
                    case "Period":
                        _currentLocale.period = listTranslator[i].translation;
                        break;
                    case "Row":
                        _currentLocale.row = listTranslator[i].translation;
                        break;
                    case "Lanthanides":
                        _currentLocale.lanthanides = listTranslator[i].translation;
                        break;
                    case "Actinides":
                        _currentLocale.actinides = listTranslator[i].translation;
                        break;
                    case "Halogens":
                        _currentLocale.halogens = listTranslator[i].translation;
                        break;
                    case "Noble gases":
                        _currentLocale.noble_gases = listTranslator[i].translation;
                        break;
                    case "Non metal":
                        _currentLocale.non_metal = listTranslator[i].translation;
                        break;
                    case "Alkali metals":
                        _currentLocale.alkali_metals = listTranslator[i].translation;
                        break;
                    case "Alkaline earth metals":
                        _currentLocale.alkaline_earth_metals = listTranslator[i].translation;
                        break;
                    case "Transition metals":
                        _currentLocale.transition_metals = listTranslator[i].translation;
                        break;
                    case "Post-transition metals":
                        _currentLocale.post_transition_metals = listTranslator[i].translation;
                        break;
                    case "Semimetals":
                        _currentLocale.semimetals = listTranslator[i].translation;
                        break;
                    case "Short":
                        _currentLocale.short_name = listTranslator[i].translation;
                        break;
                    case "Extended":
                        _currentLocale.extended = listTranslator[i].translation;
                        break;
                    case "Circle":
                        _currentLocale.circle = listTranslator[i].translation;
                        break;
                    case "Piramid":
                        _currentLocale.piramid = listTranslator[i].translation;
                        break;
                    case "Adomah Vertical":
                        _currentLocale.adomah_vertical = listTranslator[i].translation;
                        break;
                    case "Adomah Horizontal":
                        _currentLocale.adomah_horizontal = listTranslator[i].translation;
                        break;
                    case "short table":
                        _currentLocale.short_table = listTranslator[i].translation;
                        break;
                    case "extended table":
                        _currentLocale.extended_table = listTranslator[i].translation;
                        break;
                    case "circle table":
                        _currentLocale.circle_table = listTranslator[i].translation;
                        break;
                    case "piramid table":
                        _currentLocale.piramid_table = listTranslator[i].translation;
                        break;
                    case "adomah table":
                        _currentLocale.adomah_table = listTranslator[i].translation;
                        break;
                    default:
                        break;
                }
            }
            //listTranslator.foreach ((e) => {  });
        }
    }
}
