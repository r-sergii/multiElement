namespace Multielement {
//	[GtkTemplate (ui = "/io/github/r_sergii/multiClock/windows/language_window/language_window.ui")]
	[GtkTemplate (ui = "/ua/inf/multiapps/multiElement/windows/language_window/language_window.ui")]
	public class LanguageWindow : Adw.PreferencesWindow {
        [GtkChild]
        unowned Gtk.Button button_ok;
        [GtkChild]
        unowned Gtk.Button button_cancel;
        [GtkChild]
        unowned Adw.ToastOverlay overlay;
        [GtkChild]
        unowned Gtk.ComboBoxText comboLang;
        [GtkChild]
        unowned Adw.ButtonContent adw_button_ok;
        [GtkChild]
        unowned Adw.ButtonContent adw_button_cancel;
        [GtkChild]
        unowned Adw.WindowTitle adw_title;

        private Multielement.MainWindow _parent;

		public LanguageWindow (Multielement.MainWindow __parent)
		{
			Object ();//application: app);
            button_ok.clicked.connect(on_ok);
            button_cancel.clicked.connect(on_cancel);

            _parent = __parent;

		    init ();

		    var app = GLib.Application.get_default();
//            var theme = (app as Multiclock.Application).theme;
            var locale = (app as Multielement.Application).settingsService.locale;

            adw_button_ok.label = locale.ok;
            adw_button_ok.tooltip_text = locale.yes_rem;
            adw_button_cancel.label = locale.cancel;
            adw_button_cancel.tooltip_text = locale.no_rem;
            adw_title.title = locale.choose_lang;

		}

        private void init() {
            comboLang.append_text("EN English language");
            comboLang.append_text("DE Deutsch sprache");
            comboLang.append_text("ES Español idioma");
            comboLang.append_text("FR Français langue");
            comboLang.append_text("IT Italiano Lingua");
            comboLang.append_text("PL Polski Język");
            comboLang.append_text("PT Português Língua");
            comboLang.append_text("BG Български език");
            comboLang.append_text("UA Українська мова");
            comboLang.append_text("RU Русский язык");
            comboLang.set_active(0);
        }

        private void on_ok() {
            GLib.Array<string> arrLang = new GLib.Array<string> ();
            arrLang.append_val ("EN");
            arrLang.append_val ("DE");
            arrLang.append_val ("ES");
            arrLang.append_val ("FR");
            arrLang.append_val ("IT");
            arrLang.append_val ("PL");
            arrLang.append_val ("PT");
            arrLang.append_val ("BG");
            arrLang.append_val ("UK");
            arrLang.append_val ("RU");
            // not work
//            Gtk.StringList listLang = new Gtk.StringList(["EN","DE","ES","FR","IT","PL","PT","BG","UA","RU"]);

            var app = GLib.Application.get_default();
            var settingsService = (app as Multielement.Application).settingsService;

            //this.close ();
            Multielement.TranslatorService translateService = new TranslatorService ();
//            message (arrLang.index(comboLang.get_active()));
            if(comboLang.get_active() == 0) {
                translateService.reinitModel ( settingsService.locale );
            }
            else {
                translateService.getDataItems(arrLang.index(comboLang.get_active()));
//                settingsService.locale.locale = arrLang.index(comboLang.get_active());
                translateService.fillModel( settingsService.locale, arrLang.index(comboLang.get_active()) );
            }

            //settingsService.locale.toSettings (settingsService.settings);
            settingsService.writeLocale ();

            _parent.init_menu ();
            this.close ();
        }

        private void on_cancel (){
            this.close ();
        }

        private void set_toast (string str){
            var toast = new Adw.Toast (str);
            toast.set_timeout (3);
            overlay.add_toast (toast);
        }

//        private void alert (string heading, string body){
  //          var dialog_alert = new Adw.AlertDialog(heading, body);
    //        if (body != "") {
      //          dialog_alert.set_body(body);
//            }
  //          dialog_alert.add_response("ok", _("_OK"));
    //        dialog_alert.set_response_appearance("ok", SUGGESTED);
      //      dialog_alert.response.connect((_) => { dialog_alert.close(); });
        //    dialog_alert.present(this);
//        }
	}
}
