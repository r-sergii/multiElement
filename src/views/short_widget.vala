using Gtk;
using GLib;
//using Gdk;
using MyLib;

namespace Multielement {

    public class ShortWidget : Gtk.Box
    {
        public Gee.ArrayList<ElementItem2> listElementItems;
        public Gee.ArrayList<PropertiesItem2> listPropertiesItems;
        public ElementItem2 lantanElementItem;
        public ElementItem2 actanElementItem;

        public void set_width (int width) {
            message ("child short");
            message (width.to_string ());
        }

        public void changeTheme () {
            for(int i=0; i<listElementItems.size; i++) {
                listElementItems[i].changeTheme();
            }
            for(int j=0; j<listPropertiesItems.size; j++) {
                listPropertiesItems[j].changeTheme();
            }
            lantanElementItem.changeTheme();
            actanElementItem.changeTheme();
        }

      public void init (MainWindow parent)
      {
        listPropertiesItems = new Gee.ArrayList<PropertiesItem2> ();
      	listPropertiesItems.add (new PropertiesItem2(TextOperation.TextTrim("Halogens",15), multiElement.Resourse.cssGalogen));
	    listPropertiesItems.add (new PropertiesItem2(TextOperation.TextTrim("Noble gases",15), multiElement.Resourse.cssReal));
	    listPropertiesItems.add (new PropertiesItem2(TextOperation.TextTrim("Non metal",15), multiElement.Resourse.cssNemetal));
	    listPropertiesItems.add (new PropertiesItem2(TextOperation.TextTrim("Alkali metals",15), multiElement.Resourse.cssSheloch));
        listPropertiesItems.add (new PropertiesItem2(TextOperation.TextTrim("Alkaline earth metals",15), multiElement.Resourse.cssShelLand));
	    listPropertiesItems.add (new PropertiesItem2(TextOperation.TextTrim("Transition metals",15), multiElement.Resourse.cssMetal));
	    listPropertiesItems.add (new PropertiesItem2(TextOperation.TextTrim("Post-transition metals",15), multiElement.Resourse.cssPostmetal));
	    listPropertiesItems.add (new PropertiesItem2(TextOperation.TextTrim("Semimetals",15), multiElement.Resourse.cssPolimetal));

        listElementItems = new Gee.ArrayList<ElementItem2> ();
        listElementItems.add (new ElementItem2("1","H","1.0079", multiElement.Resourse.cssNemetal, parent, ItemView.Large));
        listElementItems.add (new ElementItem2("2","He","4.0026", multiElement.Resourse.cssReal, parent, ItemView.Large));

        listElementItems.add (new ElementItem2("3","Li","6.9412", multiElement.Resourse.cssSheloch, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("4","Be","9.0121", multiElement.Resourse.cssShelLand, parent, ItemView.Large));
        listElementItems.add (new ElementItem2("5","B","10.811", multiElement.Resourse.cssPolimetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("6","C","12.011", multiElement.Resourse.cssNemetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("7","N","14.007", multiElement.Resourse.cssNemetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("8","O","15.999", multiElement.Resourse.cssNemetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("9","F","18.998", multiElement.Resourse.cssGalogen, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("10","Ne","20.179", multiElement.Resourse.cssReal, parent, ItemView.Large));

	    listElementItems.add (new ElementItem2("11","Na","22.989", multiElement.Resourse.cssSheloch, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("12","Mg","24.305", multiElement.Resourse.cssShelLand, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("13","Al","26.982", multiElement.Resourse.cssPostmetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("14","Si","28.086", multiElement.Resourse.cssPolimetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("15","P","30.974", multiElement.Resourse.cssNemetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("16","S","32.066", multiElement.Resourse.cssNemetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("17","Cl","35.453", multiElement.Resourse.cssGalogen, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("18","Ar","39.948", multiElement.Resourse.cssReal, parent, ItemView.Large));

        listElementItems.add (new ElementItem2("19","K","39.098", multiElement.Resourse.cssSheloch, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("20","Ca","40.078", multiElement.Resourse.cssShelLand, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("21","Sc","44.956", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("22","Ti","47.88", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("23","V","50.942", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("24","Cr","51.996", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("25","Mn","54.938", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("26","Fe","55.847", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("27","Co","58.993", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("28","Ni","58.69", multiElement.Resourse.cssMetal, parent, ItemView.Large));

        listElementItems.add (new ElementItem2("29","Cu","63.546", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("30","Zn","65.39", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("31","Ga","69.723", multiElement.Resourse.cssPostmetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("32","Ge","72.59", multiElement.Resourse.cssPolimetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("33","As","74.922", multiElement.Resourse.cssPolimetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("34","Se","78.96", multiElement.Resourse.cssNemetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("35","Br","79.904", multiElement.Resourse.cssGalogen, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("36","Kr","83.80", multiElement.Resourse.cssReal, parent, ItemView.Large));

        listElementItems.add (new ElementItem2("37","Rb","85.468", multiElement.Resourse.cssSheloch, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("38","Sr","87.82", multiElement.Resourse.cssShelLand, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("39","Y","88.906", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("40","Zr","91.224", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("41","Nb","92.906", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("42","Mo","95.94", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("43","Tc","98.906", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("44","Ru","101.07", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("45","Rh","102.91", multiElement.Resourse.cssMetal, parent, ItemView.Large));
 	    listElementItems.add (new ElementItem2("46","Pd","106.42", multiElement.Resourse.cssMetal, parent, ItemView.Large));

	    listElementItems.add (new ElementItem2("47","Ag","107.87", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("48","Cd","112.41", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("49","In","114.82", multiElement.Resourse.cssPostmetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("50","Sn","118.71", multiElement.Resourse.cssPostmetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("51","Sb","121.75", multiElement.Resourse.cssPolimetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("52","Te","127.60", multiElement.Resourse.cssPolimetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("53","I","126.91", multiElement.Resourse.cssGalogen, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("54","Xe","131.29", multiElement.Resourse.cssReal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("55","Cs","132.91", multiElement.Resourse.cssSheloch, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("56","Ba","137.33", multiElement.Resourse.cssShelLand, parent, ItemView.Large));

	    listElementItems.add (new ElementItem2("57","La","138.90", multiElement.Resourse.cssLantan, parent, ItemView.Large));
	    lantanElementItem = new ElementItem2("57","La","138.90", multiElement.Resourse.cssLantan, parent, ItemView.Large);
        listElementItems.add (new ElementItem2("58","Ce","140.12", multiElement.Resourse.cssLantan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("59","Pr","140.91", multiElement.Resourse.cssLantan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("60","Nd","144.24", multiElement.Resourse.cssLantan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("61","Pm","[145]", multiElement.Resourse.cssLantan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("62","Sm","150.36", multiElement.Resourse.cssLantan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("63","Eu","151.96", multiElement.Resourse.cssLantan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("64","Gd","157.25", multiElement.Resourse.cssLantan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("65","Tb","158.93", multiElement.Resourse.cssLantan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("66","Dy","162.50", multiElement.Resourse.cssLantan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("67","Ho","164.93", multiElement.Resourse.cssLantan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("68","Er","167.26", multiElement.Resourse.cssLantan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("69","Tm","168.93", multiElement.Resourse.cssLantan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("70","Yb","173.61", multiElement.Resourse.cssLantan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("71","Lu","174.96", multiElement.Resourse.cssLantan, parent, ItemView.Large));

	    listElementItems.add (new ElementItem2("72","Hf","178.49", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("73","Ta","180.95", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("74","W","183.85", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("75","Re","185.21", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("76","Os","190.2", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("77","Ir","192.22", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("78","Pt","195.08", multiElement.Resourse.cssMetal, parent, ItemView.Large));

	    listElementItems.add (new ElementItem2("79","Au","196.97", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("80","Hg","200.59", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("81","Tl","204.38", multiElement.Resourse.cssPostmetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("82","Pb","207.2", multiElement.Resourse.cssPostmetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("83","Bi","208.98", multiElement.Resourse.cssPostmetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("84","Po","[209]", multiElement.Resourse.cssPolimetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("85","At","[210]", multiElement.Resourse.cssGalogen, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("86","Rn","[222]", multiElement.Resourse.cssReal, parent, ItemView.Large));

	    listElementItems.add (new ElementItem2("87","Fr","[223]", multiElement.Resourse.cssSheloch, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("88","Ra","226.02", multiElement.Resourse.cssShelLand, parent, ItemView.Large));

	    listElementItems.add (new ElementItem2("89","Ac","[227]", multiElement.Resourse.cssActan, parent, ItemView.Large));
        actanElementItem = new ElementItem2("89","Ac","[227]", multiElement.Resourse.cssActan, parent, ItemView.Large);
	    listElementItems.add (new ElementItem2("90","Th","223.04", multiElement.Resourse.cssActan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("91","Pa","[231]", multiElement.Resourse.cssActan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("92","U","238.02", multiElement.Resourse.cssActan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("93","Np","237.04", multiElement.Resourse.cssActan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("94","Pu","[244]", multiElement.Resourse.cssActan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("95","Am","[243]", multiElement.Resourse.cssActan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("96","Cm","[247]", multiElement.Resourse.cssActan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("97","Bk","[247]", multiElement.Resourse.cssActan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("98","Cf","[251]", multiElement.Resourse.cssActan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("99","Es","[252]", multiElement.Resourse.cssActan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("100","Fm","[257]", multiElement.Resourse.cssActan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("101","Md","[258]", multiElement.Resourse.cssActan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("102","No","259.1", multiElement.Resourse.cssActan, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("103","Lr","[266]", multiElement.Resourse.cssActan, parent, ItemView.Large));

	    listElementItems.add (new ElementItem2("104","Rf","[261]", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("105","Db","[268]", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("106","Sg","[271]", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("107","Bh","[267]", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("108","Hs","[269]", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("109","Mt","[276]", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("110","Ds","[281]", multiElement.Resourse.cssMetal, parent, ItemView.Large));

	    listElementItems.add (new ElementItem2("111","Rg","[281]", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("112","Cn","[285]", multiElement.Resourse.cssMetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("113","Nh","[284]", multiElement.Resourse.cssPostmetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("114","Fl","[289]", multiElement.Resourse.cssPostmetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("115","Mc","[288]", multiElement.Resourse.cssPostmetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("116","Lv","[293]", multiElement.Resourse.cssPostmetal, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("117","Ts","[294]", multiElement.Resourse.cssGalogen, parent, ItemView.Large));
	    listElementItems.add (new ElementItem2("118","Og","[294]", multiElement.Resourse.cssReal, parent, ItemView.Large));
      }

//      public Gtk.Box ShortWidget (MainWindow parent)
      public ShortWidget (MainWindow parent)
      {
          init(parent);

	      Gtk.Box mainBox = new Gtk.Box (Gtk.Orientation.VERTICAL, 1);//0

    //	  this.add (mainBox);

          var itemWidgets = new ItemWidgets();
	      Gtk.ScrolledWindow scroll = new Gtk.ScrolledWindow ();//null, null);
	      scroll.set_policy (Gtk.PolicyType.AUTOMATIC, Gtk.PolicyType.AUTOMATIC);
          scroll.set_vexpand(true);
          scroll.set_hexpand(true);
    //////////////////////
	      //Gtk.Table table = new Table ( 21, 12, false);
	      //table.set_col_spacings ( 2 );//1
	      //table.set_row_spacings ( 2 );//1

	      var grid = new Gtk.Grid() {
	            column_spacing = 2,
	            row_spacing = 2
	      };
	      grid.set_halign(Gtk.Align.FILL);

          grid.attach (new PeriodItem("Group"), 2, 0, 12, 1);
          grid.attach (new TitleItem("Period"), 0, 0, 1, 2);
	      grid.attach (new TitleItem("Row"), 1, 0, 1, 2);
	      grid.attach (new PeriodItem("I"), 2, 1, 1, 1);
	      grid.attach (new PeriodItem("II"), 3, 1, 1, 1);
	      grid.attach (new PeriodItem("III"), 4, 1, 1, 1);
	      grid.attach (new PeriodItem("IV"), 5, 1, 1, 1);
	      grid.attach (new PeriodItem("V"), 6, 1, 1, 1);
	      grid.attach (new PeriodItem("VI"), 7, 1, 1, 1);
	      grid.attach (new PeriodItem("VII"), 8, 1, 1, 1);
	      grid.attach (new PeriodItem("VIII"), 9, 1, 3, 1);

	      grid.attach (new PeriodItem("I"), 0, 2, 1, 1);
	      grid.attach (new PeriodItem("1"), 1, 2, 1, 1);
          grid.attach (listElementItems[0], 2, 2, 1, 1);
	      grid.attach (listElementItems[1], 9, 2, 1, 1);

	      grid.attach (new PeriodItem("II"), 0, 3, 1, 1);
	      grid.attach (new PeriodItem("2"), 1, 3, 1, 1);
	      grid.attach (listElementItems[2], 2, 3, 1, 1);
	      grid.attach (listElementItems[3], 3, 3, 1, 1);
	      grid.attach (listElementItems[4], 4, 3, 1, 1);
	      grid.attach (listElementItems[5], 5, 3, 1, 1);
	      grid.attach (listElementItems[6], 6, 3, 1, 1);
	      grid.attach (listElementItems[7], 7, 3, 1, 1);
	      grid.attach (listElementItems[8], 8, 3, 1, 1);
	      grid.attach (listElementItems[9], 9, 3, 1, 1);

	      grid.attach (new PeriodItem("III"), 0, 4, 1, 1);
	      grid.attach (new PeriodItem("3"), 1, 4, 1, 1);
	      grid.attach (listElementItems[10], 2, 4, 1, 1);
	      grid.attach (listElementItems[11], 3, 4, 1, 1);
	      grid.attach (listElementItems[12], 4, 4, 1, 1);
	      grid.attach (listElementItems[13], 5, 4, 1, 1);
	      grid.attach (listElementItems[14], 6, 4, 1, 1);
	      grid.attach (listElementItems[15], 7, 4, 1, 1);
	      grid.attach (listElementItems[16], 8, 4, 1, 1);
	      grid.attach (listElementItems[17], 9, 4, 1, 1);

	      grid.attach (new PeriodItem("IV"), 0, 5, 1, 2);
	      grid.attach (new PeriodItem("4"), 1, 5, 1, 1);
	      grid.attach (listElementItems[18], 2, 5, 1, 1);
	      grid.attach (listElementItems[19], 3, 5, 1, 1);
	      grid.attach (listElementItems[20], 4, 5, 1, 1);
	      grid.attach (listElementItems[21], 5, 5, 1, 1);
	      grid.attach (listElementItems[22], 6, 5, 1, 1);
	      grid.attach (listElementItems[23], 7, 5, 1, 1);
	      grid.attach (listElementItems[24], 8, 5, 1, 1);
	      grid.attach (listElementItems[25], 9, 5, 1, 1);
	      grid.attach (listElementItems[26], 10, 5, 1, 1);
	      grid.attach (listElementItems[27], 11, 5, 1, 1);

	      grid.attach (new PeriodItem("5"), 1, 6, 1, 1);
	      grid.attach (listElementItems[28], 2, 6, 1, 1);
	      grid.attach (listElementItems[29], 3, 6, 1, 1);
	      grid.attach (listElementItems[30], 4, 6, 1, 1);
	      grid.attach (listElementItems[31], 5, 6, 1, 1);
	      grid.attach (listElementItems[32], 6, 6, 1, 1);
	      grid.attach (listElementItems[33], 7, 6, 1, 1);
	      grid.attach (listElementItems[34], 8, 6, 1, 1);
	      grid.attach (listElementItems[35], 9, 6, 1, 1);

	      grid.attach (new PeriodItem("V"), 0, 7, 1, 2);
	      grid.attach (new PeriodItem("6"), 1, 7, 1, 1);
	      grid.attach (listElementItems[36], 2, 7, 1, 1);
	      grid.attach (listElementItems[37], 3, 7, 1, 1);
	      grid.attach (listElementItems[38], 4, 7, 1, 1);
	      grid.attach (listElementItems[39], 5, 7, 1, 1);
	      grid.attach (listElementItems[40], 6, 7, 1, 1);
	      grid.attach (listElementItems[41], 7, 7, 1, 1);
	      grid.attach (listElementItems[42], 8, 7, 1, 1);
	      grid.attach (listElementItems[43], 9, 7, 1, 1);
	      grid.attach (listElementItems[44], 10, 7, 1, 1);
 	      grid.attach (listElementItems[45], 11, 7, 1, 1);

	      grid.attach (new PeriodItem("7"), 1, 8, 1, 1);
	      grid.attach (listElementItems[46], 2, 8, 1, 1);
	      grid.attach (listElementItems[47], 3, 8, 1, 1);
	      grid.attach (listElementItems[48], 4, 8, 1, 1);
	      grid.attach (listElementItems[49], 5, 8, 1, 1);
	      grid.attach (listElementItems[50], 6, 8, 1, 1);
	      grid.attach (listElementItems[51], 7, 8, 1, 1);
	      grid.attach (listElementItems[52], 8, 8, 1, 1);
	      grid.attach (listElementItems[53], 9, 8, 1, 1);

	      grid.attach (new PeriodItem("VI"), 0, 9, 1, 2);
	      grid.attach (new PeriodItem("8"), 1, 9, 1, 1);
	      grid.attach (listElementItems[54], 2, 9, 1, 1);
	      grid.attach (listElementItems[55], 3, 9, 1, 1);
	      grid.attach (listElementItems[56], 4, 9, 1, 1);
	      grid.attach (listElementItems[71], 5, 9, 1, 1);
	      grid.attach (listElementItems[72], 6, 9, 1, 1);
	      grid.attach (listElementItems[73], 7, 9, 1, 1);
	      grid.attach (listElementItems[74], 8, 9, 1, 1);
	      grid.attach (listElementItems[75], 9, 9, 1, 1);
	      grid.attach (listElementItems[76], 10, 9, 1, 1);
	      grid.attach (listElementItems[77], 11, 9, 1, 1);

	      grid.attach (new PeriodItem("9"), 1, 10, 1, 1);
	      grid.attach (listElementItems[78], 2, 10, 1, 1);
	      grid.attach (listElementItems[79], 3, 10, 1, 1);
	      grid.attach (listElementItems[80], 4, 10, 1, 1);
	      grid.attach (listElementItems[81], 5, 10, 1, 1);
	      grid.attach (listElementItems[82], 6, 10, 1, 1);
	      grid.attach (listElementItems[83], 7, 10, 1, 1);
	      grid.attach (listElementItems[84], 8, 10, 1, 1);
	      grid.attach (listElementItems[85], 9, 10, 1, 1);

	      grid.attach (new PeriodItem("VII"), 0, 11, 1, 2);
	      grid.attach (new PeriodItem("10"), 1, 11, 1, 1);
	      grid.attach (listElementItems[86], 2, 11, 1, 1);
	      grid.attach (listElementItems[87], 3, 11, 1, 1);
	      grid.attach (listElementItems[88], 4, 11, 1, 1);
	      grid.attach (listElementItems[103], 5, 11, 1, 1);
	      grid.attach (listElementItems[104], 6, 11, 1, 1);
	      grid.attach (listElementItems[105], 7, 11, 1, 1);
	      grid.attach (listElementItems[106], 8, 11, 1, 1);
	      grid.attach (listElementItems[107], 9, 11, 1, 1);
	      grid.attach (listElementItems[108], 10, 11, 1, 1);
	      grid.attach (listElementItems[109], 11, 11, 1, 1);

	      grid.attach (new PeriodItem("11"), 1, 12, 1, 1);
	      grid.attach (listElementItems[110], 2, 12, 1, 1);
	      grid.attach (listElementItems[111], 3, 12, 1, 1);
	      grid.attach (listElementItems[112], 4, 12, 1, 1);
	      grid.attach (listElementItems[113], 5, 12, 1, 1);
	      grid.attach (listElementItems[114], 6, 12, 1, 1);
	      grid.attach (listElementItems[115], 7, 12, 1, 1);
	      grid.attach (listElementItems[116], 8, 12, 1, 1);
	      grid.attach (listElementItems[117], 9, 12, 1, 1);

	      grid.attach (new PeriodItem("RO"), 0, 13, 2, 1);
	      grid.attach (new OHItem("R","2","O",""), 2, 13, 1, 1);
	      grid.attach (new OHItem("R","","O",""), 3, 13, 1, 1);
	      grid.attach (new OHItem("R","2","O","3"), 4, 13, 1, 1);
	      grid.attach (new OHItem("R","","O","2"), 5, 13, 1, 1);
	      grid.attach (new OHItem("R","2","O","5"), 6, 13, 1, 1);
	      grid.attach (new OHItem("R","","O","3"), 7, 13, 1, 1);
	      grid.attach (new OHItem("R","2","O","7"), 8, 13, 1, 1);
	      grid.attach (new OHItem("R","","O","4"), 9, 13, 3, 1);

	      grid.attach (new PeriodItem("RH"), 0, 14, 2, 1);

	      grid.attach (new OHItem("R","","H","4"), 5, 14, 1, 1);
	      grid.attach (new OHItem("R","","H","3"), 6, 14, 1, 1);
	      grid.attach (new OHItem("R","","H","2"), 7, 14, 1, 1);
	      grid.attach (new OHItem("R","","H",""), 8, 14, 1, 1);

	      grid.attach (new PeriodItem("VI"), 0, 15, 2, 2);
	      grid.attach (new PeriodItem("Lanthanides"), 2, 15, 5, 1);
//	      grid.attach (listElementItems[56], 7, 15, 1, 1);
	      grid.attach (lantanElementItem, 7, 15, 1, 1);
	      grid.attach (listElementItems[57], 8, 15, 1, 1);
	      grid.attach (listElementItems[58], 9, 15, 1, 1);
	      grid.attach (listElementItems[59], 10, 15, 1, 1);
	      grid.attach (listElementItems[60], 11, 15, 1, 1);
	      grid.attach (listElementItems[61], 2, 16, 1, 1);
	      grid.attach (listElementItems[62], 3, 16, 1, 1);
	      grid.attach (listElementItems[63], 4, 16, 1, 1);
	      grid.attach (listElementItems[64], 5, 16, 1, 1);
	      grid.attach (listElementItems[65], 6, 16, 1, 1);
	      grid.attach (listElementItems[66], 7, 16, 1, 1);
	      grid.attach (listElementItems[67], 8, 16, 1, 1);
	      grid.attach (listElementItems[68], 9, 16, 1, 1);
	      grid.attach (listElementItems[69], 10, 16, 1, 1);
	      grid.attach (listElementItems[70], 11, 16, 1, 1);

	      grid.attach (new PeriodItem("VII"), 0, 17, 2, 2);
	      grid.attach (new PeriodItem("Actinides"), 2, 17, 5, 1);
//	      grid.attach (listElementItems[88], 7, 17, 1, 1);
	      grid.attach (actanElementItem, 7, 17, 1, 1);
	      grid.attach (listElementItems[89], 8, 17, 1, 1);
	      grid.attach (listElementItems[90], 9, 17, 1, 1);
	      grid.attach (listElementItems[91], 10, 17, 1, 1);
	      grid.attach (listElementItems[92], 11, 17, 1, 1);
	      grid.attach (listElementItems[93], 2, 18, 1, 1);
	      grid.attach (listElementItems[94], 3, 18, 1, 1);
	      grid.attach (listElementItems[95], 4, 18, 1, 1);
	      grid.attach (listElementItems[96], 5, 18, 1, 1);
	      grid.attach (listElementItems[97], 6, 18, 1, 1);
	      grid.attach (listElementItems[98], 7, 18, 1, 1);
	      grid.attach (listElementItems[99], 8, 18, 1, 1);
	      grid.attach (listElementItems[100], 9, 18, 1, 1);
	      grid.attach (listElementItems[101], 10, 18, 1, 1);///////////
	      grid.attach (listElementItems[102], 11, 18, 1, 1);///////////
	      grid.attach (new TitleItem("Properties"), 0, 19, 12, 1);

	      grid.attach (listPropertiesItems[0], 0, 20, 3, 1);
	      grid.attach (listPropertiesItems[1], 3, 20, 3, 1);
	      grid.attach (listPropertiesItems[2], 6, 20, 3, 1);
	      grid.attach (listPropertiesItems[3], 9, 20, 3, 1);

	      grid.attach (listPropertiesItems[4], 0, 21, 3, 1);
	      grid.attach (listPropertiesItems[5], 3, 21, 3, 1);
	      grid.attach (listPropertiesItems[6], 6, 21, 3, 1);
	      grid.attach (listPropertiesItems[7], 9, 21, 3, 1);

/*
          grid.attach (new PeriodItem("Group"), 2, 0, 12, 1);
          grid.attach (new TitleItem("Period"), 0, 0, 1, 2);
	      grid.attach (new TitleItem("Row"), 1, 0, 1, 2);
	      grid.attach (new PeriodItem("I"), 2, 1, 1, 1);
	      grid.attach (new PeriodItem("II"), 3, 1, 1, 1);
	      grid.attach (new PeriodItem("III"), 4, 1, 1, 1);
	      grid.attach (new PeriodItem("IV"), 5, 1, 1, 1);
	      grid.attach (new PeriodItem("V"), 6, 1, 1, 1);
	      grid.attach (new PeriodItem("VI"), 7, 1, 1, 1);
	      grid.attach (new PeriodItem("VII"), 8, 1, 1, 1);
	      grid.attach (new PeriodItem("VIII"), 9, 1, 3, 1);

	      grid.attach (new PeriodItem("I"), 0, 2, 1, 1);
	      grid.attach (new PeriodItem("1"), 1, 2, 1, 1);
          grid.attach (new ElementItem("1","H","1.0079", multiElement.Resourse.cNemetal, parent, ItemView.Large), 2, 2, 1, 1);
	      grid.attach (new ElementItem("2","He","4.0026", multiElement.Resourse.cReal, parent, ItemView.Large), 9, 2, 1, 1);

	      grid.attach (new PeriodItem("II"), 0, 3, 1, 1);
	      grid.attach (new PeriodItem("2"), 1, 3, 1, 1);
	      grid.attach (new ElementItem("3","Li","6.9412", multiElement.Resourse.cSheloch, parent, ItemView.Large), 2, 3, 1, 1);
	      grid.attach (new ElementItem("4","Be","9.0121", multiElement.Resourse.cShelLand, parent, ItemView.Large), 3, 3, 1, 1);
	      grid.attach (new ElementItem("5","B","10.811", multiElement.Resourse.cPolimetal, parent, ItemView.Large), 4, 3, 1, 1);
	      grid.attach (new ElementItem("6","C","12.011", multiElement.Resourse.cNemetal, parent, ItemView.Large), 5, 3, 1, 1);
	      grid.attach (new ElementItem("7","N","14.007", multiElement.Resourse.cNemetal, parent, ItemView.Large), 6, 3, 1, 1);
	      grid.attach (new ElementItem("8","O","15.999", multiElement.Resourse.cNemetal, parent, ItemView.Large), 7, 3, 1, 1);
	      grid.attach (new ElementItem("9","F","18.998", multiElement.Resourse.cGalogen, parent, ItemView.Large), 8, 3, 1, 1);
	      grid.attach (new ElementItem("10","Ne","20.179", multiElement.Resourse.cReal, parent, ItemView.Large), 9, 3, 1, 1);

	      grid.attach (new PeriodItem("III"), 0, 4, 1, 1);
	      grid.attach (new PeriodItem("3"), 1, 4, 1, 1);
	      grid.attach (new ElementItem("11","Na","22.989", multiElement.Resourse.cSheloch, parent, ItemView.Large), 2, 4, 1, 1);
	      grid.attach (new ElementItem("12","Mg","24.305", multiElement.Resourse.cShelLand, parent, ItemView.Large), 3, 4, 1, 1);
	      grid.attach (new ElementItem("13","Al","26.982", multiElement.Resourse.cPostmetal, parent, ItemView.Large), 4, 4, 1, 1);
	      grid.attach (new ElementItem("14","Si","28.086", multiElement.Resourse.cPolimetal, parent, ItemView.Large), 5, 4, 1, 1);
	      grid.attach (new ElementItem("15","P","30.974", multiElement.Resourse.cNemetal, parent, ItemView.Large), 6, 4, 1, 1);
	      grid.attach (new ElementItem("16","S","32.066", multiElement.Resourse.cNemetal, parent, ItemView.Large), 7, 4, 1, 1);
	      grid.attach (new ElementItem("17","Cl","35.453", multiElement.Resourse.cGalogen, parent, ItemView.Large), 8, 4, 1, 1);
	      grid.attach (new ElementItem("18","Ar","39.948", multiElement.Resourse.cReal, parent, ItemView.Large), 9, 4, 1, 1);

	      grid.attach (new PeriodItem("IV"), 0, 5, 1, 2);
	      grid.attach (new PeriodItem("4"), 1, 5, 1, 1);
	      grid.attach (new ElementItem("19","K","39.098", multiElement.Resourse.cSheloch, parent, ItemView.Large), 2, 5, 1, 1);
	      grid.attach (new ElementItem("20","Ca","40.078", multiElement.Resourse.cShelLand, parent, ItemView.Large), 3, 5, 1, 1);
	      grid.attach (new ElementItem("21","Sc","44.956", multiElement.Resourse.cMetal, parent, ItemView.Large), 4, 5, 1, 1);
	      grid.attach (new ElementItem("22","Ti","47.88", multiElement.Resourse.cMetal, parent, ItemView.Large), 5, 5, 1, 1);
	      grid.attach (new ElementItem("23","V","50.942", multiElement.Resourse.cMetal, parent, ItemView.Large), 6, 5, 1, 1);
	      grid.attach (new ElementItem("24","Cr","51.996", multiElement.Resourse.cMetal, parent, ItemView.Large), 7, 5, 1, 1);
	      grid.attach (new ElementItem("25","Mn","54.938", multiElement.Resourse.cMetal, parent, ItemView.Large), 8, 5, 1, 1);
	      grid.attach (new ElementItem("26","Fe","55.847", multiElement.Resourse.cMetal, parent, ItemView.Large), 9, 5, 1, 1);
	      grid.attach (new ElementItem("27","Co","58.993", multiElement.Resourse.cMetal, parent, ItemView.Large), 10, 5, 1, 1);
	      grid.attach (new ElementItem("28","Ni","58.69", multiElement.Resourse.cMetal, parent, ItemView.Large), 11, 5, 1, 1);

	      grid.attach (new PeriodItem("5"), 1, 6, 1, 1);
	      grid.attach (new ElementItem("29","Cu","63.546", multiElement.Resourse.cMetal, parent, ItemView.Large), 2, 6, 1, 1);
	      grid.attach (new ElementItem("30","Zn","65.39", multiElement.Resourse.cMetal, parent, ItemView.Large), 3, 6, 1, 1);
	      grid.attach (new ElementItem("31","Ga","69.723", multiElement.Resourse.cPostmetal, parent, ItemView.Large), 4, 6, 1, 1);
	      grid.attach (new ElementItem("32","Ge","72.59", multiElement.Resourse.cPolimetal, parent, ItemView.Large), 5, 6, 1, 1);
	      grid.attach (new ElementItem("33","As","74.922", multiElement.Resourse.cPolimetal, parent, ItemView.Large), 6, 6, 1, 1);
	      grid.attach (new ElementItem("34","Se","78.96", multiElement.Resourse.cNemetal, parent, ItemView.Large), 7, 6, 1, 1);
	      grid.attach (new ElementItem("35","Br","79.904", multiElement.Resourse.cGalogen, parent, ItemView.Large), 8, 6, 1, 1);
	      grid.attach (new ElementItem("36","Kr","83.80", multiElement.Resourse.cReal, parent, ItemView.Large), 9, 6, 1, 1);

	      grid.attach (new PeriodItem("V"), 0, 7, 1, 2);
	      grid.attach (new PeriodItem("6"), 1, 7, 1, 1);
	      grid.attach (new ElementItem("37","Rb","85.468", multiElement.Resourse.cSheloch, parent, ItemView.Large), 2, 7, 1, 1);
	      grid.attach (new ElementItem("38","Sr","87.82", multiElement.Resourse.cShelLand, parent, ItemView.Large), 3, 7, 1, 1);
	      grid.attach (new ElementItem("39","Y","88.906", multiElement.Resourse.cMetal, parent, ItemView.Large), 4, 7, 1, 1);
	      grid.attach (new ElementItem("40","Zr","91.224", multiElement.Resourse.cMetal, parent, ItemView.Large), 5, 7, 1, 1);
	      grid.attach (new ElementItem("41","Nb","92.906", multiElement.Resourse.cMetal, parent, ItemView.Large), 6, 7, 1, 1);
	      grid.attach (new ElementItem("42","Mo","95.94", multiElement.Resourse.cMetal, parent, ItemView.Large), 7, 7, 1, 1);
	      grid.attach (new ElementItem("43","Tc","98.906", multiElement.Resourse.cMetal, parent, ItemView.Large), 8, 7, 1, 1);
	      grid.attach (new ElementItem("44","Ru","101.07", multiElement.Resourse.cMetal, parent, ItemView.Large), 9, 7, 1, 1);
	      grid.attach (new ElementItem("45","Rh","102.91", multiElement.Resourse.cMetal, parent, ItemView.Large), 10, 7, 1, 1);
 	      grid.attach (new ElementItem("46","Pd","106.42", multiElement.Resourse.cMetal, parent, ItemView.Large), 11, 7, 1, 1);

	      grid.attach (new PeriodItem("7"), 1, 8, 1, 1);
	      grid.attach (new ElementItem("47","Ag","107.87", multiElement.Resourse.cMetal, parent, ItemView.Large), 2, 8, 1, 1);
	      grid.attach (new ElementItem("48","Cd","112.41", multiElement.Resourse.cMetal, parent, ItemView.Large), 3, 8, 1, 1);
	      grid.attach (new ElementItem("49","In","114.82", multiElement.Resourse.cPostmetal, parent, ItemView.Large), 4, 8, 1, 1);
	      grid.attach (new ElementItem("50","Sn","118.71", multiElement.Resourse.cPostmetal, parent, ItemView.Large), 5, 8, 1, 1);
	      grid.attach (new ElementItem("51","Sb","121.75", multiElement.Resourse.cPolimetal, parent, ItemView.Large), 6, 8, 1, 1);
	      grid.attach (new ElementItem("52","Te","127.60", multiElement.Resourse.cPolimetal, parent, ItemView.Large), 7, 8, 1, 1);
	      grid.attach (new ElementItem("53","I","126.91", multiElement.Resourse.cGalogen, parent, ItemView.Large), 8, 8, 1, 1);
	      grid.attach (new ElementItem("54","Xe","131.29", multiElement.Resourse.cReal, parent, ItemView.Large), 9, 8, 1, 1);

	      grid.attach (new PeriodItem("VI"), 0, 9, 1, 2);
	      grid.attach (new PeriodItem("8"), 1, 9, 1, 1);
	      grid.attach (new ElementItem("55","Cs","132.91", multiElement.Resourse.cSheloch, parent, ItemView.Large), 2, 9, 1, 1);
	      grid.attach (new ElementItem("56","Ba","137.33", multiElement.Resourse.cShelLand, parent, ItemView.Large), 3, 9, 1, 1);
	      grid.attach (new ElementItem("57","La","138.90", multiElement.Resourse.cLantan, parent, ItemView.Large), 4, 9, 1, 1);///////////
	      grid.attach (new ElementItem("72","Hf","178.49", multiElement.Resourse.cMetal, parent, ItemView.Large), 5, 9, 1, 1);
	      grid.attach (new ElementItem("73","Ta","180.95", multiElement.Resourse.cMetal, parent, ItemView.Large), 6, 9, 1, 1);
	      grid.attach (new ElementItem("74","W","183.85", multiElement.Resourse.cMetal, parent, ItemView.Large), 7, 9, 1, 1);
	      grid.attach (new ElementItem("75","Re","185.21", multiElement.Resourse.cMetal, parent, ItemView.Large), 8, 9, 1, 1);
	      grid.attach (new ElementItem("76","Os","190.2", multiElement.Resourse.cMetal, parent, ItemView.Large), 9, 9, 1, 1);
	      grid.attach (new ElementItem("77","Ir","192.22", multiElement.Resourse.cMetal, parent, ItemView.Large), 10, 9, 1, 1);
	      grid.attach (new ElementItem("78","Pt","195.08", multiElement.Resourse.cMetal, parent, ItemView.Large), 11, 9, 1, 1);

	      grid.attach (new PeriodItem("9"), 1, 10, 1, 1);
	      grid.attach (new ElementItem("79","Au","196.97", multiElement.Resourse.cMetal, parent, ItemView.Large), 2, 10, 1, 1);
	      grid.attach (new ElementItem("80","Hg","200.59", multiElement.Resourse.cMetal, parent, ItemView.Large), 3, 10, 1, 1);
	      grid.attach (new ElementItem("81","Tl","204.38", multiElement.Resourse.cPostmetal, parent, ItemView.Large), 4, 10, 1, 1);
	      grid.attach (new ElementItem("82","Pb","207.2", multiElement.Resourse.cPostmetal, parent, ItemView.Large), 5, 10, 1, 1);
	      grid.attach (new ElementItem("83","Bi","208.98", multiElement.Resourse.cPostmetal, parent, ItemView.Large), 6, 10, 1, 1);
	      grid.attach (new ElementItem("84","Po","[209]", multiElement.Resourse.cPolimetal, parent, ItemView.Large), 7, 10, 1, 1);
	      grid.attach (new ElementItem("85","At","[210]", multiElement.Resourse.cGalogen, parent, ItemView.Large), 8, 10, 1, 1);
	      grid.attach (new ElementItem("86","Rn","[222]", multiElement.Resourse.cReal, parent, ItemView.Large), 9, 10, 1, 1);

	      grid.attach (new PeriodItem("VII"), 0, 11, 1, 2);
	      grid.attach (new PeriodItem("10"), 1, 11, 1, 1);
	      grid.attach (new ElementItem("87","Fr","[223]", multiElement.Resourse.cSheloch, parent, ItemView.Large), 2, 11, 1, 1);
	      grid.attach (new ElementItem("88","Ra","226.02", multiElement.Resourse.cShelLand, parent, ItemView.Large), 3, 11, 1, 1);
	      grid.attach (new ElementItem("89","Ac","[227]", multiElement.Resourse.cActan, parent, ItemView.Large), 4, 11, 1, 1);///////////
	      grid.attach (new ElementItem("104","Rf","[261]", multiElement.Resourse.cMetal, parent, ItemView.Large), 5, 11, 1, 1);
	      grid.attach (new ElementItem("105","Db","[268]", multiElement.Resourse.cMetal, parent, ItemView.Large), 6, 11, 1, 1);
	      grid.attach (new ElementItem("106","Sg","[271]", multiElement.Resourse.cMetal, parent, ItemView.Large), 7, 11, 1, 1);
	      grid.attach (new ElementItem("107","Bh","[267]", multiElement.Resourse.cMetal, parent, ItemView.Large), 8, 11, 1, 1);
	      grid.attach (new ElementItem("108","Hs","[269]", multiElement.Resourse.cMetal, parent, ItemView.Large), 9, 11, 1, 1);
	      grid.attach (new ElementItem("109","Mt","[276]", multiElement.Resourse.cMetal, parent, ItemView.Large), 10, 11, 1, 1);
	      grid.attach (new ElementItem("110","Ds","[281]", multiElement.Resourse.cMetal, parent, ItemView.Large), 11, 11, 1, 1);

	      grid.attach (new PeriodItem("11"), 1, 12, 1, 1);
	      grid.attach (new ElementItem("111","Rg","[281]", multiElement.Resourse.cMetal, parent, ItemView.Large), 2, 12, 1, 1);
	      grid.attach (new ElementItem("112","Cn","[285]", multiElement.Resourse.cMetal, parent, ItemView.Large), 3, 12, 1, 1);
	      grid.attach (new ElementItem("113","Nh","[284]", multiElement.Resourse.cPostmetal, parent, ItemView.Large), 4, 12, 1, 1);
	      grid.attach (new ElementItem("114","Fl","[289]", multiElement.Resourse.cPostmetal, parent, ItemView.Large), 5, 12, 1, 1);
	      grid.attach (new ElementItem("115","Mc","[288]", multiElement.Resourse.cPostmetal, parent, ItemView.Large), 6, 12, 1, 1);
	      grid.attach (new ElementItem("116","Lv","[293]", multiElement.Resourse.cPostmetal, parent, ItemView.Large), 7, 12, 1, 1);
	      grid.attach (new ElementItem("117","Ts","[294]", multiElement.Resourse.cGalogen, parent, ItemView.Large), 8, 12, 1, 1);
	      grid.attach (new ElementItem("118","Og","[294]", multiElement.Resourse.cReal, parent, ItemView.Large), 9, 12, 1, 1);

	      grid.attach (new PeriodItem("RO"), 0, 13, 2, 1);
	      grid.attach (new OHItem("R","2","O",""), 2, 13, 1, 1);
	      grid.attach (new OHItem("R","","O",""), 3, 13, 1, 1);
	      grid.attach (new OHItem("R","2","O","3"), 4, 13, 1, 1);
	      grid.attach (new OHItem("R","","O","2"), 5, 13, 1, 1);
	      grid.attach (new OHItem("R","2","O","5"), 6, 13, 1, 1);
	      grid.attach (new OHItem("R","","O","3"), 7, 13, 1, 1);
	      grid.attach (new OHItem("R","2","O","7"), 8, 13, 1, 1);
	      grid.attach (new OHItem("R","","O","4"), 9, 13, 3, 1);

	      grid.attach (new PeriodItem("RH"), 0, 14, 2, 1);

	      grid.attach (new OHItem("R","","H","4"), 5, 14, 1, 1);
	      grid.attach (new OHItem("R","","H","3"), 6, 14, 1, 1);
	      grid.attach (new OHItem("R","","H","2"), 7, 14, 1, 1);
	      grid.attach (new OHItem("R","","H",""), 8, 14, 1, 1);

            var app = GLib.Application.get_default();
            var propertiesService = (app as Multielement.Application).propertiesService;
//            message (propertiesService.listProperties[0].name);
  //          message (propertiesService.listProperties[1].name);
    //        message (propertiesService.listProperties[2].name);
      //      message (propertiesService.listProperties[3].name);
        //    message (propertiesService.listProperties[4].name);
//            message (propertiesService.listProperties[5].name);
  //          message (propertiesService.listProperties[6].name);
    //        message (propertiesService.listProperties[7].name);
      //      message (propertiesService.listProperties[8].name);
        //    message (propertiesService.listProperties[9].name);

	      grid.attach (new PeriodItem("VI"), 0, 15, 2, 2);
//	      grid.attach (new PeriodItem(propertiesService.listProperties[8].name), 2, 15, 5, 1);
	      grid.attach (new PeriodItem("Lanthanides"), 2, 15, 5, 1);
	      grid.attach (new ElementItem("57","La","138.90", multiElement.Resourse.cLantan, parent, ItemView.Large), 7, 15, 1, 1);///////////
	      grid.attach (new ElementItem("58","Ce","140.12", multiElement.Resourse.cLantan, parent, ItemView.Large), 8, 15, 1, 1);///////////
	      grid.attach (new ElementItem("59","Pr","140.91", multiElement.Resourse.cLantan, parent, ItemView.Large), 9, 15, 1, 1);///////////
	      grid.attach (new ElementItem("60","Nd","144.24", multiElement.Resourse.cLantan, parent, ItemView.Large), 10, 15, 1, 1);///////////
	      grid.attach (new ElementItem("61","Pm","[145]", multiElement.Resourse.cLantan, parent, ItemView.Large), 11, 15, 1, 1);///////////
	      grid.attach (new ElementItem("62","Sm","150.36", multiElement.Resourse.cLantan, parent, ItemView.Large), 2, 16, 1, 1);///////////
	      grid.attach (new ElementItem("63","Eu","151.96", multiElement.Resourse.cLantan, parent, ItemView.Large), 3, 16, 1, 1);///////////
	      grid.attach (new ElementItem("64","Gd","157.25", multiElement.Resourse.cLantan, parent, ItemView.Large), 4, 16, 1, 1);///////////
	      grid.attach (new ElementItem("65","Tb","158.93", multiElement.Resourse.cLantan, parent, ItemView.Large), 5, 16, 1, 1);///////////
	      grid.attach (new ElementItem("66","Dy","162.50", multiElement.Resourse.cLantan, parent, ItemView.Large), 6, 16, 1, 1);///////////
	      grid.attach (new ElementItem("67","Ho","164.93", multiElement.Resourse.cLantan, parent, ItemView.Large), 7, 16, 1, 1);///////////
	      grid.attach (new ElementItem("68","Er","167.26", multiElement.Resourse.cLantan, parent, ItemView.Large), 8, 16, 1, 1);///////////
	      grid.attach (new ElementItem("69","Tm","168.93", multiElement.Resourse.cLantan, parent, ItemView.Large), 9, 16, 1, 1);///////////
	      grid.attach (new ElementItem("70","Yb","173.61", multiElement.Resourse.cLantan, parent, ItemView.Large), 10, 16, 1, 1);///////////
	      grid.attach (new ElementItem("71","Lu","174.96", multiElement.Resourse.cLantan, parent, ItemView.Large), 11, 16, 1, 1);///////////

	      grid.attach (new PeriodItem("VII"), 0, 17, 2, 2);
//	      grid.attach (new PeriodItem(propertiesService.listProperties[9].name), 2, 17, 5, 1);
	      grid.attach (new PeriodItem("Actinides"), 2, 17, 5, 1);
	      grid.attach (new ElementItem("89","Ac","[227]", multiElement.Resourse.cActan, parent, ItemView.Large), 7, 17, 1, 1);///////////
	      grid.attach (new ElementItem("90","Th","223.04", multiElement.Resourse.cActan, parent, ItemView.Large), 8, 17, 1, 1);///////////
	      grid.attach (new ElementItem("91","Pa","[231]", multiElement.Resourse.cActan, parent, ItemView.Large), 9, 17, 1, 1);///////////
	      grid.attach (new ElementItem("92","U","238.02", multiElement.Resourse.cActan, parent, ItemView.Large), 10, 17, 1, 1);///////////
	      grid.attach (new ElementItem("93","Np","237.04", multiElement.Resourse.cActan, parent, ItemView.Large), 11, 17, 1, 1);///////////
	      grid.attach (new ElementItem("94","Pu","[244]", multiElement.Resourse.cActan, parent, ItemView.Large), 2, 18, 1, 1);///////////
	      grid.attach (new ElementItem("95","Am","[243]", multiElement.Resourse.cActan, parent, ItemView.Large), 3, 18, 1, 1);///////////
	      grid.attach (new ElementItem("96","Cm","[247]", multiElement.Resourse.cActan, parent, ItemView.Large), 4, 18, 1, 1);///////////
	      grid.attach (new ElementItem("97","Bk","[247]", multiElement.Resourse.cActan, parent, ItemView.Large), 5, 18, 1, 1);///////////
	      grid.attach (new ElementItem("98","Cf","[251]", multiElement.Resourse.cActan, parent, ItemView.Large), 6, 18, 1, 1);///////////
	      grid.attach (new ElementItem("99","Es","[252]", multiElement.Resourse.cActan, parent, ItemView.Large), 7, 18, 1, 1);///////////
	      grid.attach (new ElementItem("100","Fm","[257]", multiElement.Resourse.cActan, parent, ItemView.Large), 8, 18, 1, 1);///////////
	      grid.attach (new ElementItem("101","Md","[258]", multiElement.Resourse.cActan, parent, ItemView.Large), 9, 18, 1, 1);///////////
	      grid.attach (new ElementItem("102","No","259.1", multiElement.Resourse.cActan, parent, ItemView.Large), 10, 18, 1, 1);///////////
	      grid.attach (new ElementItem("103","Lr","[266]", multiElement.Resourse.cActan, parent, ItemView.Large), 11, 18, 1, 1);///////////
	      grid.attach (new TitleItem("Properties"), 0, 19, 12, 1);

//	      grid.attach (new PropertiesItem(TextOperation.TextTrim(propertiesService.listProperties[0].name,15), multiElement.Resourse.cGalogen), 0, 20, 3, 1);
//	      grid.attach (new PropertiesItem(TextOperation.TextTrim(propertiesService.listProperties[1].name,15), multiElement.Resourse.cReal), 3, 20, 3, 1);
//	      grid.attach (new PropertiesItem(TextOperation.TextTrim(propertiesService.listProperties[2].name,15), multiElement.Resourse.cNemetal), 6, 20, 3, 1);
//	      grid.attach (new PropertiesItem(TextOperation.TextTrim(propertiesService.listProperties[3].name,15), multiElement.Resourse.cSheloch), 9, 20, 3, 1);

//	      grid.attach (new PropertiesItem(TextOperation.TextTrim(propertiesService.listProperties[4].name,15), multiElement.Resourse.cShelLand), 0, 21, 3, 1);
//	      grid.attach (new PropertiesItem(TextOperation.TextTrim(propertiesService.listProperties[5].name,15), multiElement.Resourse.cMetal), 3, 21, 3, 1);
//	      grid.attach (new PropertiesItem(TextOperation.TextTrim(propertiesService.listProperties[6].name,15), multiElement.Resourse.cPostmetal), 6, 21, 3, 1);
//	      grid.attach (new PropertiesItem(TextOperation.TextTrim(propertiesService.listProperties[7].name,15), multiElement.Resourse.cPolimetal), 9, 21, 3, 1);

	      grid.attach (new PropertiesItem(TextOperation.TextTrim("Halogens",15), multiElement.Resourse.cGalogen), 0, 20, 3, 1);
	      grid.attach (new PropertiesItem(TextOperation.TextTrim("Noble gases",15), multiElement.Resourse.cReal), 3, 20, 3, 1);
	      grid.attach (new PropertiesItem(TextOperation.TextTrim("Non metal",15), multiElement.Resourse.cNemetal), 6, 20, 3, 1);
	      grid.attach (new PropertiesItem(TextOperation.TextTrim("Alkali metals",15), multiElement.Resourse.cSheloch), 9, 20, 3, 1);

	      grid.attach (new PropertiesItem(TextOperation.TextTrim("Alkaline earth metals",15), multiElement.Resourse.cShelLand), 0, 21, 3, 1);
	      grid.attach (new PropertiesItem(TextOperation.TextTrim("Transition metals",15), multiElement.Resourse.cMetal), 3, 21, 3, 1);
	      grid.attach (new PropertiesItem(TextOperation.TextTrim("Post-transition metals",15), multiElement.Resourse.cPostmetal), 6, 21, 3, 1);
	      grid.attach (new PropertiesItem(TextOperation.TextTrim("Semimetals",15), multiElement.Resourse.cPolimetal), 9, 21, 3, 1);
*/
            var centerBox = new CenterBox ();
            centerBox.set_center_widget (grid);
            scroll.set_child (centerBox);
            this.append(scroll);

//          scroll.set_child (grid);
  //        this.append(scroll);

//	      return mainBox;
     }
  }
}
