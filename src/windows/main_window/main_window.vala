/* window.vala
 *
 * Copyright 2024 Serhii Rudchenko
 *
 */

namespace Multielement {

    public class MainWindow : Adw.ApplicationWindow {

        private Gtk.CssProvider css_provider;

    	private Gtk.ListBox list_box;
    	private Gtk.Notebook nb;
    	private ShortWidget shortWidget;
        private ExtendedWidget extendedWidget;

    	private MyLib.ThemeSwitcher theme_switcher;

//        private Adw.Window window_adw;
        private Adw.ToastOverlay overlay;
        private Adw.NavigationSplitView split_view;

		public MainWindow (Adw.Application application) {
			Object (application: application, title: "multiElement",
			//height_request: 300, width_request: 600,
			//default_width: 860, default_height: 950);//480);
			default_width: 800, default_height: 600);//480);
//		    this.bind_property("default-width", this, "windowWidth", BindingFlags.DEFAULT | BindingFlags.SYNC_CREATE);
  //          this.bind_property("default-height", this, "windowHeight", BindingFlags.DEFAULT | BindingFlags.SYNC_CREATE);
    //        this.bind_property("maximized", this, "isMaximized", BindingFlags.DEFAULT | BindingFlags.SYNC_CREATE);
 	    }

        public void init_menu () {

        }

 	    construct{

//////          string dataCSS = "green {background: green;}; purple {background: purple;}; "
//////          + "pink {background: pink;}; lightgrey {background: lightgrey;}; palegreen {background: green;}";
            css_provider = new Gtk.CssProvider();
/////////   css_provider.load_from_string(dataCSS);
            css_provider.load_from_resource("/ua/inf/multiapps/multiElement/items_widget.css");
            Gtk.StyleContext.add_provider_for_display(Gdk.Display.get_default(),css_provider,Gtk.STYLE_PROVIDER_PRIORITY_USER);

            list_box = new Gtk.ListBox ();
            list_box.set_size_request (200, -1);
            list_box.vexpand = true;
            list_box.row_selected.connect(on_select_item);
            var scroll = new Gtk.ScrolledWindow () {
                propagate_natural_height = true,
                propagate_natural_width = true
            };
/*
            var shortN = new Gtk.Label("Short");
            var extendedN = new Gtk.Label("Extended");
            var circleN = new Gtk.Label("Circle");
            var piramidN = new Gtk.Label("Piramid");
            var adomahV = new Gtk.Label("Adomah Vertical");
            var adomahH = new Gtk.Label("Adomah Horizontal");
*/
            //Notebook
	        nb = new Gtk.Notebook();
	        nb.set_show_tabs(false);
//	        var shortWidget = new ShortWidget();
//	        nb.append_page(shortWidget.ShortWidget (this), null);
            shortWidget = new ShortWidget(this);
            nb.append_page( shortWidget, null);
//	        var extendedWidget = new ExtendedWidget();
//	        nb.append_page(extendedWidget.ExtendedWidget (this), null);
	        extendedWidget = new ExtendedWidget(this);
	        nb.append_page( extendedWidget, null);
	        var circleWidget = new CircleWidget();
	        nb.append_page(circleWidget.CircleWidget (this), null);
	        var piramidWidget = new PiramidWidget();
	        nb.append_page(piramidWidget.PiramidWidget (this), null);
	        var adomahVertWidget = new AdomahVertWidget();
	        nb.append_page(adomahVertWidget.AdomahVertWidget (this), null);
	        var adomahHorizWidget = new AdomahHorizWidget();
	        nb.append_page(adomahHorizWidget.AdomahHorizWidget (this), null);

            var shortRow = new Adw.ActionRow () {
                title = "Short",
                subtitle = "short table",
                icon_name = "short_periodic"
            };
            list_box.append (shortRow);

            var extendedRow = new Adw.ActionRow () {
                title = "Extended",
                subtitle = "extended table",
                icon_name = "extended_periodic"
            };
            list_box.append (extendedRow);

            var circleRow = new Adw.ActionRow () {
                title = "Circle",
                subtitle = "circle table",
                icon_name = "circle"
            };
            list_box.append (circleRow);

            var piramidRow = new Adw.ActionRow () {
                title = "Piramid",
                subtitle = "piramid table",
                icon_name = "piramid_source"
            };
            list_box.append (piramidRow);

            var adomahRow = new Adw.ActionRow () {
                title = "Adomah Vertical",
                subtitle = "adomah table",
                icon_name = "adomah_vert"
            };
            list_box.append (adomahRow);

            var adomahHorizRow = new Adw.ActionRow () {
                title = "Adomah Horizontal",
                subtitle = "adomah table",
                icon_name = "adomah_horiz"
            };
            list_box.append (adomahHorizRow);

            scroll.set_child(list_box);

 	        var menu_button = new Gtk.MenuButton();
            menu_button.set_icon_name ("open-menu-symbolic");
            menu_button.vexpand = false;

            var sidebar_headerbar = new Adw.HeaderBar();
//            sidebar_headerbar.pack_start(add_button);
//            sidebar_headerbar.pack_start(delete_button);
//            sidebar_headerbar.pack_start(search_button);

            var content_headerbar = new Adw.HeaderBar();
//            content_headerbar.add_
            content_headerbar.pack_end(menu_button);
//            content_headerbar.pack_end(save_as_button);
//            content_headerbar.pack_end(save_button);


            var about_action = new GLib.SimpleAction ("about", null);
            about_action.activate.connect (about);
            var quit_action = new GLib.SimpleAction ("quit", null);
            quit_action.activate.connect(()=>{
                on_close_application();
            });
            var preferences_action = new GLib.SimpleAction ("preferences", null);
            preferences_action.activate.connect(()=>{
                on_preferences_application();
            });

            this.theme_switcher = new MyLib.ThemeSwitcher ();

            var app = GLib.Application.get_default();
            app.add_action(preferences_action);
            app.add_action(about_action);
            app.add_action(quit_action);
            var menu = new GLib.Menu();
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            var item_theme = new GLib.MenuItem (_("custom"), null);//"app.set_app_theme");
            item_theme.set_attribute ("custom", "s", "theme");
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//            var item_preferences = new GLib.MenuItem (_("Preferences"), "app.preferences");
            var item_language = new GLib.MenuItem (_("locale.language"), "app.language");
//            var item_towns = new GLib.MenuItem (_("locale.towns"), "app.towns");
            var item_about = new GLib.MenuItem (_("About multiElement"), "app.about");
            var item_quit = new GLib.MenuItem (_("Quit"), "app.quit");

            menu.append_item (item_theme);
//            menu.append_item (item_preferences);
            menu.append_item (item_language);
//            menu.append_item (item_towns);
            menu.append_item (item_about);
            menu.append_item (item_quit);

            var popover = new Gtk.PopoverMenu.from_model(menu);
            popover.add_child (this.theme_switcher, "theme");
            menu_button.set_popover(popover);

            var box = new Gtk.Box(Gtk.Orientation.VERTICAL, 5);

            box.append(scroll);

            var sidebar_toolbar = new Adw.ToolbarView();
            sidebar_toolbar.set_top_bar_style(Adw.ToolbarStyle.RAISED);
            sidebar_toolbar.add_top_bar(sidebar_headerbar);
            sidebar_toolbar.set_content(box);

            var content_toolbar = new Adw.ToolbarView();
            content_toolbar.set_top_bar_style(Adw.ToolbarStyle.RAISED);
            content_toolbar.add_top_bar(content_headerbar);
//            content_toolbar.set_content(scroll_for_text);
            content_toolbar.set_content(nb);

            var sidebar = new Adw.NavigationPage(sidebar_toolbar, "multiElement");
            var content = new Adw.NavigationPage(content_toolbar, "");

            split_view = new Adw.NavigationSplitView();
            split_view.set_sidebar(sidebar);
            split_view.set_content(content);

            overlay = new Adw.ToastOverlay();
            overlay.set_child(split_view);

            set_content(overlay);

            var breakpoint = new Adw.Breakpoint(new Adw.BreakpointCondition.length(Adw.BreakpointConditionLengthType.MAX_WIDTH, 450, Adw.LengthUnit.SP));
            breakpoint.add_setter(split_view, "collapsed", true);

            breakpoint.apply.connect(()=>{
                split_view.set_show_content(false);
            });

            add_breakpoint(breakpoint);

            close_request.connect(on_close_application);
     	}

        private void on_preferences_application () {
            message ("app.preferences action activated");

            var settings = new Multielement.Settings ();
            settings.set_transient_for (this);
            settings.show ();
        }

     	private void about () {
            var win = new Adw.AboutWindow () {
                application_name = "multiElement",
                application_icon = "ua.inf.multiapps.multiElement",
                //application_icon = "circle",
                version = "0.1.0",
                copyright = "Copyright © 2025 Serhii Rudchenko",
//                license_type = License.GPL_3_0,
                developer_name = "Serhii Rudchenko",
                developers = {"Serhii Rudchenko email:sergej.rudchenko@gmail.com"},
                translator_credits = _("translator-credits"),
                website = "https://r-serega.github.io/mapps/",
                issue_url = "email:multiApps@i.ua"
            };
            win.set_transient_for (this);
            win.show ();
        }

        public bool on_close_application () {
            var app = GLib.Application.get_default();
            call_are_exit_dialog (app);
            //app.quit();
            return true;
        }

        private void call_save_changes_dialog () {
            var save_changes_dialog = new Adw.MessageDialog(this, _("Changes are not saved"), _("Save changes to the current note before exiting the program?"));
            save_changes_dialog.add_response("cancel", _("_Cancel"));
            save_changes_dialog.add_response("ok", _("_OK"));
            save_changes_dialog.set_default_response("ok");
            save_changes_dialog.set_close_response("cancel");
            save_changes_dialog.set_response_appearance("ok", SUGGESTED);
            save_changes_dialog.show();
            save_changes_dialog.response.connect((response) => {
                if (response == "ok") {
                    try {
                         //FileUtils.set_contents (file.get_path(), edit_text);
                         //app.quit();
                    } catch (Error e) {
                         stderr.printf ("Error: %s\n", e.message);
                    }
                }
                save_changes_dialog.close();
                //app.quit();
            });
        }

        private void call_are_exit_dialog (GLib.Application app) {
            var are_exit_dialog = new Adw.MessageDialog(this, _("Exit?"), _("Are you sure you want to exit?"));
            are_exit_dialog.add_response("cancel", _("_Cancel"));
            are_exit_dialog.add_response("ok", _("_Exit"));
            are_exit_dialog.set_default_response("ok");
            are_exit_dialog.set_close_response("cancel");
            are_exit_dialog.set_response_appearance("ok", SUGGESTED);
            are_exit_dialog.show();
            are_exit_dialog.response.connect((response) => {
                if (response == "ok") {
                    try {
                         app.quit();
                    } catch (Error e) {
                         stderr.printf ("Error: %s\n", e.message);
                    }
                }
                are_exit_dialog.close();
                //app.quit();
            });
        }

        private void on_select_item () {
            var list = new GLib.List<string>();
            list.append("Short");
            list.append("Extended");
            list.append("Circle");
            list.append("Piramid");
            list.append("Adomah Vertical");
            list.append("Adomah Horizontal");
//            ["Short", "Extended", "Circle", "Piramid", "Adomah Vertical", "Adomah Horizontal"];
            var selection = list_box.get_selected_row();
            if (!selection.is_selected()) {
                return;
            }

            GLib.Value value = "";
            selection.get_property("title", ref value);
            var item = value.get_string();
//            string text;

            split_view.set_show_content(true);
            split_view.get_content().set_title(item);

//            list.foreach((e) => {
  //              message(e);
    //            message(list.index(e).to_string());
      //          if(e == item) {
        //            nb.set_current_page (list.index(e));
          //      }
            //});
            //message (item);

            switch(item) {
                case "Short":
                    nb.set_current_page (0);
                    break;
                case "Extended":
                    nb.set_current_page (1);
                    break;
                case "Circle":
                    nb.set_current_page (2);
                    break;
                case "Piramid":
                    nb.set_current_page (3);
                    break;
                case "Adomah Vertical":
                    nb.set_current_page (4);
                    break;
                case "Adomah Horizontal":
                    nb.set_current_page (5);
                    break;
                default:
                    nb.set_current_page (0);
                    break;
            }
        }

        public Gtk.CssProvider get_provider() {
            return css_provider;
        }

        public bool Call001()
        {
            message("Click");
//	        MessageBox msg = new MessageBox(this, "001", "Внимание");
//	  FormWeb formWeb = new FormWeb(1);
//	  formWeb.show();
//	  call_html("gnome-open http://google.com/","");

//call_html("x-www-browser http://google.com/","");
	        return true;
        }

        void set_child_width (int value) {
            int page = nb.get_current_page();
            switch(page) {
                case 0:
                shortWidget.set_width (value);
                    break;
                case 1:
                shortWidget.set_width (value);
                    break;
                default:
                    break;
            }
        }

/////// Size determination
        public int windowHeight {
            get { return get_height(); }
            set {
                Idle.add(() => {
                    print(@"window height: $value\n");
                    return Source.REMOVE;
                });
            }
        }

        public int windowWidth {
            get { return get_width(); }
            set {
                Idle.add(() => {
                    print(@"window width: $value\n");
//                    message (nb.get_current_page().to_string ());
//                    set_child_width (value);
                    return Source.REMOVE;
                });
                //grid.set_size_request (get_width (), get_height ());
            }
        }

        public bool isMaximized {
            get { return maximized; }
            set {
                Idle.add(() => {
                    print(@"window maximized: $isMaximized; width: $(get_width())\n");
                    return Source.REMOVE;
                });
            }
        }

/////???

    }
}
