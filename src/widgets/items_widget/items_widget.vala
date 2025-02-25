using Gtk;
using GLib;
using Gdk;
using MyLib;

namespace Multielement {

    public enum ItemView {Small, Normal, Large}

    const string LIGHTGREY = "cNemetal";
    const string DARKGREY = "cNemetalDark";

    public class PeriodItem : Gtk.Frame {

        private string Text;

        public PeriodItem(string _Text) {
            Text = _Text;
            Label lName = new Gtk.Label (Text);      //14000

	        lName.set_markup("<span size='12000'>" + Text + "</span>");
	        lName.set_justify(Justification.CENTER);
	        this.set_label((string)null);
	        this.set_child(lName);
        }
    }

    public class TitleItem  : Gtk.Frame {

        private string Text;

        public TitleItem (string _Text) {
            Text = _Text;
	        Gtk.Label lName = new Gtk.Label (Text);      //12000//10000

	        lName.set_markup("<span size='9000'>" + Text + "</span>");
	        lName.set_justify(Justification.CENTER);
	        this.set_label((string)null);
	        this.set_child(lName);
        }
    }

    public class ElementItem : Gtk.Button {

        private string Nomer;
	    private string Text;
	    private string Weight;

      public ElementItem (string _Nomer, string _Text, string _Weight, string gColor, MainWindow parent, ItemView iView = ItemView.Normal)
      {
	      Nomer = _Nomer;
	      Text = _Text;
	      Weight = _Weight;

//	      Gtk.Button frm = new Gtk.Button();

	      Label lNomer = new Gtk.Label (Nomer);
	      Label lName = new Gtk.Label (Text);
	      Label lWeight = new Gtk.Label (Weight);

	      //VBox vBox = new VBox(false, 1);
          Gtk.Box vBox = new Gtk.Box (Gtk.Orientation.VERTICAL, 1);

	      vBox.set_homogeneous (false);
	      if((iView == ItemView.Normal) || (iView == ItemView.Large))
          {
	          lNomer.set_markup ("<span size='6000'>" + Nomer + "</span>");
	          lNomer.set_justify (Justification.RIGHT);
	          lNomer.remove_css_class(multiElement.Resourse.cDefault);
	          lNomer.add_css_class(gColor);

			        //this
	          vBox.append (lNomer);
          }

	      lName.set_markup ("<span size='12000'>" + Text + "</span>");
	      lName.set_justify (Justification.LEFT);
          lName.set_use_markup(true);
          lName.remove_css_class(multiElement.Resourse.cDefault);
          lName.add_css_class(gColor);

			    //this
	      vBox.append (lName);

          if(iView == ItemView.Large)
          {
	          lWeight.set_markup ("<span size='8000'>" + Weight + "</span>");
	          lWeight.set_justify (Justification.LEFT);
              lWeight.set_use_markup(true);
              lWeight.remove_css_class(multiElement.Resourse.cDefault);
              lWeight.add_css_class(gColor);

			        //this
              vBox.append (lWeight);
          }
	      ConnectCall(Nomer, this, parent);
	      this.set_label ((string)null);
          this.set_child (vBox);

          this.remove_css_class(multiElement.Resourse.cDefault);
          this.add_css_class(gColor);

//	      return frm;
      }

      public void ConnectCall(string sNomer, Button eb, MainWindow parent)
      {
            int nomer = int.parse (sNomer);
            eb.clicked.connect(() => { parent.Call001(nomer); });
      }
    }


    public class ElementItem2 : Gtk.Button {

        private string Nomer;
	    private string Text;
	    private string Weight;
	    private CSSColor cssColor;
	    private Label lNomer;
	    private Label lName;
	    private Label lWeight;

      public ElementItem2 (string _Nomer, string _Text, string _Weight, CSSColor _cssColor, MainWindow parent, ItemView iView = ItemView.Normal)
      {
	      Nomer = _Nomer;
	      Text = _Text;
	      Weight = _Weight;
	      cssColor = _cssColor;

//	      Gtk.Button frm = new Gtk.Button();
/*
//          string dataCSS = ".light { background-color: #A0FFA0; } .dark { background-color: #009900; }";
//          string dataCSS = ".light { background-color: blue; } .dark { background-color: red; }";
//////          + "pink {background: pink;}; lightgrey {background: lightgrey;}; palegreen {background: green;}";
          var css_provider = new Gtk.CssProvider();
          css_provider.load_from_string(cssColor);
//            css_provider.load_from_resource("/ua/multiapps/multiElement/items_widget.css");
          Gtk.StyleContext.add_provider_for_display(Gdk.Display.get_default(),css_provider,Gtk.STYLE_PROVIDER_PRIORITY_USER);
*/
          //get current theme
//          var app = GLib.Application.get_default();
  //        var theme = (app as Multielement.Application).theme;

	      //Label
	      lNomer = new Gtk.Label (Nomer);
	      //Label
	      lName = new Gtk.Label (Text);
	      //Label
	      lWeight = new Gtk.Label (Weight);

	      //VBox vBox = new VBox(false, 1);
          Gtk.Box vBox = new Gtk.Box (Gtk.Orientation.VERTICAL, 1);

	      vBox.set_homogeneous (false);
	      if((iView == ItemView.Normal) || (iView == ItemView.Large))
          {
	          lNomer.set_markup ("<span size='6000'>" + Nomer + "</span>");
	          lNomer.set_justify (Justification.RIGHT);
	          lNomer.remove_css_class(multiElement.Resourse.cDefault);
	          lNomer.add_css_class(cssColor.light);
	//          lNomer.add_css_class("light");

			        //this
	          vBox.append (lNomer);
          }

	      lName.set_markup ("<span size='12000'>" + Text + "</span>");
	      lName.set_justify (Justification.LEFT);
          lName.set_use_markup(true);
          lName.remove_css_class(multiElement.Resourse.cDefault);
  //        lName.add_css_class(gColor);
          lName.add_css_class(cssColor.light);

			    //this
	      vBox.append (lName);

          if(iView == ItemView.Large)
          {
	          lWeight.set_markup ("<span size='8000'>" + Weight + "</span>");
	          lWeight.set_justify (Justification.LEFT);
              lWeight.set_use_markup(true);
              lWeight.remove_css_class(multiElement.Resourse.cDefault);
  //            lWeight.add_css_class(gColor);
              lWeight.add_css_class(cssColor.light);

			        //this
              vBox.append (lWeight);
          }
	      ConnectCall(Nomer, this, parent);
	      this.set_label ((string)null);
          this.set_child (vBox);

          this.remove_css_class(multiElement.Resourse.cDefault);
          this.add_css_class(cssColor.light);

          changeTheme ();
//	      return frm;
      }

      public void changeTheme() {
          //get current theme
          var app = GLib.Application.get_default();
          var theme = (app as Multielement.Application).theme;
          var info = (app as Multielement.Application).info;

          if((theme == Adw.ColorScheme.FORCE_LIGHT) || (theme == Adw.ColorScheme.PREFER_LIGHT)
                || ((theme == Adw.ColorScheme.DEFAULT) && (info.theme == true))
                ) {
                lName.remove_css_class(cssColor.dark);
                lName.add_css_class(cssColor.light);
                lNomer.remove_css_class(cssColor.dark);
	            lNomer.add_css_class(cssColor.light);
                lWeight.remove_css_class(cssColor.dark);
	            lWeight.add_css_class(cssColor.light);
                this.remove_css_class(cssColor.dark);
                this.add_css_class(cssColor.light);
          } else {
                lName.remove_css_class(cssColor.light);
                lName.add_css_class(cssColor.dark);
                lNomer.remove_css_class(cssColor.light);
                lNomer.add_css_class(cssColor.dark);
                lWeight.remove_css_class(cssColor.light);
                lWeight.add_css_class(cssColor.dark);
                this.remove_css_class(cssColor.light);
                this.add_css_class(cssColor.dark);
          }
      }

      public void ConnectCall(string sNomer, Button eb, MainWindow parent)
      {
            int nomer = int.parse (sNomer);
            eb.clicked.connect(() => { parent.Call001(nomer); });
      }
    }

    public class OHItem : Gtk.Frame {

        private string Text;

        public OHItem (string _TextR, string _ValR, string _Text, string _Val)
        {
	      Text = _TextR;
	      //Frame frm = new Gtk.Frame("");
	      Label lName = new Gtk.Label (Text);      //16000//12000

	      lName.set_markup ("<span size='10000'>" + _TextR + "</span>" + "<span size='8000'>" + _ValR + "</span>"
				         + "<span size='10000'>" + _Text + "</span>" + "<span size='8000'>" + _Val + "</span>");
	      lName.set_justify (Justification.CENTER);
	      this.set_label((string)null);
	      this.set_child(lName);

//	      return frm;

        }
    }

    public class PropertiesItem : Gtk.Frame {

        private string Text;

        public PropertiesItem (string _Text, string gColor)
        {
//          Text = TextOperation.TextTrim(_Text, 15);

          Text = _Text;
	      //Frame frm = new Gtk.Frame("");
	      Label lName = new Gtk.Label (Text);      //16000//12000

	      Gtk.Box vBox = new Gtk.Box (Gtk.Orientation.VERTICAL, 1);

	      lName.set_markup ("<span size='9000'>" + Text + "</span>");
	      lName.set_justify (Justification.LEFT);
          lName.add_css_class(gColor);
	      //this
	      vBox.append(lName);

	      this.set_label((string)null);
          this.set_child(vBox);

//	      return frm;
      }

    }

    public class PropertiesItem2 : Gtk.Frame {

        private string Text;
	    private CSSColor cssColor;
        private Gtk.Label lName;      //16000//12000


        public PropertiesItem2 (string _Text, CSSColor _cssColor)
        {
//          Text = TextOperation.TextTrim(_Text, 15);

          Text = _Text;
          cssColor = _cssColor;

	      //Frame frm = new Gtk.Frame("");
	      //Label
	      lName = new Gtk.Label (Text);      //16000//12000

	      Gtk.Box vBox = new Gtk.Box (Gtk.Orientation.VERTICAL, 1);

	      lName.set_markup ("<span size='9000'>" + Text + "</span>");
	      lName.set_justify (Justification.LEFT);
          lName.add_css_class(cssColor.light);
	      //this
	      vBox.append(lName);

	      this.set_label((string)null);
          this.set_child(vBox);

          changeTheme ();
//	      return frm;
      }

      public void changeTheme() {
          //get current theme
          var app = GLib.Application.get_default();
          var theme = (app as Multielement.Application).theme;

          if((theme == Adw.ColorScheme.FORCE_LIGHT) || (theme == Adw.ColorScheme.PREFER_LIGHT)
                || (theme == Adw.ColorScheme.DEFAULT)) {
                lName.remove_css_class(cssColor.dark);
                lName.add_css_class(cssColor.light);
                this.remove_css_class(cssColor.dark);
                this.add_css_class(cssColor.light);
          } else {
                lName.remove_css_class(cssColor.light);
                lName.add_css_class(cssColor.dark);
                this.remove_css_class(cssColor.light);
                this.add_css_class(cssColor.dark);
          }
      }
    }


    class ItemWidgets
    {

      public Gtk.Frame PeriodItem (string _Text)//, bool homogeneous, int spacing)
      {
	      string Text = _Text;
	      Frame frm = new Gtk.Frame("");
	      Label lName = new Gtk.Label (Text);      //14000

	      lName.set_markup("<span size='12000'>" + Text + "</span>");
	      lName.set_justify(Justification.CENTER);
//	      lName.modify_bg(StateType.NORMAL, multiElement.Resourse.GREEN);
    //	  frm.pack_start (lName, false, false, 1);
	      frm.set_label((string)null);
	      frm.set_child(lName);

    //	  frm.show_all ();

	      return frm;
	      //			Frame frm = new Frame();
	      //			this.Add(frm);
      }

      public Gtk.Frame TitleItem (string _Text)//, bool homogeneous, int spacing) : base()//base(homogeneous, spacing)
      {
	      string Text = _Text;
	      Gtk.Frame frm = new Gtk.Frame("");
	      Gtk.Label lName = new Gtk.Label (Text);      //12000//10000

	      lName.set_markup("<span size='9000'>" + Text + "</span>");
	      //lName.set_markup("<big>\u2654\u2655</big>");
	      lName.set_justify(Justification.CENTER);
//	      lName.modify_bg(StateType.NORMAL, multiElement.Resourse.GREEN);
	      //this.PackStart (lName, false, false, 1);
	      frm.set_label((string)null);
	      frm.set_child(lName);

    //	this.ShowAll ();

	      return frm;
    //			Frame frm = new Frame();
    //			this.Add(frm);
      }

//      public static Gtk.Frame ElementItem (string _Nomer, string _Text, string _Weight, Gdk.Color gColor, FormMain parent)// : base()//base(homogeneous, spacing)
      public Gtk.Button ElementItem (string _Nomer, string _Text, string _Weight, string gColor, MainWindow parent)// : base()//base(homogeneous, spacing)
      {
	      string Nomer = _Nomer;
	      string Text = _Text;
	      string Weight = _Weight;

//          Gtk.CssProvider css_provider = new Gtk.CssProvider();
//          css_provider.load_from_resource("/ua/inf/multiapps/multiElement/color.css");

//          Gtk.StyleContext.add_provider_for_display(Gdk.Display.get_default(), parent.get_provider(), Gtk.STYLE_PROVIDER_PRIORITY_USER);

////////	      Gdk.Color color = ColorOperation.makeColor(0xD2D2,0xD2D2,0xD2D2);
//
//          string dataCSS = "green {background: green;}; purple {background: purple;}; "
  //          + "pink {background: pink;}; lightgrey {background: lightgrey;}; palegreen {background: green;}";
    //      Gtk.CssProvider css_provider = new Gtk.CssProvider();
//          css_provider.load_from_string(dataCSS);
      //    css_provider.load_from_resource("/ua/inf/multiapps/multiElement/color.css");
//          lNomer.set_use_markup(true);
  //        lNomer.remove_css_class("pink");
    //      lNomer.add_css_class("palegreen");

//	      Gtk.Frame frm = new Gtk.Frame("");
	      Gtk.Button frm = new Gtk.Button();

	      Label lNomer = new Gtk.Label (Nomer);
	      Label lName = new Gtk.Label (Text);
	      Label lWeight = new Gtk.Label (Weight);

	      //VBox vBox = new VBox(false, 1);
          Gtk.Box vBox = new Gtk.Box (Gtk.Orientation.VERTICAL, 1);

     //     vBox.add_css_class(multiElement.Resourse.cDefault);
///////	      vBox.modify_bg(Gtk.StateType.NORMAL, color);
	      vBox.set_homogeneous (false);
	      lNomer.set_markup ("<span size='6000'>" + Nomer + "</span>");
	      lNomer.set_justify (Justification.RIGHT);
	      lNomer.remove_css_class(multiElement.Resourse.cDefault);
	      lNomer.add_css_class(gColor);

/////////	      lNomer.modify_bg(StateType.NORMAL, gColor);
			    //this
//	      vBox.pack_start (lNomer, false, false, 1);
	      vBox.append (lNomer);

	      lName.set_markup ("<span size='12000'>" + Text + "</span>");
	      lName.set_justify (Justification.LEFT);
/////////	      lName.modify_base(Gtk.StateType.NORMAL, gColor);
          lName.set_use_markup(true);
          lName.remove_css_class(multiElement.Resourse.cDefault);
          lName.add_css_class(gColor);

			    //this
//	      vBox.pack_start (lName, false, false, 1);
	      vBox.append (lName);

	      lWeight.set_markup ("<span size='8000'>" + Weight + "</span>");
	      lWeight.set_justify (Justification.LEFT);
          lWeight.set_use_markup(true);
          lWeight.remove_css_class(multiElement.Resourse.cDefault);
          lWeight.add_css_class(gColor);

			    //this
//	      vBox.pack_start (lWeight, false, false, 1);
          vBox.append (lWeight);

//	      EventBox button = new EventBox();
//          var button = Gdk.ButtonEvent();
//	      button.modify_bg(Gtk.StateType.NORMAL, gColor);
//	      button.modify_bg(Gtk.StateType.ACTIVE, gColor);
//	      button.modify_bg(Gtk.StateType.SELECTED, gColor);
//	      button.add(vBox);
	      ConnectCall(Nomer, frm, parent);
	      frm.set_label ((string)null);
//	      frm.add(button);
          frm.set_child (vBox);

//////	      frm.show_all ();

///////	      color = ColorOperation.makeColor(0x0000,0x0000,0x0000);

/////	      lNomer.modify_fg(Gtk.StateType.NORMAL, color);
/////	      lName.modify_fg(Gtk.StateType.NORMAL, color);
/////	      lWeight.modify_fg(Gtk.StateType.NORMAL, color);

////	      lNomer.modify_fg(Gtk.StateType.SELECTED, gColor);//new Gdk.Color(0,0,0));//color);
////	      lName.modify_fg(Gtk.StateType.SELECTED, gColor);//new Gdk.Color(0,0,0));//color);
////	      lWeight.modify_fg(Gtk.StateType.SELECTED, gColor);//new Gdk.Color(0,0,0));//color);

////	      lNomer.modify_fg(Gtk.StateType.ACTIVE, gColor);//new Gdk.Color(0,0,0));//color);
////	      lName.modify_fg(Gtk.StateType.ACTIVE, gColor);//new Gdk.Color(0,0,0));//color);
////	      lWeight.modify_fg(Gtk.StateType.ACTIVE, gColor);//new Gdk.Color(0,0,0));//color);

////	      frm.modify_bg(Gtk.StateType.NORMAL, color);
////	      frm.modify_bg(Gtk.StateType.SELECTED, gColor);
////	      frm.modify_bg(Gtk.StateType.ACTIVE, gColor);
          frm.remove_css_class(multiElement.Resourse.cDefault);
          frm.add_css_class(gColor);

	      return frm;
      }

      public void ConnectCall(string sNomer, Button eb, MainWindow parent)
      {
            eb.clicked.connect(() => { parent.Call001(int.parse(sNomer)); });
/*	      switch(sNomer)
	      {
	          case "1":
		          eb.button_press_event.connect(parent.Call001);
		          break;
	          case "2":
		          eb.button_press_event.connect(parent.Call002);
		          break;
	          case "3":
		          eb.button_press_event.connect(parent.Call003);
		          break;
	          case "4":
		          eb.button_press_event.connect(parent.Call004);
		          break;
	          case "5":
		          eb.button_press_event.connect(parent.Call005);
		          break;
	          case "6":
		          eb.button_press_event.connect(parent.Call006);
		          break;
	          case "7":
		          eb.button_press_event.connect(parent.Call007);
		          break;
	          case "8":
		          eb.button_press_event.connect(parent.Call008);
		          break;
	          case "9":
		          eb.button_press_event.connect(parent.Call009);
		          break;
	          case "10":
		          eb.button_press_event.connect(parent.Call010);
		          break;
	          case "11":
		          eb.button_press_event.connect(parent.Call011);
		          break;
	          case "12":
		          eb.button_press_event.connect(parent.Call012);
		          break;
	          case "13":
		          eb.button_press_event.connect(parent.Call013);
		          break;
	          case "14":
		          eb.button_press_event.connect(parent.Call014);
		          break;
	          case "15":
		          eb.button_press_event.connect(parent.Call015);
		          break;
	          case "16":
		          eb.button_press_event.connect(parent.Call016);
		          break;
	          case "17":
		          eb.button_press_event.connect(parent.Call017);
		          break;
	          case "18":
		          eb.button_press_event.connect(parent.Call018);
		          break;
	          case "19":
		          eb.button_press_event.connect(parent.Call019);
		          break;
	          case "20":
	          default:
		          eb.button_press_event.connect(parent.Call020);
		          break;
	      }
	      */
      }

      public Gtk.Frame OHItem (string _TextR, string _ValR, string _Text, string _Val)// : base()//base(homogeneous, spacing)
      {
	      string Text = _TextR;
	      Frame frm = new Gtk.Frame("");
	      Label lName = new Gtk.Label (Text);      //16000//12000

	      lName.set_markup ("<span size='10000'>" + _TextR + "</span>" + "<span size='8000'>" + _ValR + "</span>"
				         + "<span size='10000'>" + _Text + "</span>" + "<span size='8000'>" + _Val + "</span>");
	      lName.set_justify (Justification.CENTER);
///////	      lName.modify_bg(StateType.NORMAL, multiElement.Resourse.GREEN);
	      frm.set_label((string)null);
//	      frm.add(lName);
	      frm.set_child(lName);

	      return frm;

      }

      public Gtk.Frame PropertiesItem (string _Text, string gColor)// : base()//base(homogeneous, spacing)
      {
//	      Gdk.Color color = Gdk.Color();
	//      color = gColor;

	      string Text = _Text;
	      Frame frm = new Gtk.Frame("");
	      Label lName = new Gtk.Label (Text);      //16000//12000

//	      VBox vBox = new VBox(false, 1);//homogeneous, spacing);
	      Gtk.Box vBox = new Gtk.Box (Gtk.Orientation.VERTICAL, 1);
///	      vBox.modify_bg(Gtk.StateType.NORMAL,  ColorOperation.makeColor(0xD2D2,0xD2D2,0xD2D2) );

	      lName.set_markup ("<span size='9000'>" + Text + "</span>");
	      lName.set_justify (Justification.LEFT);
///	      lName.modify_base(Gtk.StateType.NORMAL, color);
          lName.add_css_class(gColor);
	      //this
//	      vBox.pack_start (lName, false, false, 1);
	      vBox.append(lName);

    //////////	  Button button = new Button();
//	      EventBox button = new EventBox();
//	      button.modify_bg(Gtk.StateType.NORMAL, color);
//	      button.modify_bg(Gtk.StateType.ACTIVE, color);
//	      button.modify_bg(Gtk.StateType.SELECTED, color);
//	      button.add(vBox);
	      frm.set_label((string)null);
//	      frm.add(button);
          frm.set_child(vBox);

//	      lName.modify_fg(Gtk.StateType.NORMAL, ColorOperation.makeColor(0x0000,0x0000,0x0000) );//color);
//	      lName.modify_fg(Gtk.StateType.SELECTED, color);//new Gdk.Color(0,0,0));//color);
//	      lName.modify_fg(Gtk.StateType.ACTIVE, color);//new Gdk.Color(0,0,0));//color);

//	      frm.modify_bg(Gtk.StateType.NORMAL, ColorOperation.makeColor(0x0000,0x0000,0x0000) );//color);
//	      frm.modify_bg(Gtk.StateType.SELECTED, color);
//	      frm.modify_bg(Gtk.StateType.ACTIVE, color);
	      return frm;
      }

  }
}
