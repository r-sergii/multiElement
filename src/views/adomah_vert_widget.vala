using MyLib;

namespace Multielement {

    public class AdomahVertWidget
    {
        public Gee.ArrayList<ElementItem2> listElementItems;
        public Gee.ArrayList<PropertiesItem2> listPropertiesItems;
        public ElementItem2 hElementItem;
        public ElementItem2 heElementItem;

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
            hElementItem.changeTheme();
            heElementItem.changeTheme();
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
            listElementItems.add (new ElementItem2("1","H","1.0079", multiElement.Resourse.cssNemetal, parent, ItemView.Small));
            listElementItems.add (new ElementItem2("2","He","4.0026", multiElement.Resourse.cssReal, parent, ItemView.Small));
            hElementItem = new ElementItem2("1","H","1.0079", multiElement.Resourse.cssNemetal, parent, ItemView.Small);
            heElementItem = new ElementItem2("2","He","4.0026", multiElement.Resourse.cssReal, parent, ItemView.Small);

            listElementItems.add (new ElementItem2("3","Li","6.9412", multiElement.Resourse.cssSheloch, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("4","Be","9.0121", multiElement.Resourse.cssShelLand, parent, ItemView.Small));
            listElementItems.add (new ElementItem2("5","B","10.811", multiElement.Resourse.cssPolimetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("6","C","12.011", multiElement.Resourse.cssNemetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("7","N","14.007", multiElement.Resourse.cssNemetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("8","O","15.999", multiElement.Resourse.cssNemetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("9","F","18.998", multiElement.Resourse.cssGalogen, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("10","Ne","20.179", multiElement.Resourse.cssReal, parent, ItemView.Small));

	        listElementItems.add (new ElementItem2("11","Na","22.989", multiElement.Resourse.cssSheloch, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("12","Mg","24.305", multiElement.Resourse.cssShelLand, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("13","Al","26.982", multiElement.Resourse.cssPostmetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("14","Si","28.086", multiElement.Resourse.cssPolimetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("15","P","30.974", multiElement.Resourse.cssNemetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("16","S","32.066", multiElement.Resourse.cssNemetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("17","Cl","35.453", multiElement.Resourse.cssGalogen, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("18","Ar","39.948", multiElement.Resourse.cssReal, parent, ItemView.Small));

            listElementItems.add (new ElementItem2("19","K","39.098", multiElement.Resourse.cssSheloch, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("20","Ca","40.078", multiElement.Resourse.cssShelLand, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("21","Sc","44.956", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("22","Ti","47.88", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("23","V","50.942", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("24","Cr","51.996", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("25","Mn","54.938", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("26","Fe","55.847", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("27","Co","58.993", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("28","Ni","58.69", multiElement.Resourse.cssMetal, parent, ItemView.Small));

            listElementItems.add (new ElementItem2("29","Cu","63.546", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("30","Zn","65.39", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("31","Ga","69.723", multiElement.Resourse.cssPostmetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("32","Ge","72.59", multiElement.Resourse.cssPolimetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("33","As","74.922", multiElement.Resourse.cssPolimetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("34","Se","78.96", multiElement.Resourse.cssNemetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("35","Br","79.904", multiElement.Resourse.cssGalogen, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("36","Kr","83.80", multiElement.Resourse.cssReal, parent, ItemView.Small));

            listElementItems.add (new ElementItem2("37","Rb","85.468", multiElement.Resourse.cssSheloch, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("38","Sr","87.82", multiElement.Resourse.cssShelLand, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("39","Y","88.906", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("40","Zr","91.224", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("41","Nb","92.906", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("42","Mo","95.94", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("43","Tc","98.906", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("44","Ru","101.07", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("45","Rh","102.91", multiElement.Resourse.cssMetal, parent, ItemView.Small));
     	    listElementItems.add (new ElementItem2("46","Pd","106.42", multiElement.Resourse.cssMetal, parent, ItemView.Small));

	        listElementItems.add (new ElementItem2("47","Ag","107.87", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("48","Cd","112.41", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("49","In","114.82", multiElement.Resourse.cssPostmetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("50","Sn","118.71", multiElement.Resourse.cssPostmetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("51","Sb","121.75", multiElement.Resourse.cssPolimetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("52","Te","127.60", multiElement.Resourse.cssPolimetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("53","I","126.91", multiElement.Resourse.cssGalogen, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("54","Xe","131.29", multiElement.Resourse.cssReal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("55","Cs","132.91", multiElement.Resourse.cssSheloch, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("56","Ba","137.33", multiElement.Resourse.cssShelLand, parent, ItemView.Small));

	        listElementItems.add (new ElementItem2("57","La","138.90", multiElement.Resourse.cssLantan, parent, ItemView.Small));
            listElementItems.add (new ElementItem2("58","Ce","140.12", multiElement.Resourse.cssLantan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("59","Pr","140.91", multiElement.Resourse.cssLantan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("60","Nd","144.24", multiElement.Resourse.cssLantan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("61","Pm","[145]", multiElement.Resourse.cssLantan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("62","Sm","150.36", multiElement.Resourse.cssLantan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("63","Eu","151.96", multiElement.Resourse.cssLantan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("64","Gd","157.25", multiElement.Resourse.cssLantan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("65","Tb","158.93", multiElement.Resourse.cssLantan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("66","Dy","162.50", multiElement.Resourse.cssLantan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("67","Ho","164.93", multiElement.Resourse.cssLantan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("68","Er","167.26", multiElement.Resourse.cssLantan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("69","Tm","168.93", multiElement.Resourse.cssLantan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("70","Yb","173.61", multiElement.Resourse.cssLantan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("71","Lu","174.96", multiElement.Resourse.cssLantan, parent, ItemView.Small));

	        listElementItems.add (new ElementItem2("72","Hf","178.49", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("73","Ta","180.95", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("74","W","183.85", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("75","Re","185.21", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("76","Os","190.2", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("77","Ir","192.22", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("78","Pt","195.08", multiElement.Resourse.cssMetal, parent, ItemView.Small));

	        listElementItems.add (new ElementItem2("79","Au","196.97", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("80","Hg","200.59", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("81","Tl","204.38", multiElement.Resourse.cssPostmetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("82","Pb","207.2", multiElement.Resourse.cssPostmetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("83","Bi","208.98", multiElement.Resourse.cssPostmetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("84","Po","[209]", multiElement.Resourse.cssPolimetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("85","At","[210]", multiElement.Resourse.cssGalogen, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("86","Rn","[222]", multiElement.Resourse.cssReal, parent, ItemView.Small));

	        listElementItems.add (new ElementItem2("87","Fr","[223]", multiElement.Resourse.cssSheloch, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("88","Ra","226.02", multiElement.Resourse.cssShelLand, parent, ItemView.Small));

	        listElementItems.add (new ElementItem2("89","Ac","[227]", multiElement.Resourse.cssActan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("90","Th","223.04", multiElement.Resourse.cssActan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("91","Pa","[231]", multiElement.Resourse.cssActan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("92","U","238.02", multiElement.Resourse.cssActan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("93","Np","237.04", multiElement.Resourse.cssActan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("94","Pu","[244]", multiElement.Resourse.cssActan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("95","Am","[243]", multiElement.Resourse.cssActan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("96","Cm","[247]", multiElement.Resourse.cssActan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("97","Bk","[247]", multiElement.Resourse.cssActan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("98","Cf","[251]", multiElement.Resourse.cssActan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("99","Es","[252]", multiElement.Resourse.cssActan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("100","Fm","[257]", multiElement.Resourse.cssActan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("101","Md","[258]", multiElement.Resourse.cssActan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("102","No","259.1", multiElement.Resourse.cssActan, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("103","Lr","[266]", multiElement.Resourse.cssActan, parent, ItemView.Small));

	        listElementItems.add (new ElementItem2("104","Rf","[261]", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("105","Db","[268]", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("106","Sg","[271]", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("107","Bh","[267]", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("108","Hs","[269]", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("109","Mt","[276]", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("110","Ds","[281]", multiElement.Resourse.cssMetal, parent, ItemView.Small));

	        listElementItems.add (new ElementItem2("111","Rg","[281]", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("112","Cn","[285]", multiElement.Resourse.cssMetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("113","Nh","[284]", multiElement.Resourse.cssPostmetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("114","Fl","[289]", multiElement.Resourse.cssPostmetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("115","Mc","[288]", multiElement.Resourse.cssPostmetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("116","Lv","[293]", multiElement.Resourse.cssPostmetal, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("117","Ts","[294]", multiElement.Resourse.cssGalogen, parent, ItemView.Small));
	        listElementItems.add (new ElementItem2("118","Og","[294]", multiElement.Resourse.cssReal, parent, ItemView.Small));

            listElementItems.add (new ElementItem2("119","Uue","[]", multiElement.Resourse.cssUnknown, parent, ItemView.Small));
            listElementItems.add (new ElementItem2("120","Ubn","[]", multiElement.Resourse.cssUnknown, parent, ItemView.Small));

      }


//        public Gtk.Label AdomahVertWidget (Window parent)
        public Gtk.Box AdomahVertWidget (MainWindow parent)
        {
            init (parent);

//            return new Gtk.Label("Adomah Vert");
            Gtk.Box mainBox = new Gtk.Box (Gtk.Orientation.VERTICAL, 1);//0
	        //mainBox.set_border_width (2);//0;

            var itemWidgets = new ItemWidgets();
	        Gtk.ScrolledWindow scroll = new Gtk.ScrolledWindow ();//null, null);
	        scroll.set_policy (Gtk.PolicyType.AUTOMATIC, Gtk.PolicyType.AUTOMATIC);
//	        scroll.set_policy (Gtk.PolicyType.NEVER, Gtk.PolicyType.AUTOMATIC);
            scroll.set_vexpand(true);
            scroll.set_hexpand(true);

	        var grid = new Gtk.Grid() {
	            column_spacing = 2,
	            row_spacing = 2
	        };

			grid.attach (listElementItems[56], 4, 0, 1, 1);
			grid.attach (listElementItems[57], 4, 1, 1, 1);
			grid.attach (listElementItems[58], 4, 2, 1, 1);
			grid.attach (listElementItems[59], 4, 3, 1, 1);
			grid.attach (listElementItems[60], 4, 4, 1, 1);
			grid.attach (listElementItems[61], 4, 5, 1, 1);
			grid.attach (listElementItems[62], 4, 6, 1, 1);
			grid.attach (listElementItems[63], 4, 7, 1, 1);
			grid.attach (listElementItems[64], 4, 8, 1, 1);
			grid.attach (listElementItems[65], 4, 9, 1, 1);
			grid.attach (listElementItems[66], 4, 10, 1, 1);
			grid.attach (listElementItems[67], 4, 11, 1, 1);
			grid.attach (listElementItems[68], 4, 12, 1, 1);
			grid.attach (listElementItems[69], 4, 13, 1, 1);
			grid.attach (listElementItems[70], 5, 15, 1, 1);

			grid.attach (listElementItems[88], 5, 0, 1, 1);
			grid.attach (listElementItems[89], 5, 1, 1, 1);
			grid.attach (listElementItems[90], 5, 2, 1, 1);
			grid.attach (listElementItems[91], 5, 3, 1, 1);
			grid.attach (listElementItems[92], 5, 4, 1, 1);
			grid.attach (listElementItems[93], 5, 5, 1, 1);
			grid.attach (listElementItems[94], 5, 6, 1, 1);
			grid.attach (listElementItems[95], 5, 7, 1, 1);
			grid.attach (listElementItems[96], 5, 8, 1, 1);
			grid.attach (listElementItems[97], 5, 9, 1, 1);
			grid.attach (listElementItems[98], 5, 10, 1, 1);
			grid.attach (listElementItems[99], 5, 11, 1, 1);
			grid.attach (listElementItems[100], 5, 12, 1, 1);
			grid.attach (listElementItems[101], 5, 13, 1, 1);
			grid.attach (listElementItems[102], 6, 15, 1, 1);

			grid.attach (new PeriodItem("/"), 4, 14, 1, 1);
			grid.attach (new PeriodItem("/"), 5, 14, 1, 1);
			grid.attach (new PeriodItem("/"), 6, 14, 1, 1);

			grid.attach (listElementItems[20], 3, 15, 1, 1);
			grid.attach (listElementItems[21], 3, 16, 1, 1);
			grid.attach (listElementItems[22], 3, 17, 1, 1);
			grid.attach (listElementItems[23], 3, 18, 1, 1);
			grid.attach (listElementItems[24], 3, 19, 1, 1);
			grid.attach (listElementItems[25], 3, 20, 1, 1);
			grid.attach (listElementItems[26], 3, 21, 1, 1);
			grid.attach (listElementItems[27], 3, 22, 1, 1);
			grid.attach (listElementItems[28], 3, 23, 1, 1);
			grid.attach (listElementItems[29], 3, 24, 1, 1);

			grid.attach (listElementItems[38], 4, 15, 1, 1);
			grid.attach (listElementItems[39], 4, 16, 1, 1);
			grid.attach (listElementItems[40], 4, 17, 1, 1);
			grid.attach (listElementItems[41], 4, 18, 1, 1);
			grid.attach (listElementItems[42], 4, 19, 1, 1);
			grid.attach (listElementItems[43], 4, 20, 1, 1);
			grid.attach (listElementItems[44], 4, 21, 1, 1);
			grid.attach (listElementItems[45], 4, 22, 1, 1);
			grid.attach (listElementItems[46], 4, 23, 1, 1);
			grid.attach (listElementItems[47], 4, 24, 1, 1);

			grid.attach (listElementItems[71], 5, 16, 1, 1);
			grid.attach (listElementItems[72], 5, 17, 1, 1);
			grid.attach (listElementItems[73], 5, 18, 1, 1);
			grid.attach (listElementItems[74], 5, 19, 1, 1);
			grid.attach (listElementItems[75], 5, 20, 1, 1);
			grid.attach (listElementItems[76], 5, 21, 1, 1);
			grid.attach (listElementItems[77], 5, 22, 1, 1);
			grid.attach (listElementItems[78], 5, 23, 1, 1);
			grid.attach (listElementItems[79], 5, 24, 1, 1);

			grid.attach (listElementItems[103], 6, 16, 1, 1);
			grid.attach (listElementItems[104], 6, 17, 1, 1);
			grid.attach (listElementItems[105], 6, 18, 1, 1);
			grid.attach (listElementItems[106], 6, 19, 1, 1);
			grid.attach (listElementItems[107], 6, 20, 1, 1);
			grid.attach (listElementItems[108], 6, 21, 1, 1);
			grid.attach (listElementItems[109], 6, 22, 1, 1);
			grid.attach (listElementItems[110], 6, 23, 1, 1);
			grid.attach (listElementItems[111], 6, 24, 1, 1);

			grid.attach (new PeriodItem("/"), 3, 25, 1, 1);
			grid.attach (new PeriodItem("/"), 4, 25, 1, 1);
			grid.attach (new PeriodItem("/"), 5, 25, 1, 1);
			grid.attach (new PeriodItem("/"), 6, 25, 1, 1);
			grid.attach (new PeriodItem("/"), 7, 25, 1, 1);

			grid.attach (listElementItems[4], 2, 26, 1, 1);
			grid.attach (listElementItems[5], 2, 27, 1, 1);
			grid.attach (listElementItems[6], 2, 28, 1, 1);
			grid.attach (listElementItems[7], 2, 29, 1, 1);
			grid.attach (listElementItems[8], 2, 30, 1, 1);
			grid.attach (listElementItems[9], 2, 31, 1, 1);

			grid.attach (listElementItems[12], 3, 26, 1, 1);
			grid.attach (listElementItems[13], 3, 27, 1, 1);
			grid.attach (listElementItems[14], 3, 28, 1, 1);
			grid.attach (listElementItems[15], 3, 29, 1, 1);
			grid.attach (listElementItems[16], 3, 30, 1, 1);
			grid.attach (listElementItems[17], 3, 31, 1, 1);

			grid.attach (listElementItems[30], 4, 26, 1, 1);
			grid.attach (listElementItems[31], 4, 27, 1, 1);
			grid.attach (listElementItems[32], 4, 28, 1, 1);
			grid.attach (listElementItems[33], 4, 29, 1, 1);
			grid.attach (listElementItems[34], 4, 30, 1, 1);
			grid.attach (listElementItems[35], 4, 31, 1, 1);

			grid.attach (listElementItems[48], 5, 26, 1, 1);
			grid.attach (listElementItems[49], 5, 27, 1, 1);
			grid.attach (listElementItems[50], 5, 28, 1, 1);
			grid.attach (listElementItems[51], 5, 29, 1, 1);
			grid.attach (listElementItems[52], 5, 30, 1, 1);
			grid.attach (listElementItems[53], 5, 31, 1, 1);

			grid.attach (listElementItems[80], 6, 26, 1, 1);
			grid.attach (listElementItems[81], 6, 27, 1, 1);
			grid.attach (listElementItems[82], 6, 28, 1, 1);
			grid.attach (listElementItems[83], 6, 29, 1, 1);
			grid.attach (listElementItems[84], 6, 30, 1, 1);
			grid.attach (listElementItems[85], 6, 31, 1, 1);

			grid.attach (listElementItems[112], 7, 26, 1, 1);
			grid.attach (listElementItems[113], 7, 27, 1, 1);
			grid.attach (listElementItems[114], 7, 28, 1, 1);
			grid.attach (listElementItems[115], 7, 29, 1, 1);
			grid.attach (listElementItems[116], 7, 30, 1, 1);
			grid.attach (listElementItems[117], 7, 31, 1, 1);

			grid.attach (listElementItems[0], 1, 30, 1, 1);
			grid.attach (listElementItems[1], 1, 31, 1, 1);

			grid.attach (new PeriodItem("/"), 1, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 2, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 3, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 4, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 5, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 6, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 7, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 8, 32, 1, 1);

			grid.attach (hElementItem, 1, 33, 1, 1);
			grid.attach (heElementItem, 1, 34, 1, 1);

			grid.attach (listElementItems[2], 2, 33, 1, 1);
			grid.attach (listElementItems[3], 2, 34, 1, 1);

			grid.attach (listElementItems[10], 3, 33, 1, 1);
			grid.attach (listElementItems[11], 3, 34, 1, 1);

			grid.attach (listElementItems[18], 4, 33, 1, 1);
			grid.attach (listElementItems[19], 4, 34, 1, 1);

			grid.attach (listElementItems[36], 5, 33, 1, 1);
			grid.attach (listElementItems[37], 5, 34, 1, 1);

			grid.attach (listElementItems[54], 6, 33, 1, 1);
			grid.attach (listElementItems[55], 6, 34, 1, 1);

			grid.attach (listElementItems[86], 7, 33, 1, 1);
			grid.attach (listElementItems[87], 7, 34, 1, 1);

			grid.attach (listElementItems[118], 8, 33, 1, 1);
			grid.attach (listElementItems[119], 8, 34, 1, 1);

/*
			grid.attach (new ElementItem("57","La","138.90", multiElement.Resourse.cLantan, parent, ItemView.Small), 4, 0, 1, 1);///////////
			grid.attach (new ElementItem("58","Ce","140.12", multiElement.Resourse.cLantan, parent, ItemView.Small), 4, 1, 1, 1);///////////
			grid.attach (new ElementItem("59","Pr","140.91", multiElement.Resourse.cLantan, parent, ItemView.Small), 4, 2, 1, 1);///////////
			grid.attach (new ElementItem("60","Nd","144.24", multiElement.Resourse.cLantan, parent, ItemView.Small), 4, 3, 1, 1);///////////
			grid.attach (new ElementItem("61","Pm","[145]", multiElement.Resourse.cLantan, parent, ItemView.Small), 4, 4, 1, 1);///////////
			grid.attach (new ElementItem("62","Sm","150.36", multiElement.Resourse.cLantan, parent, ItemView.Small), 4, 5, 1, 1);///////////
			grid.attach (new ElementItem("63","Eu","151.96", multiElement.Resourse.cLantan, parent, ItemView.Small), 4, 6, 1, 1);///////////
			grid.attach (new ElementItem("64","Gd","157.25", multiElement.Resourse.cLantan, parent, ItemView.Small), 4, 7, 1, 1);///////////
			grid.attach (new ElementItem("65","Tb","158.93", multiElement.Resourse.cLantan, parent, ItemView.Small), 4, 8, 1, 1);///////////
			grid.attach (new ElementItem("66","Dy","162.50", multiElement.Resourse.cLantan, parent, ItemView.Small), 4, 9, 1, 1);///////////
			grid.attach (new ElementItem("67","Ho","164.93", multiElement.Resourse.cLantan, parent, ItemView.Small), 4, 10, 1, 1);///////////
			grid.attach (new ElementItem("68","Er","167.26", multiElement.Resourse.cLantan, parent, ItemView.Small), 4, 11, 1, 1);///////////
			grid.attach (new ElementItem("69","Tm","168.93", multiElement.Resourse.cLantan, parent, ItemView.Small), 4, 12, 1, 1);///////////
			grid.attach (new ElementItem("70","Yb","173.61", multiElement.Resourse.cLantan, parent, ItemView.Small), 4, 13, 1, 1);///////////
			grid.attach (new ElementItem("71","Lu","174.96", multiElement.Resourse.cLantan, parent, ItemView.Small), 5, 15, 1, 1);///////////

			grid.attach (new ElementItem("89","Ac","[227]", multiElement.Resourse.cActan, parent, ItemView.Small), 5, 0, 1, 1);///////////
			grid.attach (new ElementItem("90","Th","223.04", multiElement.Resourse.cActan, parent, ItemView.Small), 5, 1, 1, 1);///////////
			grid.attach (new ElementItem("91","Pa","[231]", multiElement.Resourse.cActan, parent, ItemView.Small), 5, 2, 1, 1);///////////
			grid.attach (new ElementItem("92","U","238.02", multiElement.Resourse.cActan, parent, ItemView.Small), 5, 3, 1, 1);///////////
			grid.attach (new ElementItem("93","Np","237.04", multiElement.Resourse.cActan, parent, ItemView.Small), 5, 4, 1, 1);///////////
			grid.attach (new ElementItem("94","Pu","[244]", multiElement.Resourse.cActan, parent, ItemView.Small), 5, 5, 1, 1);///////////
			grid.attach (new ElementItem("95","Am","[243]", multiElement.Resourse.cActan, parent, ItemView.Small), 5, 6, 1, 1);///////////
			grid.attach (new ElementItem("96","Cm","[247]", multiElement.Resourse.cActan, parent, ItemView.Small), 5, 7, 1, 1);///////////
			grid.attach (new ElementItem("97","Bk","[247]", multiElement.Resourse.cActan, parent, ItemView.Small), 5, 8, 1, 1);///////////
			grid.attach (new ElementItem("98","Cf","[251]", multiElement.Resourse.cActan, parent, ItemView.Small), 5, 9, 1, 1);///////////
			grid.attach (new ElementItem("99","Es","[252]", multiElement.Resourse.cActan, parent, ItemView.Small), 5, 10, 1, 1);///////////
			grid.attach (new ElementItem("100","Fm","[257]", multiElement.Resourse.cActan, parent, ItemView.Small), 5, 11, 1, 1);///////////
			grid.attach (new ElementItem("101","Md","[258]", multiElement.Resourse.cActan, parent, ItemView.Small), 5, 12, 1, 1);///////////
			grid.attach (new ElementItem("102","No","259.1", multiElement.Resourse.cActan, parent, ItemView.Small), 5, 13, 1, 1);///////////
			grid.attach (new ElementItem("103","Lr","[266]", multiElement.Resourse.cActan, parent, ItemView.Small), 6, 15, 1, 1);///////////

			grid.attach (new PeriodItem("/"), 4, 14, 1, 1);
			grid.attach (new PeriodItem("/"), 5, 14, 1, 1);
			grid.attach (new PeriodItem("/"), 6, 14, 1, 1);

			grid.attach (new ElementItem("21","Sc","44.956", multiElement.Resourse.cMetal, parent, ItemView.Small), 3, 15, 1, 1);
			grid.attach (new ElementItem("22","Ti","47.88", multiElement.Resourse.cMetal, parent, ItemView.Small), 3, 16, 1, 1);
			grid.attach (new ElementItem("23","V","50.942", multiElement.Resourse.cMetal, parent, ItemView.Small), 3, 17, 1, 1);
			grid.attach (new ElementItem("24","Cr","51.996", multiElement.Resourse.cMetal, parent, ItemView.Small), 3, 18, 1, 1);
			grid.attach (new ElementItem("25","Mn","54.938", multiElement.Resourse.cMetal, parent, ItemView.Small), 3, 19, 1, 1);
			grid.attach (new ElementItem("26","Fe","55.847", multiElement.Resourse.cMetal, parent, ItemView.Small), 3, 20, 1, 1);
			grid.attach (new ElementItem("27","Co","58.993", multiElement.Resourse.cMetal, parent, ItemView.Small), 3, 21, 1, 1);
			grid.attach (new ElementItem("28","Ni","58.69", multiElement.Resourse.cMetal, parent, ItemView.Small), 3, 22, 1, 1);
			grid.attach (new ElementItem("29","Cu","63.546", multiElement.Resourse.cMetal, parent, ItemView.Small), 3, 23, 1, 1);
			grid.attach (new ElementItem("30","Zn","65.39", multiElement.Resourse.cMetal, parent, ItemView.Small), 3, 24, 1, 1);

			grid.attach (new ElementItem("39","Y","88.906", multiElement.Resourse.cMetal, parent, ItemView.Small), 4, 15, 1, 1);
			grid.attach (new ElementItem("40","Zr","91.224", multiElement.Resourse.cMetal, parent, ItemView.Small), 4, 16, 1, 1);
			grid.attach (new ElementItem("41","Nb","92.906", multiElement.Resourse.cMetal, parent, ItemView.Small), 4, 17, 1, 1);
			grid.attach (new ElementItem("42","Mo","95.94", multiElement.Resourse.cMetal, parent, ItemView.Small), 4, 18, 1, 1);
			grid.attach (new ElementItem("43","Tc","98.906", multiElement.Resourse.cMetal, parent, ItemView.Small), 4, 19, 1, 1);
			grid.attach (new ElementItem("44","Ru","101.07", multiElement.Resourse.cMetal, parent, ItemView.Small), 4, 20, 1, 1);
			grid.attach (new ElementItem("45","Rh","102.91", multiElement.Resourse.cMetal, parent, ItemView.Small), 4, 21, 1, 1);
			grid.attach (new ElementItem("46","Pd","106.42", multiElement.Resourse.cMetal, parent, ItemView.Small), 4, 22, 1, 1);
			grid.attach (new ElementItem("47","Ag","107.87", multiElement.Resourse.cMetal, parent, ItemView.Small), 4, 23, 1, 1);
			grid.attach (new ElementItem("48","Cd","112.41", multiElement.Resourse.cMetal, parent, ItemView.Small), 4, 24, 1, 1);

			grid.attach (new ElementItem("72","Hf","178.49", multiElement.Resourse.cMetal, parent, ItemView.Small), 5, 16, 1, 1);
			grid.attach (new ElementItem("73","Ta","180.95", multiElement.Resourse.cMetal, parent, ItemView.Small), 5, 17, 1, 1);
			grid.attach (new ElementItem("74","W","183.85", multiElement.Resourse.cMetal, parent, ItemView.Small), 5, 18, 1, 1);
			grid.attach (new ElementItem("75","Re","185.21", multiElement.Resourse.cMetal, parent, ItemView.Small), 5, 19, 1, 1);
			grid.attach (new ElementItem("76","Os","190.2", multiElement.Resourse.cMetal, parent, ItemView.Small), 5, 20, 1, 1);
			grid.attach (new ElementItem("77","Ir","192.22", multiElement.Resourse.cMetal, parent, ItemView.Small), 5, 21, 1, 1);
			grid.attach (new ElementItem("78","Pt","195.08", multiElement.Resourse.cMetal, parent, ItemView.Small), 5, 22, 1, 1);
			grid.attach (new ElementItem("79","Au","196.97", multiElement.Resourse.cMetal, parent, ItemView.Small), 5, 23, 1, 1);
			grid.attach (new ElementItem("80","Hg","200.59", multiElement.Resourse.cMetal, parent, ItemView.Small), 5, 24, 1, 1);

			grid.attach (new ElementItem("104","Rf","[261]", multiElement.Resourse.cMetal, parent, ItemView.Small), 6, 16, 1, 1);
			grid.attach (new ElementItem("105","Db","[268]", multiElement.Resourse.cMetal, parent, ItemView.Small), 6, 17, 1, 1);
			grid.attach (new ElementItem("106","Sg","[271]", multiElement.Resourse.cMetal, parent, ItemView.Small), 6, 18, 1, 1);
			grid.attach (new ElementItem("107","Bh","[267]", multiElement.Resourse.cMetal, parent, ItemView.Small), 6, 19, 1, 1);
			grid.attach (new ElementItem("108","Hs","[269]", multiElement.Resourse.cMetal, parent, ItemView.Small), 6, 20, 1, 1);
			grid.attach (new ElementItem("109","Mt","[276]", multiElement.Resourse.cMetal, parent, ItemView.Small), 6, 21, 1, 1);
			grid.attach (new ElementItem("110","Ds","[281]", multiElement.Resourse.cMetal, parent, ItemView.Small), 6, 22, 1, 1);
			grid.attach (new ElementItem("111","Rg","[281]", multiElement.Resourse.cMetal, parent, ItemView.Small), 6, 23, 1, 1);
			grid.attach (new ElementItem("112","Cn","[285]", multiElement.Resourse.cMetal, parent, ItemView.Small), 6, 24, 1, 1);

			grid.attach (new PeriodItem("/"), 3, 25, 1, 1);
			grid.attach (new PeriodItem("/"), 4, 25, 1, 1);
			grid.attach (new PeriodItem("/"), 5, 25, 1, 1);
			grid.attach (new PeriodItem("/"), 6, 25, 1, 1);
			grid.attach (new PeriodItem("/"), 7, 25, 1, 1);

			grid.attach (new ElementItem("5","B","10.811", multiElement.Resourse.cPolimetal, parent, ItemView.Small), 2, 26, 1, 1);
			grid.attach (new ElementItem("6","C","12.011", multiElement.Resourse.cNemetal, parent, ItemView.Small), 2, 27, 1, 1);
			grid.attach (new ElementItem("7","N","14.007", multiElement.Resourse.cNemetal, parent, ItemView.Small), 2, 28, 1, 1);
			grid.attach (new ElementItem("8","O","15.999", multiElement.Resourse.cNemetal, parent, ItemView.Small), 2, 29, 1, 1);
			grid.attach (new ElementItem("9","F","18.998", multiElement.Resourse.cGalogen, parent, ItemView.Small), 2, 30, 1, 1);
			grid.attach (new ElementItem("10","Ne","20.179", multiElement.Resourse.cReal, parent, ItemView.Small), 2, 31, 1, 1);

			grid.attach (new ElementItem("13","Al","26.982", multiElement.Resourse.cPostmetal, parent, ItemView.Small), 3, 26, 1, 1);
			grid.attach (new ElementItem("14","Si","28.086", multiElement.Resourse.cPolimetal, parent, ItemView.Small), 3, 27, 1, 1);
			grid.attach (new ElementItem("15","P","30.974", multiElement.Resourse.cNemetal, parent, ItemView.Small), 3, 28, 1, 1);
			grid.attach (new ElementItem("16","S","32.066", multiElement.Resourse.cNemetal, parent, ItemView.Small), 3, 29, 1, 1);
			grid.attach (new ElementItem("17","Cl","35.453", multiElement.Resourse.cGalogen, parent, ItemView.Small), 3, 30, 1, 1);
			grid.attach (new ElementItem("18","Ar","39.948", multiElement.Resourse.cReal, parent, ItemView.Small), 3, 31, 1, 1);

			grid.attach (new ElementItem("31","Ga","69.723", multiElement.Resourse.cPostmetal, parent, ItemView.Small), 4, 26, 1, 1);
			grid.attach (new ElementItem("32","Ge","72.59", multiElement.Resourse.cPolimetal, parent, ItemView.Small), 4, 27, 1, 1);
			grid.attach (new ElementItem("33","As","74.922", multiElement.Resourse.cPolimetal, parent, ItemView.Small), 4, 28, 1, 1);
			grid.attach (new ElementItem("34","Se","78.96", multiElement.Resourse.cNemetal, parent, ItemView.Small), 4, 29, 1, 1);
			grid.attach (new ElementItem("35","Br","79.904", multiElement.Resourse.cGalogen, parent, ItemView.Small), 4, 30, 1, 1);
			grid.attach (new ElementItem("36","Kr","83.80", multiElement.Resourse.cReal, parent, ItemView.Small), 4, 31, 1, 1);

			grid.attach (new ElementItem("49","In","114.82", multiElement.Resourse.cPostmetal, parent, ItemView.Small), 5, 26, 1, 1);
			grid.attach (new ElementItem("50","Sn","118.71", multiElement.Resourse.cPostmetal, parent, ItemView.Small), 5, 27, 1, 1);
			grid.attach (new ElementItem("51","Sb","121.75", multiElement.Resourse.cPolimetal, parent, ItemView.Small), 5, 28, 1, 1);
			grid.attach (new ElementItem("52","Te","127.60", multiElement.Resourse.cPolimetal, parent, ItemView.Small), 5, 29, 1, 1);
			grid.attach (new ElementItem("53","I","126.91", multiElement.Resourse.cGalogen, parent, ItemView.Small), 5, 30, 1, 1);
			grid.attach (new ElementItem("54","Xe","131.29", multiElement.Resourse.cReal, parent, ItemView.Small), 5, 31, 1, 1);

			grid.attach (new ElementItem("81","Tl","204.38", multiElement.Resourse.cPostmetal, parent, ItemView.Small), 6, 26, 1, 1);
			grid.attach (new ElementItem("82","Pb","207.2", multiElement.Resourse.cPostmetal, parent, ItemView.Small), 6, 27, 1, 1);
			grid.attach (new ElementItem("83","Bi","208.98", multiElement.Resourse.cPostmetal, parent, ItemView.Small), 6, 28, 1, 1);
			grid.attach (new ElementItem("84","Po","[209]", multiElement.Resourse.cPolimetal, parent, ItemView.Small), 6, 29, 1, 1);
			grid.attach (new ElementItem("85","At","[210]", multiElement.Resourse.cGalogen, parent, ItemView.Small), 6, 30, 1, 1);
			grid.attach (new ElementItem("86","Rn","[222]", multiElement.Resourse.cReal, parent, ItemView.Small), 6, 31, 1, 1);

			grid.attach (new ElementItem("113","Nh","[284]", multiElement.Resourse.cPostmetal, parent, ItemView.Small), 7, 26, 1, 1);
			grid.attach (new ElementItem("114","Fl","[289]", multiElement.Resourse.cPostmetal, parent, ItemView.Small), 7, 27, 1, 1);
			grid.attach (new ElementItem("115","Mc","[288]", multiElement.Resourse.cPostmetal, parent, ItemView.Small), 7, 28, 1, 1);
			grid.attach (new ElementItem("116","Lv","[293]", multiElement.Resourse.cPostmetal, parent, ItemView.Small), 7, 29, 1, 1);
			grid.attach (new ElementItem("117","Ts","[294]", multiElement.Resourse.cGalogen, parent, ItemView.Small), 7, 30, 1, 1);
			grid.attach (new ElementItem("118","Og","[294]", multiElement.Resourse.cReal, parent, ItemView.Small), 7, 31, 1, 1);

			grid.attach (new ElementItem("1","H","1.0079", multiElement.Resourse.cNemetal, parent, ItemView.Small), 1, 30, 1, 1);
			grid.attach (new ElementItem("2","He","4.0026", multiElement.Resourse.cReal, parent, ItemView.Small), 1, 31, 1, 1);

			grid.attach (new PeriodItem("/"), 1, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 2, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 3, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 4, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 5, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 6, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 7, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 8, 32, 1, 1);

			grid.attach (new ElementItem("1","H","1.0079", multiElement.Resourse.cNemetal, parent, ItemView.Small), 1, 33, 1, 1);
			grid.attach (new ElementItem("2","He","4.0026", multiElement.Resourse.cReal, parent, ItemView.Small), 1, 34, 1, 1);

			grid.attach (new ElementItem("3","Li","6.9412", multiElement.Resourse.cSheloch, parent, ItemView.Small), 2, 33, 1, 1);
			grid.attach (new ElementItem("4","Be","9.0121", multiElement.Resourse.cShelLand, parent, ItemView.Small), 2, 34, 1, 1);

			grid.attach (new ElementItem("11","Na","22.989", multiElement.Resourse.cSheloch, parent, ItemView.Small), 3, 33, 1, 1);
			grid.attach (new ElementItem("12","Mg","24.305", multiElement.Resourse.cShelLand, parent, ItemView.Small), 3, 34, 1, 1);

			grid.attach (new ElementItem("19","K","39.098", multiElement.Resourse.cSheloch, parent, ItemView.Small), 4, 33, 1, 1);
			grid.attach (new ElementItem("20","Ca","40.078", multiElement.Resourse.cShelLand, parent, ItemView.Small), 4, 34, 1, 1);

			grid.attach (new ElementItem("37","Rb","85.468", multiElement.Resourse.cSheloch, parent, ItemView.Small), 5, 33, 1, 1);
			grid.attach (new ElementItem("38","Sr","87.82", multiElement.Resourse.cShelLand, parent, ItemView.Small), 5, 34, 1, 1);

			grid.attach (new ElementItem("55","Cs","132.91", multiElement.Resourse.cSheloch, parent, ItemView.Small), 6, 33, 1, 1);
			grid.attach (new ElementItem("56","Ba","137.33", multiElement.Resourse.cShelLand, parent, ItemView.Small), 6, 34, 1, 1);

			grid.attach (new ElementItem("87","Fr","[223]", multiElement.Resourse.cSheloch, parent, ItemView.Small), 7, 33, 1, 1);
			grid.attach (new ElementItem("88","Ra","226.02", multiElement.Resourse.cShelLand, parent, ItemView.Small), 7, 34, 1, 1);

			grid.attach (new ElementItem("119","Uue","[]", multiElement.Resourse.cPostmetal, parent, ItemView.Small), 8, 33, 1, 1);
			grid.attach (new ElementItem("120","Ubn","[]", multiElement.Resourse.cPostmetal, parent, ItemView.Small), 8, 34, 1, 1);
*/
            var centerBox = new Gtk.CenterBox ();
            centerBox.set_center_widget (grid);
            scroll.set_child (centerBox);
            mainBox.append(scroll);

//	        scroll.set_child (grid);
  //          mainBox.append(scroll);

	        return mainBox;
        }
    }
}
