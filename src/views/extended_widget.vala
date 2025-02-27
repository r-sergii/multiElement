using Gtk;
using GLib;
using MyLib;

namespace Multielement {

    public class ExtendedWidget : Gtk.Box
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

        public void changeTheme2 (bool theme) {
            for(int i=0; i<listElementItems.size; i++) {
                listElementItems[i].changeTheme2(theme);
            }
            for(int j=0; j<listPropertiesItems.size; j++) {
                listPropertiesItems[j].changeTheme2(theme);
            }
            lantanElementItem.changeTheme2(theme);
            actanElementItem.changeTheme2(theme);
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
	        listPropertiesItems.add (new PropertiesItem2(TextOperation.TextTrim("Properties unknown",11), multiElement.Resourse.cssUnknown));

            listElementItems = new Gee.ArrayList<ElementItem2> ();
            listElementItems.add (new ElementItem2("1","H","1.0079", multiElement.Resourse.cssNemetal, parent, ItemView.Normal));
            listElementItems.add (new ElementItem2("2","He","4.0026", multiElement.Resourse.cssReal, parent, ItemView.Normal));

            listElementItems.add (new ElementItem2("3","Li","6.9412", multiElement.Resourse.cssSheloch, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("4","Be","9.0121", multiElement.Resourse.cssShelLand, parent, ItemView.Normal));
            listElementItems.add (new ElementItem2("5","B","10.811", multiElement.Resourse.cssPolimetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("6","C","12.011", multiElement.Resourse.cssNemetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("7","N","14.007", multiElement.Resourse.cssNemetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("8","O","15.999", multiElement.Resourse.cssNemetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("9","F","18.998", multiElement.Resourse.cssGalogen, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("10","Ne","20.179", multiElement.Resourse.cssReal, parent, ItemView.Normal));

	        listElementItems.add (new ElementItem2("11","Na","22.989", multiElement.Resourse.cssSheloch, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("12","Mg","24.305", multiElement.Resourse.cssShelLand, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("13","Al","26.982", multiElement.Resourse.cssPostmetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("14","Si","28.086", multiElement.Resourse.cssPolimetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("15","P","30.974", multiElement.Resourse.cssNemetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("16","S","32.066", multiElement.Resourse.cssNemetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("17","Cl","35.453", multiElement.Resourse.cssGalogen, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("18","Ar","39.948", multiElement.Resourse.cssReal, parent, ItemView.Normal));

            listElementItems.add (new ElementItem2("19","K","39.098", multiElement.Resourse.cssSheloch, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("20","Ca","40.078", multiElement.Resourse.cssShelLand, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("21","Sc","44.956", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("22","Ti","47.88", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("23","V","50.942", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("24","Cr","51.996", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("25","Mn","54.938", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("26","Fe","55.847", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("27","Co","58.993", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("28","Ni","58.69", multiElement.Resourse.cssMetal, parent, ItemView.Normal));

            listElementItems.add (new ElementItem2("29","Cu","63.546", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("30","Zn","65.39", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("31","Ga","69.723", multiElement.Resourse.cssPostmetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("32","Ge","72.59", multiElement.Resourse.cssPolimetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("33","As","74.922", multiElement.Resourse.cssPolimetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("34","Se","78.96", multiElement.Resourse.cssNemetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("35","Br","79.904", multiElement.Resourse.cssGalogen, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("36","Kr","83.80", multiElement.Resourse.cssReal, parent, ItemView.Normal));

            listElementItems.add (new ElementItem2("37","Rb","85.468", multiElement.Resourse.cssSheloch, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("38","Sr","87.82", multiElement.Resourse.cssShelLand, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("39","Y","88.906", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("40","Zr","91.224", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("41","Nb","92.906", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("42","Mo","95.94", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("43","Tc","98.906", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("44","Ru","101.07", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("45","Rh","102.91", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
     	    listElementItems.add (new ElementItem2("46","Pd","106.42", multiElement.Resourse.cssMetal, parent, ItemView.Normal));

	        listElementItems.add (new ElementItem2("47","Ag","107.87", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("48","Cd","112.41", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("49","In","114.82", multiElement.Resourse.cssPostmetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("50","Sn","118.71", multiElement.Resourse.cssPostmetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("51","Sb","121.75", multiElement.Resourse.cssPolimetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("52","Te","127.60", multiElement.Resourse.cssPolimetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("53","I","126.91", multiElement.Resourse.cssGalogen, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("54","Xe","131.29", multiElement.Resourse.cssReal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("55","Cs","132.91", multiElement.Resourse.cssSheloch, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("56","Ba","137.33", multiElement.Resourse.cssShelLand, parent, ItemView.Normal));

	        listElementItems.add (new ElementItem2("57","La","138.90", multiElement.Resourse.cssLantan, parent, ItemView.Normal));
	        lantanElementItem = new ElementItem2("57","La","138.90", multiElement.Resourse.cssLantan, parent, ItemView.Normal);
            listElementItems.add (new ElementItem2("58","Ce","140.12", multiElement.Resourse.cssLantan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("59","Pr","140.91", multiElement.Resourse.cssLantan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("60","Nd","144.24", multiElement.Resourse.cssLantan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("61","Pm","[145]", multiElement.Resourse.cssLantan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("62","Sm","150.36", multiElement.Resourse.cssLantan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("63","Eu","151.96", multiElement.Resourse.cssLantan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("64","Gd","157.25", multiElement.Resourse.cssLantan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("65","Tb","158.93", multiElement.Resourse.cssLantan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("66","Dy","162.50", multiElement.Resourse.cssLantan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("67","Ho","164.93", multiElement.Resourse.cssLantan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("68","Er","167.26", multiElement.Resourse.cssLantan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("69","Tm","168.93", multiElement.Resourse.cssLantan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("70","Yb","173.61", multiElement.Resourse.cssLantan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("71","Lu","174.96", multiElement.Resourse.cssLantan, parent, ItemView.Normal));

	        listElementItems.add (new ElementItem2("72","Hf","178.49", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("73","Ta","180.95", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("74","W","183.85", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("75","Re","185.21", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("76","Os","190.2", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("77","Ir","192.22", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("78","Pt","195.08", multiElement.Resourse.cssMetal, parent, ItemView.Normal));

	        listElementItems.add (new ElementItem2("79","Au","196.97", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("80","Hg","200.59", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("81","Tl","204.38", multiElement.Resourse.cssPostmetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("82","Pb","207.2", multiElement.Resourse.cssPostmetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("83","Bi","208.98", multiElement.Resourse.cssPostmetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("84","Po","[209]", multiElement.Resourse.cssPolimetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("85","At","[210]", multiElement.Resourse.cssGalogen, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("86","Rn","[222]", multiElement.Resourse.cssReal, parent, ItemView.Normal));

	        listElementItems.add (new ElementItem2("87","Fr","[223]", multiElement.Resourse.cssSheloch, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("88","Ra","226.02", multiElement.Resourse.cssShelLand, parent, ItemView.Normal));

	        listElementItems.add (new ElementItem2("89","Ac","[227]", multiElement.Resourse.cssActan, parent, ItemView.Normal));
            actanElementItem = new ElementItem2("89","Ac","[227]", multiElement.Resourse.cssActan, parent, ItemView.Normal);
	        listElementItems.add (new ElementItem2("90","Th","223.04", multiElement.Resourse.cssActan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("91","Pa","[231]", multiElement.Resourse.cssActan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("92","U","238.02", multiElement.Resourse.cssActan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("93","Np","237.04", multiElement.Resourse.cssActan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("94","Pu","[244]", multiElement.Resourse.cssActan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("95","Am","[243]", multiElement.Resourse.cssActan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("96","Cm","[247]", multiElement.Resourse.cssActan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("97","Bk","[247]", multiElement.Resourse.cssActan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("98","Cf","[251]", multiElement.Resourse.cssActan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("99","Es","[252]", multiElement.Resourse.cssActan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("100","Fm","[257]", multiElement.Resourse.cssActan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("101","Md","[258]", multiElement.Resourse.cssActan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("102","No","259.1", multiElement.Resourse.cssActan, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("103","Lr","[266]", multiElement.Resourse.cssActan, parent, ItemView.Normal));

	        listElementItems.add (new ElementItem2("104","Rf","[261]", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("105","Db","[268]", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("106","Sg","[271]", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("107","Bh","[267]", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("108","Hs","[269]", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("109","Mt","[276]", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("110","Ds","[281]", multiElement.Resourse.cssMetal, parent, ItemView.Normal));

	        listElementItems.add (new ElementItem2("111","Rg","[281]", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("112","Cn","[285]", multiElement.Resourse.cssMetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("113","Nh","[284]", multiElement.Resourse.cssPostmetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("114","Fl","[289]", multiElement.Resourse.cssPostmetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("115","Mc","[288]", multiElement.Resourse.cssPostmetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("116","Lv","[293]", multiElement.Resourse.cssPostmetal, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("117","Ts","[294]", multiElement.Resourse.cssGalogen, parent, ItemView.Normal));
	        listElementItems.add (new ElementItem2("118","Og","[294]", multiElement.Resourse.cssReal, parent, ItemView.Normal));
      }

//        public Gtk.Box ExtendedWidget (MainWindow parent)
        public ExtendedWidget (MainWindow parent)
        {
            init(parent);
//            Gtk.Box mainBox = new Gtk.Box (Gtk.Orientation.VERTICAL, 1);//0

            var itemWidgets = new ItemWidgets();
	        Gtk.ScrolledWindow scroll = new Gtk.ScrolledWindow ();//null, null);
	        scroll.set_policy (Gtk.PolicyType.AUTOMATIC, Gtk.PolicyType.AUTOMATIC);
            scroll.set_vexpand(true);
            scroll.set_hexpand(true);

	        var grid = new Gtk.Grid() {
	            column_spacing = 2,
	            row_spacing = 2
	        };

	        grid.attach (new PeriodItem("Group"), 1, 0, 19, 1);

	        grid.attach (new TitleItem("Period"), 0, 0, 1, 2);
	        grid.attach (new PeriodItem("I"), 1, 1, 1, 1);
	        grid.attach (new PeriodItem("II"), 2, 1, 1, 1);
	        grid.attach (new PeriodItem("III"), 3, 1, 1, 1);
	        grid.attach (new PeriodItem("IV"), 4, 1, 1, 1);
	        grid.attach (new PeriodItem("V"), 5, 1, 1, 1);
	        grid.attach (new PeriodItem("VI"), 6, 1, 1, 1);
	        grid.attach (new PeriodItem("VII"), 7, 1, 1, 1);
	        grid.attach (new PeriodItem("VIII"), 8, 1, 3, 1);
	        grid.attach (new PeriodItem("I"), 11, 1, 1, 1);
	        grid.attach (new PeriodItem("II"), 12, 1, 1, 1);
	        grid.attach (new PeriodItem("III"), 13, 1, 1, 1);
	        grid.attach (new PeriodItem("IV"), 14, 1, 1, 1);
	        grid.attach (new PeriodItem("V"), 15, 1, 1, 1);
	        grid.attach (new PeriodItem("VI"), 16, 1, 1, 1);
	        grid.attach (new PeriodItem("VII"), 17, 1, 1, 1);
	        grid.attach (new PeriodItem("VIII"), 18, 1, 3, 1);

			grid.attach (new PeriodItem("I"), 0, 2, 1, 1);
			grid.attach (listElementItems[0], 1, 2, 1, 1);
			grid.attach (listElementItems[1], 18, 2, 1, 1);

			grid.attach (new PeriodItem("II"), 0, 3, 1, 1);
			grid.attach (listElementItems[2], 1, 3, 1, 1);
			grid.attach (listElementItems[3], 2, 3, 1, 1);
			grid.attach (listElementItems[4], 13, 3, 1, 1);
			grid.attach (listElementItems[5], 14, 3, 1, 1);
			grid.attach (listElementItems[6], 15, 3, 1, 1);
			grid.attach (listElementItems[7], 16, 3, 1, 1);
			grid.attach (listElementItems[8], 17, 3, 1, 1);
			grid.attach (listElementItems[9], 18, 3, 1, 1);

			grid.attach (new PeriodItem("III"), 0, 4, 1, 1);
			grid.attach (listElementItems[10], 1, 4, 1, 1);
			grid.attach (listElementItems[11], 2, 4, 1, 1);
			grid.attach (listElementItems[12], 13, 4, 1, 1);
			grid.attach (listElementItems[13], 14, 4, 1, 1);
			grid.attach (listElementItems[14], 15, 4, 1, 1);
			grid.attach (listElementItems[15], 16, 4, 1, 1);
			grid.attach (listElementItems[16], 17, 4, 1, 1);
			grid.attach (listElementItems[17], 18, 4, 1, 1);

			grid.attach (new PeriodItem("IV"), 0, 5, 1, 1);
			grid.attach (listElementItems[18], 1, 5, 1, 1);
			grid.attach (listElementItems[19], 2, 5, 1, 1);
			grid.attach (listElementItems[20], 3, 5, 1, 1);
			grid.attach (listElementItems[21], 4, 5, 1, 1);
			grid.attach (listElementItems[22], 5, 5, 1, 1);
			grid.attach (listElementItems[23], 6, 5, 1, 1);
			grid.attach (listElementItems[24], 7, 5, 1, 1);
			grid.attach (listElementItems[25], 8, 5, 1, 1);
			grid.attach (listElementItems[26], 9, 5, 1, 1);
			grid.attach (listElementItems[27], 10, 5, 1, 1);
			grid.attach (listElementItems[28], 11, 5, 1, 1);
			grid.attach (listElementItems[29], 12, 5, 1, 1);
			grid.attach (listElementItems[30], 13, 5, 1, 1);
			grid.attach (listElementItems[31], 14, 5, 1, 1);
			grid.attach (listElementItems[32], 15, 5, 1, 1);
			grid.attach (listElementItems[33], 16, 5, 1, 1);
			grid.attach (listElementItems[34], 17, 5, 1, 1);
			grid.attach (listElementItems[35], 18, 5, 1, 1);

			grid.attach (new PeriodItem("V"), 0, 6, 1, 1);
			grid.attach (listElementItems[36], 1, 6, 1, 1);
			grid.attach (listElementItems[37], 2, 6, 1, 1);
			grid.attach (listElementItems[38], 3, 6, 1, 1);
			grid.attach (listElementItems[39], 4, 6, 1, 1);
			grid.attach (listElementItems[40], 5, 6, 1, 1);
			grid.attach (listElementItems[41], 6, 6, 1, 1);
			grid.attach (listElementItems[42], 7, 6, 1, 1);
			grid.attach (listElementItems[43], 8, 6, 1, 1);
			grid.attach (listElementItems[44], 9, 6, 1, 1);
			grid.attach (listElementItems[45], 10, 6, 1, 1);
			grid.attach (listElementItems[46], 11, 6, 1, 1);
			grid.attach (listElementItems[47], 12, 6, 1, 1);
			grid.attach (listElementItems[48], 13, 6, 1, 1);
			grid.attach (listElementItems[49], 14, 6, 1, 1);
			grid.attach (listElementItems[50], 15, 6, 1, 1);
			grid.attach (listElementItems[51], 16, 6, 1, 1);
			grid.attach (listElementItems[52], 17, 6, 1, 1);
			grid.attach (listElementItems[53], 18, 6, 1, 1);

			grid.attach (new PeriodItem("VI"), 0, 7, 1, 1);
			grid.attach (listElementItems[54], 1, 7, 1, 1);
			grid.attach (listElementItems[55], 2, 7, 1, 1);
			grid.attach (listElementItems[56], 3, 7, 1, 1);
			grid.attach (listElementItems[71], 4, 7, 1, 1);
			grid.attach (listElementItems[72], 5, 7, 1, 1);
			grid.attach (listElementItems[73], 6, 7, 1, 1);
			grid.attach (listElementItems[74], 7, 7, 1, 1);
			grid.attach (listElementItems[75], 8, 7, 1, 1);
			grid.attach (listElementItems[76], 9, 7, 1, 1);
			grid.attach (listElementItems[77], 10, 7, 1, 1);
			grid.attach (listElementItems[78], 11, 7, 1, 1);
			grid.attach (listElementItems[79], 12, 7, 1, 1);
			grid.attach (listElementItems[80], 13, 7, 1, 1);
			grid.attach (listElementItems[81], 14, 7, 1, 1);
			grid.attach (listElementItems[82], 15, 7, 1, 1);
			grid.attach (listElementItems[83], 16, 7, 1, 1);
			grid.attach (listElementItems[84], 17, 7, 1, 1);
			grid.attach (listElementItems[85], 18, 7, 1, 1);

			grid.attach (new PeriodItem("VII"), 0, 8, 1, 1);
			grid.attach (listElementItems[86], 1, 8, 1, 1);
			grid.attach (listElementItems[87], 2, 8, 1, 1);
			grid.attach (listElementItems[88], 3, 8, 1, 1);///////////
			grid.attach (listElementItems[103], 4, 8, 1, 1);
			grid.attach (listElementItems[104], 5, 8, 1, 1);
			grid.attach (listElementItems[105], 6, 8, 1, 1);
			grid.attach (listElementItems[106], 7, 8, 1, 1);
			grid.attach (listElementItems[107], 8, 8, 1, 1);
			grid.attach (listElementItems[108], 9, 8, 1, 1);
			grid.attach (listElementItems[109], 10, 8, 1, 1);
			grid.attach (listElementItems[110], 11, 8, 1, 1);
			grid.attach (listElementItems[111], 12, 8, 1, 1);
			grid.attach (listElementItems[112], 13, 8, 1, 1);
			grid.attach (listElementItems[113], 14, 8, 1, 1);
			grid.attach (listElementItems[114], 15, 8, 1, 1);
			grid.attach (listElementItems[115], 16, 8, 1, 1);
			grid.attach (listElementItems[116], 17, 8, 1, 1);
			grid.attach (listElementItems[117], 18, 8, 1, 1);

			grid.attach (new PeriodItem("RO"), 0, 9, 1, 1);
			grid.attach (new OHItem("R","2","O",""), 1, 9, 1, 1);
			grid.attach (new OHItem("R","","O",""), 2, 9, 1, 1);
			grid.attach (new OHItem("R","2","O","3"), 3, 9, 1, 1);
			grid.attach (new OHItem("R","","O","2"), 4, 9, 1, 1);
			grid.attach (new OHItem("R","2","O","5"), 5, 9, 1, 1);
			grid.attach (new OHItem("R","","O","3"), 6, 9, 1, 1);
			grid.attach (new OHItem("R","2","O","7"), 7, 9, 1, 1);
			grid.attach (new OHItem("R","","O","4"), 8, 9, 3, 1);

			grid.attach (new OHItem("R","2","O",""), 11, 9, 1, 1);
			grid.attach (new OHItem("R","","O",""), 12, 9, 1, 1);
			grid.attach (new OHItem("R","2","O","3"), 13, 9, 1, 1);
			grid.attach (new OHItem("R","","O","2"), 14, 9, 1, 1);
			grid.attach (new OHItem("R","2","O","5"), 15, 9, 1, 1);
			grid.attach (new OHItem("R","","O","3"), 16, 9, 1, 1);
			grid.attach (new OHItem("R","2","O","7"), 17, 9, 1, 1);
			grid.attach (new OHItem("R","","O","4"), 18, 9, 1, 1);

			grid.attach (new PeriodItem("RH"), 0, 10, 1, 1);

			grid.attach (new OHItem("R","","H","4"), 14, 10, 1, 1);
			grid.attach (new OHItem("R","","H","3"), 15, 10, 1, 1);
			grid.attach (new OHItem("R","","H","2"), 16, 10, 1, 1);
			grid.attach (new OHItem("R","","H",""), 17, 10, 1, 1);

			grid.attach (new PeriodItem("VI"), 0, 11, 1, 1);
			grid.attach (new PeriodItem(TextOperation.TextTrim("Lanthanides",10)), 1, 11, 3, 1);
			//grid.attach (listElementItems[56], 5, 11, 1, 1);
			grid.attach (lantanElementItem, 4, 11, 1, 1);
			grid.attach (listElementItems[57], 5, 11, 1, 1);
			grid.attach (listElementItems[58], 6, 11, 1, 1);
			grid.attach (listElementItems[59], 7, 11, 1, 1);
			grid.attach (listElementItems[60], 8, 11, 1, 1);
			grid.attach (listElementItems[61], 9, 11, 1, 1);
			grid.attach (listElementItems[62], 10, 11, 1, 1);
			grid.attach (listElementItems[63], 11, 11, 1, 1);
			grid.attach (listElementItems[64], 12, 11, 1, 1);
			grid.attach (listElementItems[65], 13, 11, 1, 1);
			grid.attach (listElementItems[66], 14, 11, 1, 1);
			grid.attach (listElementItems[67], 15, 11, 1, 1);
			grid.attach (listElementItems[68], 16, 11, 1, 1);
			grid.attach (listElementItems[69], 17, 11, 1, 1);
			grid.attach (listElementItems[70], 18, 11, 1, 1);

			grid.attach (new PeriodItem("VII"), 0, 12, 1, 1);
			grid.attach (new PeriodItem(TextOperation.TextTrim("Actinides",10)), 1, 12, 3, 1);
//			grid.attach (listElementItems[88], 4, 12, 1, 1);
			grid.attach (actanElementItem, 4, 12, 1, 1);
			grid.attach (listElementItems[89], 5, 12, 1, 1);
			grid.attach (listElementItems[90], 6, 12, 1, 1);
			grid.attach (listElementItems[91], 7, 12, 1, 1);
			grid.attach (listElementItems[92], 8, 12, 1, 1);
			grid.attach (listElementItems[93], 9, 12, 1, 1);
			grid.attach (listElementItems[94], 10, 12, 1, 1);
			grid.attach (listElementItems[95], 11, 12, 1, 1);
			grid.attach (listElementItems[96], 12, 12, 1, 1);
			grid.attach (listElementItems[97], 13, 12, 1, 1);
			grid.attach (listElementItems[98], 14, 12, 1, 1);
			grid.attach (listElementItems[99], 15, 12, 1, 1);
			grid.attach (listElementItems[100], 16, 12, 1, 1);
			grid.attach (listElementItems[101], 17, 12, 1, 1);
			grid.attach (listElementItems[102], 18, 12, 1, 1);///////////

			grid.attach (new TitleItem("Properties"), 1, 13, 19, 1);
//			grid.attach (new PropertiesItem(TextOperation.TextTrim("Properties",7), multiElement.Resourse.cUnknown), 1, 13, 19, 1);
			grid.attach (listPropertiesItems[0], 1, 14, 2, 1);
			grid.attach (listPropertiesItems[1], 3, 14, 2, 1);
			grid.attach (listPropertiesItems[2], 5, 14, 2, 1);
			grid.attach (listPropertiesItems[3], 7, 14, 2, 1);
			grid.attach (listPropertiesItems[4], 9, 14, 2, 1);
			grid.attach (listPropertiesItems[5], 11, 14, 2, 1);
			grid.attach (listPropertiesItems[6], 13, 14, 2, 1);
			grid.attach (listPropertiesItems[7], 15, 14, 2, 1);
			grid.attach (listPropertiesItems[8], 17, 14, 2, 1);

/*
	        grid.attach (new PeriodItem("Group"), 1, 0, 19, 1);

	        grid.attach (new TitleItem("Period"), 0, 0, 1, 2);
	        grid.attach (new PeriodItem("I"), 1, 1, 1, 1);
	        grid.attach (new PeriodItem("II"), 2, 1, 1, 1);
	        grid.attach (new PeriodItem("III"), 3, 1, 1, 1);
	        grid.attach (new PeriodItem("IV"), 4, 1, 1, 1);
	        grid.attach (new PeriodItem("V"), 5, 1, 1, 1);
	        grid.attach (new PeriodItem("VI"), 6, 1, 1, 1);
	        grid.attach (new PeriodItem("VII"), 7, 1, 1, 1);
	        grid.attach (new PeriodItem("VIII"), 8, 1, 3, 1);
	        grid.attach (new PeriodItem("I"), 11, 1, 1, 1);
	        grid.attach (new PeriodItem("II"), 12, 1, 1, 1);
	        grid.attach (new PeriodItem("III"), 13, 1, 1, 1);
	        grid.attach (new PeriodItem("IV"), 14, 1, 1, 1);
	        grid.attach (new PeriodItem("V"), 15, 1, 1, 1);
	        grid.attach (new PeriodItem("VI"), 16, 1, 1, 1);
	        grid.attach (new PeriodItem("VII"), 17, 1, 1, 1);
	        grid.attach (new PeriodItem("VIII"), 18, 1, 3, 1);

			grid.attach (new PeriodItem("I"), 0, 2, 1, 1);
			grid.attach (new ElementItem("1","H","1.0079", multiElement.Resourse.cNemetal, parent), 1, 2, 1, 1);
			grid.attach (new ElementItem("2","He","4.0026", multiElement.Resourse.cReal, parent), 18, 2, 1, 1);

			grid.attach (new PeriodItem("II"), 0, 3, 1, 1);
			grid.attach (new ElementItem("3","Li","6.9412", multiElement.Resourse.cSheloch, parent), 1, 3, 1, 1);
			grid.attach (new ElementItem("4","Be","9.0121", multiElement.Resourse.cShelLand, parent), 2, 3, 1, 1);
			grid.attach (new ElementItem("5","B","10.811", multiElement.Resourse.cPolimetal, parent), 13, 3, 1, 1);
			grid.attach (new ElementItem("6","C","12.011", multiElement.Resourse.cNemetal, parent), 14, 3, 1, 1);
			grid.attach (new ElementItem("7","N","14.007", multiElement.Resourse.cNemetal, parent), 15, 3, 1, 1);
			grid.attach (new ElementItem("8","O","15.999", multiElement.Resourse.cNemetal, parent), 16, 3, 1, 1);
			grid.attach (new ElementItem("9","F","18.998", multiElement.Resourse.cGalogen, parent), 17, 3, 1, 1);
			grid.attach (new ElementItem("10","Ne","20.179", multiElement.Resourse.cReal, parent), 18, 3, 1, 1);

			grid.attach (new PeriodItem("III"), 0, 4, 1, 1);
			grid.attach (new ElementItem("11","Na","22.989", multiElement.Resourse.cSheloch, parent), 1, 4, 1, 1);
			grid.attach (new ElementItem("12","Mg","24.305", multiElement.Resourse.cShelLand, parent), 2, 4, 1, 1);
			grid.attach (new ElementItem("13","Al","26.982", multiElement.Resourse.cPostmetal, parent), 13, 4, 1, 1);
			grid.attach (new ElementItem("14","Si","28.086", multiElement.Resourse.cPolimetal, parent), 14, 4, 1, 1);
			grid.attach (new ElementItem("15","P","30.974", multiElement.Resourse.cNemetal, parent), 15, 4, 1, 1);
			grid.attach (new ElementItem("16","S","32.066", multiElement.Resourse.cNemetal, parent), 16, 4, 1, 1);
			grid.attach (new ElementItem("17","Cl","35.453", multiElement.Resourse.cGalogen, parent), 17, 4, 1, 1);
			grid.attach (new ElementItem("18","Ar","39.948", multiElement.Resourse.cReal, parent), 18, 4, 1, 1);

			grid.attach (new PeriodItem("IV"), 0, 5, 1, 1);
			grid.attach (new ElementItem("19","K","39.098", multiElement.Resourse.cSheloch, parent), 1, 5, 1, 1);
			grid.attach (new ElementItem("20","Ca","40.078", multiElement.Resourse.cShelLand, parent), 2, 5, 1, 1);
			grid.attach (new ElementItem("21","Sc","44.956", multiElement.Resourse.cMetal, parent), 3, 5, 1, 1);
			grid.attach (new ElementItem("22","Ti","47.88", multiElement.Resourse.cMetal, parent), 4, 5, 1, 1);
			grid.attach (new ElementItem("23","V","50.942", multiElement.Resourse.cMetal, parent), 5, 5, 1, 1);
			grid.attach (new ElementItem("24","Cr","51.996", multiElement.Resourse.cMetal, parent), 6, 5, 1, 1);
			grid.attach (new ElementItem("25","Mn","54.938", multiElement.Resourse.cMetal, parent), 7, 5, 1, 1);
			grid.attach (new ElementItem("26","Fe","55.847", multiElement.Resourse.cMetal, parent), 8, 5, 1, 1);
			grid.attach (new ElementItem("27","Co","58.993", multiElement.Resourse.cMetal, parent), 9, 5, 1, 1);
			grid.attach (new ElementItem("28","Ni","58.69", multiElement.Resourse.cMetal, parent), 10, 5, 1, 1);
			grid.attach (new ElementItem("29","Cu","63.546", multiElement.Resourse.cMetal, parent), 11, 5, 1, 1);
			grid.attach (new ElementItem("30","Zn","65.39", multiElement.Resourse.cMetal, parent), 12, 5, 1, 1);
			grid.attach (new ElementItem("31","Ga","69.723", multiElement.Resourse.cPostmetal, parent), 13, 5, 1, 1);
			grid.attach (new ElementItem("32","Ge","72.59", multiElement.Resourse.cPolimetal, parent), 14, 5, 1, 1);
			grid.attach (new ElementItem("33","As","74.922", multiElement.Resourse.cPolimetal, parent), 15, 5, 1, 1);
			grid.attach (new ElementItem("34","Se","78.96", multiElement.Resourse.cNemetal, parent), 16, 5, 1, 1);
			grid.attach (new ElementItem("35","Br","79.904", multiElement.Resourse.cGalogen, parent), 17, 5, 1, 1);
			grid.attach (new ElementItem("36","Kr","83.80", multiElement.Resourse.cReal, parent), 18, 5, 1, 1);

			grid.attach (new PeriodItem("V"), 0, 6, 1, 1);
			grid.attach (new ElementItem("37","Rb","85.468", multiElement.Resourse.cSheloch, parent), 1, 6, 1, 1);
			grid.attach (new ElementItem("38","Sr","87.82", multiElement.Resourse.cShelLand, parent), 2, 6, 1, 1);
			grid.attach (new ElementItem("39","Y","88.906", multiElement.Resourse.cMetal, parent), 3, 6, 1, 1);
			grid.attach (new ElementItem("40","Zr","91.224", multiElement.Resourse.cMetal, parent), 4, 6, 1, 1);
			grid.attach (new ElementItem("41","Nb","92.906", multiElement.Resourse.cMetal, parent), 5, 6, 1, 1);
			grid.attach (new ElementItem("42","Mo","95.94", multiElement.Resourse.cMetal, parent), 6, 6, 1, 1);
			grid.attach (new ElementItem("43","Tc","98.906", multiElement.Resourse.cMetal, parent), 7, 6, 1, 1);
			grid.attach (new ElementItem("44","Ru","101.07", multiElement.Resourse.cMetal, parent), 8, 6, 1, 1);
			grid.attach (new ElementItem("45","Rh","102.91", multiElement.Resourse.cMetal, parent), 9, 6, 1, 1);
			grid.attach (new ElementItem("46","Pd","106.42", multiElement.Resourse.cMetal, parent), 10, 6, 1, 1);
			grid.attach (new ElementItem("47","Ag","107.87", multiElement.Resourse.cMetal, parent), 11, 6, 1, 1);
			grid.attach (new ElementItem("48","Cd","112.41", multiElement.Resourse.cMetal, parent), 12, 6, 1, 1);
			grid.attach (new ElementItem("49","In","114.82", multiElement.Resourse.cPostmetal, parent), 13, 6, 1, 1);
			grid.attach (new ElementItem("50","Sn","118.71", multiElement.Resourse.cPostmetal, parent), 14, 6, 1, 1);
			grid.attach (new ElementItem("51","Sb","121.75", multiElement.Resourse.cPolimetal, parent), 15, 6, 1, 1);
			grid.attach (new ElementItem("52","Te","127.60", multiElement.Resourse.cPolimetal, parent), 16, 6, 1, 1);
			grid.attach (new ElementItem("53","I","126.91", multiElement.Resourse.cGalogen, parent), 17, 6, 1, 1);
			grid.attach (new ElementItem("54","Xe","131.29", multiElement.Resourse.cReal, parent), 18, 6, 1, 1);

			grid.attach (new PeriodItem("VI"), 0, 7, 1, 1);
			grid.attach (new ElementItem("55","Cs","132.91", multiElement.Resourse.cSheloch, parent), 1, 7, 1, 1);
			grid.attach (new ElementItem("56","Ba","137.33", multiElement.Resourse.cShelLand, parent), 2, 7, 1, 1);
			grid.attach (new ElementItem("57","La","138.90", multiElement.Resourse.cLantan, parent), 3, 7, 1, 1);///////////
			grid.attach (new ElementItem("72","Hf","178.49", multiElement.Resourse.cMetal, parent), 4, 7, 1, 1);
			grid.attach (new ElementItem("73","Ta","180.95", multiElement.Resourse.cMetal, parent), 5, 7, 1, 1);
			grid.attach (new ElementItem("74","W","183.85", multiElement.Resourse.cMetal, parent), 6, 7, 1, 1);
			grid.attach (new ElementItem("75","Re","185.21", multiElement.Resourse.cMetal, parent), 7, 7, 1, 1);
			grid.attach (new ElementItem("76","Os","190.2", multiElement.Resourse.cMetal, parent), 8, 7, 1, 1);
			grid.attach (new ElementItem("77","Ir","192.22", multiElement.Resourse.cMetal, parent), 9, 7, 1, 1);
			grid.attach (new ElementItem("78","Pt","195.08", multiElement.Resourse.cMetal, parent), 10, 7, 1, 1);
			grid.attach (new ElementItem("79","Au","196.97", multiElement.Resourse.cMetal, parent), 11, 7, 1, 1);
			grid.attach (new ElementItem("80","Hg","200.59", multiElement.Resourse.cMetal, parent), 12, 7, 1, 1);
			grid.attach (new ElementItem("81","Tl","204.38", multiElement.Resourse.cPostmetal, parent), 13, 7, 1, 1);
			grid.attach (new ElementItem("82","Pb","207.2", multiElement.Resourse.cPostmetal, parent), 14, 7, 1, 1);
			grid.attach (new ElementItem("83","Bi","208.98", multiElement.Resourse.cPostmetal, parent), 15, 7, 1, 1);
			grid.attach (new ElementItem("84","Po","[209]", multiElement.Resourse.cPolimetal, parent), 16, 7, 1, 1);
			grid.attach (new ElementItem("85","At","[210]", multiElement.Resourse.cGalogen, parent), 17, 7, 1, 1);
			grid.attach (new ElementItem("86","Rn","[222]", multiElement.Resourse.cReal, parent), 18, 7, 1, 1);

			grid.attach (new PeriodItem("VII"), 0, 8, 1, 1);
			grid.attach (new ElementItem("87","Fr","[223]", multiElement.Resourse.cSheloch, parent), 1, 8, 1, 1);
			grid.attach (new ElementItem("88","Ra","226.02", multiElement.Resourse.cShelLand, parent), 2, 8, 1, 1);
			grid.attach (new ElementItem("89","Ac","[227]", multiElement.Resourse.cActan, parent), 3, 8, 1, 1);///////////
			grid.attach (new ElementItem("104","Rf","[261]", multiElement.Resourse.cMetal, parent), 4, 8, 1, 1);
			grid.attach (new ElementItem("105","Db","[268]", multiElement.Resourse.cMetal, parent), 5, 8, 1, 1);
			grid.attach (new ElementItem("106","Sg","[271]", multiElement.Resourse.cMetal, parent), 6, 8, 1, 1);
			grid.attach (new ElementItem("107","Bh","[267]", multiElement.Resourse.cMetal, parent), 7, 8, 1, 1);
			grid.attach (new ElementItem("108","Hs","[269]", multiElement.Resourse.cMetal, parent), 8, 8, 1, 1);
			grid.attach (new ElementItem("109","Mt","[276]", multiElement.Resourse.cMetal, parent), 9, 8, 1, 1);
			grid.attach (new ElementItem("110","Ds","[281]", multiElement.Resourse.cMetal, parent), 10, 8, 1, 1);
			grid.attach (new ElementItem("111","Rg","[281]", multiElement.Resourse.cMetal, parent), 11, 8, 1, 1);
			grid.attach (new ElementItem("112","Cn","[285]", multiElement.Resourse.cMetal, parent), 12, 8, 1, 1);
			grid.attach (new ElementItem("113","Nh","[284]", multiElement.Resourse.cPostmetal, parent), 13, 8, 1, 1);
			grid.attach (new ElementItem("114","Fl","[289]", multiElement.Resourse.cPostmetal, parent), 14, 8, 1, 1);
			grid.attach (new ElementItem("115","Mc","[288]", multiElement.Resourse.cPostmetal, parent), 15, 8, 1, 1);
			grid.attach (new ElementItem("116","Lv","[293]", multiElement.Resourse.cPostmetal, parent), 16, 8, 1, 1);
			grid.attach (new ElementItem("117","Ts","[294]", multiElement.Resourse.cGalogen, parent), 17, 8, 1, 1);
			grid.attach (new ElementItem("118","Og","[294]", multiElement.Resourse.cReal, parent), 18, 8, 1, 1);

			grid.attach (new PeriodItem("RO"), 0, 9, 1, 1);
			grid.attach (new OHItem("R","2","O",""), 1, 9, 1, 1);
			grid.attach (new OHItem("R","","O",""), 2, 9, 1, 1);
			grid.attach (new OHItem("R","2","O","3"), 3, 9, 1, 1);
			grid.attach (new OHItem("R","","O","2"), 4, 9, 1, 1);
			grid.attach (new OHItem("R","2","O","5"), 5, 9, 1, 1);
			grid.attach (new OHItem("R","","O","3"), 6, 9, 1, 1);
			grid.attach (new OHItem("R","2","O","7"), 7, 9, 1, 1);
			grid.attach (new OHItem("R","","O","4"), 8, 9, 3, 1);

			grid.attach (new OHItem("R","2","O",""), 11, 9, 1, 1);
			grid.attach (new OHItem("R","","O",""), 12, 9, 1, 1);
			grid.attach (new OHItem("R","2","O","3"), 13, 9, 1, 1);
			grid.attach (new OHItem("R","","O","2"), 14, 9, 1, 1);
			grid.attach (new OHItem("R","2","O","5"), 15, 9, 1, 1);
			grid.attach (new OHItem("R","","O","3"), 16, 9, 1, 1);
			grid.attach (new OHItem("R","2","O","7"), 17, 9, 1, 1);
			grid.attach (new OHItem("R","","O","4"), 18, 9, 1, 1);

			grid.attach (new PeriodItem("RH"), 0, 10, 1, 1);

			grid.attach (new OHItem("R","","H","4"), 14, 10, 1, 1);
			grid.attach (new OHItem("R","","H","3"), 15, 10, 1, 1);
			grid.attach (new OHItem("R","","H","2"), 16, 10, 1, 1);
			grid.attach (new OHItem("R","","H",""), 17, 10, 1, 1);

			grid.attach (new PeriodItem("VI"), 0, 11, 1, 1);
			grid.attach (new PeriodItem(TextOperation.TextTrim("Lanthanides",10)), 1, 11, 3, 1);
			grid.attach (new ElementItem("57","La","138.90", multiElement.Resourse.cLantan, parent), 4, 11, 1, 1);///////////
			grid.attach (new ElementItem("58","Ce","140.12", multiElement.Resourse.cLantan, parent), 5, 11, 1, 1);///////////
			grid.attach (new ElementItem("59","Pr","140.91", multiElement.Resourse.cLantan, parent), 6, 11, 1, 1);///////////
			grid.attach (new ElementItem("60","Nd","144.24", multiElement.Resourse.cLantan, parent), 7, 11, 1, 1);///////////
			grid.attach (new ElementItem("61","Pm","[145]", multiElement.Resourse.cLantan, parent), 8, 11, 1, 1);///////////
			grid.attach (new ElementItem("62","Sm","150.36", multiElement.Resourse.cLantan, parent), 9, 11, 1, 1);///////////
			grid.attach (new ElementItem("63","Eu","151.96", multiElement.Resourse.cLantan, parent), 10, 11, 1, 1);///////////
			grid.attach (new ElementItem("64","Gd","157.25", multiElement.Resourse.cLantan, parent), 11, 11, 1, 1);///////////
			grid.attach (new ElementItem("65","Tb","158.93", multiElement.Resourse.cLantan, parent), 12, 11, 1, 1);///////////
			grid.attach (new ElementItem("66","Dy","162.50", multiElement.Resourse.cLantan, parent), 13, 11, 1, 1);///////////
			grid.attach (new ElementItem("67","Ho","164.93", multiElement.Resourse.cLantan, parent), 14, 11, 1, 1);///////////
			grid.attach (new ElementItem("68","Er","167.26", multiElement.Resourse.cLantan, parent), 15, 11, 1, 1);///////////
			grid.attach (new ElementItem("69","Tm","168.93", multiElement.Resourse.cLantan, parent), 16, 11, 1, 1);///////////
			grid.attach (new ElementItem("70","Yb","173.61", multiElement.Resourse.cLantan, parent), 17, 11, 1, 1);///////////
			grid.attach (new ElementItem("71","Lu","174.96", multiElement.Resourse.cLantan, parent), 18, 11, 1, 1);///////////

			grid.attach (new PeriodItem("VII"), 0, 12, 1, 1);
			grid.attach (new PeriodItem(TextOperation.TextTrim("Actinides",10)), 1, 12, 3, 1);
			grid.attach (new ElementItem("89","Ac","[227]", multiElement.Resourse.cActan, parent), 4, 12, 1, 1);///////////
			grid.attach (new ElementItem("90","Th","223.04", multiElement.Resourse.cActan, parent), 5, 12, 1, 1);///////////
			grid.attach (new ElementItem("91","Pa","[231]", multiElement.Resourse.cActan, parent), 6, 12, 1, 1);///////////
			grid.attach (new ElementItem("92","U","238.02", multiElement.Resourse.cActan, parent), 7, 12, 1, 1);///////////
			grid.attach (new ElementItem("93","Np","237.04", multiElement.Resourse.cActan, parent), 8, 12, 1, 1);///////////
			grid.attach (new ElementItem("94","Pu","[244]", multiElement.Resourse.cActan, parent), 9, 12, 1, 1);///////////
			grid.attach (new ElementItem("95","Am","[243]", multiElement.Resourse.cActan, parent), 10, 12, 1, 1);///////////
			grid.attach (new ElementItem("96","Cm","[247]", multiElement.Resourse.cActan, parent), 11, 12, 1, 1);///////////
			grid.attach (new ElementItem("97","Bk","[247]", multiElement.Resourse.cActan, parent), 12, 12, 1, 1);///////////
			grid.attach (new ElementItem("98","Cf","[251]", multiElement.Resourse.cActan, parent), 13, 12, 1, 1);///////////
			grid.attach (new ElementItem("99","Es","[252]", multiElement.Resourse.cActan, parent), 14, 12, 1, 1);///////////
			grid.attach (new ElementItem("100","Fm","[257]", multiElement.Resourse.cActan, parent), 15, 12, 1, 1);///////////
			grid.attach (new ElementItem("101","Md","[258]", multiElement.Resourse.cActan, parent), 16, 12, 1, 1);///////////
			grid.attach (new ElementItem("102","No","259.1", multiElement.Resourse.cActan, parent), 17, 12, 1, 1);///////////
			grid.attach (new ElementItem("103","Lr","[266]", multiElement.Resourse.cActan, parent), 18, 12, 1, 1);///////////

//			grid.attach (new TitleItem(TextOperation.TextTrim("Properties",7)), 0, 13, 1, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Properties",7), multiElement.Resourse.cUnknown), 1, 13, 19, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Halogens",11), multiElement.Resourse.cGalogen), 1, 14, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Noble gases",11), multiElement.Resourse.cReal), 3, 14, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Non metal",11), multiElement.Resourse.cNemetal), 5, 14, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Alkali metals",11), multiElement.Resourse.cSheloch), 7, 14, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Alkaline earth metals",11), multiElement.Resourse.cShelLand), 9, 14, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Transition metals",11), multiElement.Resourse.cMetal), 11, 14, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Post-transition metals",11), multiElement.Resourse.cPostmetal), 13, 14, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Semimetals",11), multiElement.Resourse.cPolimetal), 15, 14, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Properties unknown",11), multiElement.Resourse.cUnknown), 17, 14, 2, 1);
*/
            var centerBox = new CenterBox ();
            centerBox.set_center_widget (grid);
            scroll.set_child (centerBox);
            this.append(scroll);

//	        scroll.set_child (grid);
//            this.append(scroll);

//	        return mainBox;
        }
    }
}
