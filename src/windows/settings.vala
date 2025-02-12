using Gtk;

namespace Multielement {

//    public class Settings : Adw.PreferencesDialog {
    public class Settings : Adw.PreferencesWindow {

        private Stack stack;
        private Box box;
        private Adw.Clamp clamp_create_page;
        private Button back_button;
        private Adw.ToastOverlay overlay;

        private MyLib.ThemeSwitcher theme;

    	public Settings () {
			Object (//application: application, title: "multiElement",
			//height_request: 300, width_request: 600,
			default_width: 300, default_height: 300
			);//480);
 	    }

 	    construct{
 	        back_button = new Button();
            back_button.set_icon_name ("go-previous-symbolic");
            back_button.vexpand = false;
            back_button.clicked.connect(on_back_clicked);

            theme = new MyLib.ThemeSwitcher();

            clamp_create_page = new Adw.Clamp(){
                tightening_threshold = 100,
                valign = Gtk.Align.CENTER,
                margin_top = 15,
                margin_bottom = 15
            };
            clamp_create_page.set_child(theme);

            var headerbar = new Adw.HeaderBar();
            headerbar.add_css_class("flat");
            headerbar.pack_start(back_button);

            stack = new Gtk.Stack () {
                transition_duration = 600,
                transition_type = Gtk.StackTransitionType.SLIDE_LEFT_RIGHT,
            };

 	        box = new Box(Orientation.VERTICAL, 5);
            box.margin_top = 10;
//            box.append (search_box);
  //          box.append (current_label_box);
            box.append (stack);

            stack.add_child (clamp_create_page);
//            stack.add_child (vbox_list_page);
  //          stack.add_child (vbox_edit_page);
            stack.visible_child = clamp_create_page;

 	        overlay = new Adw.ToastOverlay();
            overlay.set_child(box);

            var main_box = new Box(Orientation.VERTICAL, 0);
            main_box.append(headerbar);
            main_box.append(overlay);
            set_content(main_box);
 	    }

 	    private void on_back_clicked() {
//            if(stack.visible_child == favorite_scroll){
  //              stack.visible_child = scroll;
    //            if(search_box.is_visible()){
      //              start_search_button.show();
        //        }
          //      set_buttons_on_list_stations();
//            }else{
  //              stack.visible_child = favorite_scroll;
    //            current_label_box.show();
      //          set_buttons_on_favorite_list_stations();
        //    }
            this.close();
        }
    }
}
