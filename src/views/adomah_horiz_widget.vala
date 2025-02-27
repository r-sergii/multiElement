using MyLib;

namespace Multielement {

    public class AdomahHorizWidget
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

        public void changeTheme2 (bool th) {
            for(int i=0; i<listElementItems.size; i++) {
                listElementItems[i].changeTheme2(th);
            }
            for(int j=0; j<listPropertiesItems.size; j++) {
                listPropertiesItems[j].changeTheme2(th);
            }
            hElementItem.changeTheme2(th);
            heElementItem.changeTheme2(th);
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
            hElementItem = new ElementItem2("1","H","1.0079", multiElement.Resourse.cssNemetal, parent, ItemView.Normal);
            heElementItem = new ElementItem2("2","He","4.0026", multiElement.Resourse.cssReal, parent, ItemView.Normal);

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

            listElementItems.add (new ElementItem2("119","Uue","[]", multiElement.Resourse.cssUnknown, parent, ItemView.Normal));
            listElementItems.add (new ElementItem2("120","Ubn","[]", multiElement.Resourse.cssUnknown, parent, ItemView.Normal));

      }

//        public Gtk.Label AdomahHorizWidget (Window parent)
        public Gtk.Box AdomahHorizWidget (MainWindow parent)
//        public AdomahHorizWidget (MainWindow parent)
        {
            init (parent);

//            return new Gtk.Label("Adomah Horiz");
            Gtk.Box mainBox = new Gtk.Box (Gtk.Orientation.HORIZONTAL, 1);//0
	        //mainBox.set_border_width (2);//0;

            var itemWidgets = new ItemWidgets();
	        Gtk.ScrolledWindow scroll = new Gtk.ScrolledWindow ();//null, null);
	        scroll.set_policy (Gtk.PolicyType.AUTOMATIC, Gtk.PolicyType.AUTOMATIC);
            scroll.set_vexpand(true);
            scroll.set_hexpand(true);

	        var grid = new Gtk.Grid() {
	            column_spacing = 2,
	            row_spacing = 2
	        };

            grid.attach (listElementItems[56], 0, 5, 1, 1);
            grid.attach (listElementItems[57], 1, 5, 1, 1);
            grid.attach (listElementItems[58], 2, 5, 1, 1);
            grid.attach (listElementItems[59], 3, 5, 1, 1);
            grid.attach (listElementItems[60], 4, 5, 1, 1);
            grid.attach (listElementItems[61], 5, 5, 1, 1);
            grid.attach (listElementItems[62], 6, 5, 1, 1);
            grid.attach (listElementItems[63], 7, 5, 1, 1);
            grid.attach (listElementItems[64], 8, 5, 1, 1);
            grid.attach (listElementItems[65], 9, 5, 1, 1);
            grid.attach (listElementItems[66], 10, 5, 1, 1);
            grid.attach (listElementItems[67], 11, 5, 1, 1);
            grid.attach (listElementItems[68], 12, 5, 1, 1);
            grid.attach (listElementItems[69], 13, 5, 1, 1);
            grid.attach (listElementItems[70], 15, 4, 1, 1);

            grid.attach (listElementItems[88], 0, 4, 1, 1);
            grid.attach (listElementItems[89], 1, 4, 1, 1);
            grid.attach (listElementItems[90], 2, 4, 1, 1);
            grid.attach (listElementItems[91], 3, 4, 1, 1);
            grid.attach (listElementItems[92], 4, 4, 1, 1);
            grid.attach (listElementItems[93], 5, 4, 1, 1);
            grid.attach (listElementItems[94], 6, 4, 1, 1);
            grid.attach (listElementItems[95], 7, 4, 1, 1);
            grid.attach (listElementItems[96], 8, 4, 1, 1);
            grid.attach (listElementItems[97], 9, 4, 1, 1);
            grid.attach (listElementItems[98], 10, 4, 1, 1);
            grid.attach (listElementItems[99], 11, 4, 1, 1);
            grid.attach (listElementItems[100], 12, 4, 1, 1);
            grid.attach (listElementItems[101], 13, 4, 1, 1);
            grid.attach (listElementItems[102], 15, 3, 1, 1);

            grid.attach (new PeriodItem("/"), 14, 3, 1, 1);
            grid.attach (new PeriodItem("/"), 14, 4, 1, 1);
            grid.attach (new PeriodItem("/"), 14, 5, 1, 1);

            grid.attach (listElementItems[20], 15, 6, 1, 1);
            grid.attach (listElementItems[21], 16, 6, 1, 1);
            grid.attach (listElementItems[22], 17, 6, 1, 1);
            grid.attach (listElementItems[23], 18, 6, 1, 1);
            grid.attach (listElementItems[24], 19, 6, 1, 1);
            grid.attach (listElementItems[25], 20, 6, 1, 1);
            grid.attach (listElementItems[26], 21, 6, 1, 1);
            grid.attach (listElementItems[27], 22, 6, 1, 1);
            grid.attach (listElementItems[28], 23, 6, 1, 1);
            grid.attach (listElementItems[29], 24, 6, 1, 1);

            grid.attach (listElementItems[38], 15, 5, 1, 1);
            grid.attach (listElementItems[39], 16, 5, 1, 1);
            grid.attach (listElementItems[40], 17, 5, 1, 1);
            grid.attach (listElementItems[41], 18, 5, 1, 1);
            grid.attach (listElementItems[42], 19, 5, 1, 1);
            grid.attach (listElementItems[43], 20, 5, 1, 1);
            grid.attach (listElementItems[44], 21, 5, 1, 1);
            grid.attach (listElementItems[45], 22, 5, 1, 1);
            grid.attach (listElementItems[46], 23, 5, 1, 1);
            grid.attach (listElementItems[47], 24, 5, 1, 1);

            grid.attach (listElementItems[71], 16, 4, 1, 1);
            grid.attach (listElementItems[72], 17, 4, 1, 1);
            grid.attach (listElementItems[73], 18, 4, 1, 1);
            grid.attach (listElementItems[74], 19, 4, 1, 1);
            grid.attach (listElementItems[75], 20, 4, 1, 1);
            grid.attach (listElementItems[76], 21, 4, 1, 1);
            grid.attach (listElementItems[77], 22, 4, 1, 1);
            grid.attach (listElementItems[78], 23, 4, 1, 1);
            grid.attach (listElementItems[79], 24, 4, 1, 1);

            grid.attach (listElementItems[103], 16, 3, 1, 1);
            grid.attach (listElementItems[104], 17, 3, 1, 1);
            grid.attach (listElementItems[105], 18, 3, 1, 1);
            grid.attach (listElementItems[106], 19, 3, 1, 1);
            grid.attach (listElementItems[107], 20, 3, 1, 1);
            grid.attach (listElementItems[108], 21, 3, 1, 1);
            grid.attach (listElementItems[109], 22, 3, 1, 1);
            grid.attach (listElementItems[110], 23, 3, 1, 1);
            grid.attach (listElementItems[111], 24, 3, 1, 1);

            grid.attach (new PeriodItem("/"), 25, 2, 1, 1);
            grid.attach (new PeriodItem("/"), 25, 3, 1, 1);
            grid.attach (new PeriodItem("/"), 25, 4, 1, 1);
            grid.attach (new PeriodItem("/"), 25, 5, 1, 1);
            grid.attach (new PeriodItem("/"), 25, 6, 1, 1);

            grid.attach (listElementItems[4], 26, 7, 1, 1);
            grid.attach (listElementItems[5], 27, 7, 1, 1);
            grid.attach (listElementItems[6], 28, 7, 1, 1);
            grid.attach (listElementItems[7], 29, 7, 1, 1);
            grid.attach (listElementItems[8], 30, 7, 1, 1);
            grid.attach (listElementItems[9], 31, 7, 1, 1);

            grid.attach (listElementItems[12], 26, 6, 1, 1);
            grid.attach (listElementItems[13], 27, 6, 1, 1);
            grid.attach (listElementItems[14], 28, 6, 1, 1);
            grid.attach (listElementItems[15], 29, 6, 1, 1);
            grid.attach (listElementItems[16], 30, 6, 1, 1);
            grid.attach (listElementItems[17], 31, 6, 1, 1);

            grid.attach (listElementItems[30], 26, 5, 1, 1);
            grid.attach (listElementItems[31], 27, 5, 1, 1);
            grid.attach (listElementItems[32], 28, 5, 1, 1);
            grid.attach (listElementItems[33], 29, 5, 1, 1);
            grid.attach (listElementItems[34], 30, 5, 1, 1);
            grid.attach (listElementItems[35], 31, 5, 1, 1);

            grid.attach (listElementItems[48], 26, 4, 1, 1);
            grid.attach (listElementItems[49], 27, 4, 1, 1);
            grid.attach (listElementItems[50], 28, 4, 1, 1);
            grid.attach (listElementItems[51], 29, 4, 1, 1);
            grid.attach (listElementItems[52], 30, 4, 1, 1);
            grid.attach (listElementItems[53], 31, 4, 1, 1);

            grid.attach (listElementItems[80], 26, 3, 1, 1);
            grid.attach (listElementItems[81], 27, 3, 1, 1);
            grid.attach (listElementItems[82], 28, 3, 1, 1);
            grid.attach (listElementItems[83], 29, 3, 1, 1);
            grid.attach (listElementItems[84], 30, 3, 1, 1);
            grid.attach (listElementItems[85], 31, 3, 1, 1);

            grid.attach (listElementItems[112], 26, 2, 1, 1);
            grid.attach (listElementItems[113], 27, 2, 1, 1);
            grid.attach (listElementItems[114], 28, 2, 1, 1);
            grid.attach (listElementItems[115], 29, 2, 1, 1);
            grid.attach (listElementItems[116], 30, 2, 1, 1);
            grid.attach (listElementItems[117], 31, 2, 1, 1);

            grid.attach (listElementItems[0], 30, 8, 1, 1);
            grid.attach (listElementItems[1], 31, 8, 1, 1);

            grid.attach (new PeriodItem("/"), 32, 1, 1, 1);
            grid.attach (new PeriodItem("/"), 32, 2, 1, 1);
            grid.attach (new PeriodItem("/"), 32, 3, 1, 1);
            grid.attach (new PeriodItem("/"), 32, 4, 1, 1);
            grid.attach (new PeriodItem("/"), 32, 5, 1, 1);
            grid.attach (new PeriodItem("/"), 32, 6, 1, 1);
            grid.attach (new PeriodItem("/"), 32, 7, 1, 1);
            grid.attach (new PeriodItem("/"), 32, 8, 1, 1);

            grid.attach (hElementItem, 33, 8, 1, 1);
            grid.attach (heElementItem, 34, 8, 1, 1);

            grid.attach (listElementItems[2], 33, 7, 1, 1);
            grid.attach (listElementItems[3], 34, 7, 1, 1);

            grid.attach (listElementItems[10], 33, 6, 1, 1);
            grid.attach (listElementItems[11], 34, 6, 1, 1);

            grid.attach (listElementItems[18], 33, 5, 1, 1);
            grid.attach (listElementItems[19], 34, 5, 1, 1);

            grid.attach (listElementItems[36], 33, 4, 1, 1);
            grid.attach (listElementItems[37], 34, 4, 1, 1);

            grid.attach (listElementItems[54], 33, 3, 1, 1);
            grid.attach (listElementItems[55], 34, 3, 1, 1);

            grid.attach (listElementItems[86], 33, 2, 1, 1);
            grid.attach (listElementItems[87], 34, 2, 1 ,1);

            grid.attach (listElementItems[118], 33, 1, 1, 1);
            grid.attach (listElementItems[119], 34, 1, 1, 1);


/*
            grid.attach (new ElementItem("57","La","138.90", multiElement.Resourse.cLantan, parent), 0, 5, 1, 1);///////////
            grid.attach (new ElementItem("58","Ce","140.12", multiElement.Resourse.cLantan, parent), 1, 5, 1, 1);///////////
            grid.attach (new ElementItem("59","Pr","140.91", multiElement.Resourse.cLantan, parent), 2, 5, 1, 1);///////////
            grid.attach (new ElementItem("60","Nd","144.24", multiElement.Resourse.cLantan, parent), 3, 5, 1, 1);///////////
            grid.attach (new ElementItem("61","Pm","[145]", multiElement.Resourse.cLantan, parent), 4, 5, 1, 1);///////////
            grid.attach (new ElementItem("62","Sm","150.36", multiElement.Resourse.cLantan, parent), 5, 5, 1, 1);///////////
            grid.attach (new ElementItem("63","Eu","151.96", multiElement.Resourse.cLantan, parent), 6, 5, 1, 1);///////////
            grid.attach (new ElementItem("64","Gd","157.25", multiElement.Resourse.cLantan, parent), 7, 5, 1, 1);///////////
            grid.attach (new ElementItem("65","Tb","158.93", multiElement.Resourse.cLantan, parent), 8, 5, 1, 1);///////////
            grid.attach (new ElementItem("66","Dy","162.50", multiElement.Resourse.cLantan, parent), 9, 5, 1, 1);///////////
            grid.attach (new ElementItem("67","Ho","164.93", multiElement.Resourse.cLantan, parent), 10, 5, 1, 1);///////////
            grid.attach (new ElementItem("68","Er","167.26", multiElement.Resourse.cLantan, parent), 11, 5, 1, 1);///////////
            grid.attach (new ElementItem("69","Tm","168.93", multiElement.Resourse.cLantan, parent), 12, 5, 1, 1);///////////
            grid.attach (new ElementItem("70","Yb","173.61", multiElement.Resourse.cLantan, parent), 13, 5, 1, 1);///////////
            grid.attach (new ElementItem("71","Lu","174.96", multiElement.Resourse.cLantan, parent), 15, 4, 1, 1);///////////

            grid.attach (new ElementItem("89","Ac","[227]", multiElement.Resourse.cActan, parent), 0, 4, 1, 1);///////////
            grid.attach (new ElementItem("90","Th","223.04", multiElement.Resourse.cActan, parent), 1, 4, 1, 1);///////////
            grid.attach (new ElementItem("91","Pa","[231]", multiElement.Resourse.cActan, parent), 2, 4, 1, 1);///////////
            grid.attach (new ElementItem("92","U","238.02", multiElement.Resourse.cActan, parent), 3, 4, 1, 1);///////////
            grid.attach (new ElementItem("93","Np","237.04", multiElement.Resourse.cActan, parent), 4, 4, 1, 1);///////////
            grid.attach (new ElementItem("94","Pu","[244]", multiElement.Resourse.cActan, parent), 5, 4, 1, 1);///////////
            grid.attach (new ElementItem("95","Am","[243]", multiElement.Resourse.cActan, parent), 6, 4, 1, 1);///////////
            grid.attach (new ElementItem("96","Cm","[247]", multiElement.Resourse.cActan, parent), 7, 4, 1, 1);///////////
            grid.attach (new ElementItem("97","Bk","[247]", multiElement.Resourse.cActan, parent), 8, 4, 1, 1);///////////
            grid.attach (new ElementItem("98","Cf","[251]", multiElement.Resourse.cActan, parent), 9, 4, 1, 1);///////////
            grid.attach (new ElementItem("99","Es","[252]", multiElement.Resourse.cActan, parent), 10, 4, 1, 1);///////////
            grid.attach (new ElementItem("100","Fm","[257]", multiElement.Resourse.cActan, parent), 11, 4, 1, 1);///////////
            grid.attach (new ElementItem("101","Md","[258]", multiElement.Resourse.cActan, parent), 12, 4, 1, 1);///////////
            grid.attach (new ElementItem("102","No","259.1", multiElement.Resourse.cActan, parent), 13, 4, 1, 1);///////////
            grid.attach (new ElementItem("103","Lr","[266]", multiElement.Resourse.cActan, parent), 15, 3, 1, 1);///////////

            grid.attach (new PeriodItem("/"), 14, 3, 1, 1);
            grid.attach (new PeriodItem("/"), 14, 4, 1, 1);
            grid.attach (new PeriodItem("/"), 14, 5, 1, 1);

            grid.attach (new ElementItem("21","Sc","44.956", multiElement.Resourse.cMetal, parent), 15, 6, 1, 1);
            grid.attach (new ElementItem("22","Ti","47.88", multiElement.Resourse.cMetal, parent), 16, 6, 1, 1);
            grid.attach (new ElementItem("23","V","50.942", multiElement.Resourse.cMetal, parent), 17, 6, 1, 1);
            grid.attach (new ElementItem("24","Cr","51.996", multiElement.Resourse.cMetal, parent), 18, 6, 1, 1);
            grid.attach (new ElementItem("25","Mn","54.938", multiElement.Resourse.cMetal, parent), 19, 6, 1, 1);
            grid.attach (new ElementItem("26","Fe","55.847", multiElement.Resourse.cMetal, parent), 20, 6, 1, 1);
            grid.attach (new ElementItem("27","Co","58.993", multiElement.Resourse.cMetal, parent), 21, 6, 1, 1);
            grid.attach (new ElementItem("28","Ni","58.69", multiElement.Resourse.cMetal, parent), 22, 6, 1, 1);
            grid.attach (new ElementItem("29","Cu","63.546", multiElement.Resourse.cMetal, parent), 23, 6, 1, 1);
            grid.attach (new ElementItem("30","Zn","65.39", multiElement.Resourse.cMetal, parent), 24, 6, 1, 1);

            grid.attach (new ElementItem("39","Y","88.906", multiElement.Resourse.cMetal, parent), 15, 5, 1, 1);
            grid.attach (new ElementItem("40","Zr","91.224", multiElement.Resourse.cMetal, parent), 16, 5, 1, 1);
            grid.attach (new ElementItem("41","Nb","92.906", multiElement.Resourse.cMetal, parent), 17, 5, 1, 1);
            grid.attach (new ElementItem("42","Mo","95.94", multiElement.Resourse.cMetal, parent), 18, 5, 1, 1);
            grid.attach (new ElementItem("43","Tc","98.906", multiElement.Resourse.cMetal, parent), 19, 5, 1, 1);
            grid.attach (new ElementItem("44","Ru","101.07", multiElement.Resourse.cMetal, parent), 20, 5, 1, 1);
            grid.attach (new ElementItem("45","Rh","102.91", multiElement.Resourse.cMetal, parent), 21, 5, 1, 1);
            grid.attach (new ElementItem("46","Pd","106.42", multiElement.Resourse.cMetal, parent), 22, 5, 1, 1);
            grid.attach (new ElementItem("47","Ag","107.87", multiElement.Resourse.cMetal, parent), 23, 5, 1, 1);
            grid.attach (new ElementItem("48","Cd","112.41", multiElement.Resourse.cMetal, parent), 24, 5, 1, 1);

            grid.attach (new ElementItem("72","Hf","178.49", multiElement.Resourse.cMetal, parent), 16, 4, 1, 1);
            grid.attach (new ElementItem("73","Ta","180.95", multiElement.Resourse.cMetal, parent), 17, 4, 1, 1);
            grid.attach (new ElementItem("74","W","183.85", multiElement.Resourse.cMetal, parent), 18, 4, 1, 1);
            grid.attach (new ElementItem("75","Re","185.21", multiElement.Resourse.cMetal, parent), 19, 4, 1, 1);
            grid.attach (new ElementItem("76","Os","190.2", multiElement.Resourse.cMetal, parent), 20, 4, 1, 1);
            grid.attach (new ElementItem("77","Ir","192.22", multiElement.Resourse.cMetal, parent), 21, 4, 1, 1);
            grid.attach (new ElementItem("78","Pt","195.08", multiElement.Resourse.cMetal, parent), 22, 4, 1, 1);
            grid.attach (new ElementItem("79","Au","196.97", multiElement.Resourse.cMetal, parent), 23, 4, 1, 1);
            grid.attach (new ElementItem("80","Hg","200.59", multiElement.Resourse.cMetal, parent), 24, 4, 1, 1);

            grid.attach (new ElementItem("104","Rf","[261]", multiElement.Resourse.cMetal, parent), 16, 3, 1, 1);
            grid.attach (new ElementItem("105","Db","[268]", multiElement.Resourse.cMetal, parent), 17, 3, 1, 1);
            grid.attach (new ElementItem("106","Sg","[271]", multiElement.Resourse.cMetal, parent), 18, 3, 1, 1);
            grid.attach (new ElementItem("107","Bh","[267]", multiElement.Resourse.cMetal, parent), 19, 3, 1, 1);
            grid.attach (new ElementItem("108","Hs","[269]", multiElement.Resourse.cMetal, parent), 20, 3, 1, 1);
            grid.attach (new ElementItem("109","Mt","[276]", multiElement.Resourse.cMetal, parent), 21, 3, 1, 1);
            grid.attach (new ElementItem("110","Ds","[281]", multiElement.Resourse.cMetal, parent), 22, 3, 1, 1);
            grid.attach (new ElementItem("111","Rg","[281]", multiElement.Resourse.cMetal, parent), 23, 3, 1, 1);
            grid.attach (new ElementItem("112","Cn","[285]", multiElement.Resourse.cMetal, parent), 24, 3, 1, 1);

            grid.attach (new PeriodItem("/"), 25, 2, 1, 1);
            grid.attach (new PeriodItem("/"), 25, 3, 1, 1);
            grid.attach (new PeriodItem("/"), 25, 4, 1, 1);
            grid.attach (new PeriodItem("/"), 25, 5, 1, 1);
            grid.attach (new PeriodItem("/"), 25, 6, 1, 1);

            grid.attach (new ElementItem("5","B","10.811", multiElement.Resourse.cPolimetal, parent), 26, 7, 1, 1);
            grid.attach (new ElementItem("6","C","12.011", multiElement.Resourse.cNemetal, parent), 27, 7, 1, 1);
            grid.attach (new ElementItem("7","N","14.007", multiElement.Resourse.cNemetal, parent), 28, 7, 1, 1);
            grid.attach (new ElementItem("8","O","15.999", multiElement.Resourse.cNemetal, parent), 29, 7, 1, 1);
            grid.attach (new ElementItem("9","F","18.998", multiElement.Resourse.cGalogen, parent), 30, 7, 1, 1);
            grid.attach (new ElementItem("10","Ne","20.179", multiElement.Resourse.cReal, parent), 31, 7, 1, 1);

            grid.attach (new ElementItem("13","Al","26.982", multiElement.Resourse.cPostmetal, parent), 26, 6, 1, 1);
            grid.attach (new ElementItem("14","Si","28.086", multiElement.Resourse.cPolimetal, parent), 27, 6, 1, 1);
            grid.attach (new ElementItem("15","P","30.974", multiElement.Resourse.cNemetal, parent), 28, 6, 1, 1);
            grid.attach (new ElementItem("16","S","32.066", multiElement.Resourse.cNemetal, parent), 29, 6, 1, 1);
            grid.attach (new ElementItem("17","Cl","35.453", multiElement.Resourse.cGalogen, parent), 30, 6, 1, 1);
            grid.attach (new ElementItem("18","Ar","39.948", multiElement.Resourse.cReal, parent), 31, 6, 1, 1);

            grid.attach (new ElementItem("31","Ga","69.723", multiElement.Resourse.cPostmetal, parent), 26, 5, 1, 1);
            grid.attach (new ElementItem("32","Ge","72.59", multiElement.Resourse.cPolimetal, parent), 27, 5, 1, 1);
            grid.attach (new ElementItem("33","As","74.922", multiElement.Resourse.cPolimetal, parent), 28, 5, 1, 1);
            grid.attach (new ElementItem("34","Se","78.96", multiElement.Resourse.cNemetal, parent), 29, 5, 1, 1);
            grid.attach (new ElementItem("35","Br","79.904", multiElement.Resourse.cGalogen, parent), 30, 5, 1, 1);
            grid.attach (new ElementItem("36","Kr","83.80", multiElement.Resourse.cReal, parent), 31, 5, 1, 1);

            grid.attach (new ElementItem("49","In","114.82", multiElement.Resourse.cPostmetal, parent), 26, 4, 1, 1);
            grid.attach (new ElementItem("50","Sn","118.71", multiElement.Resourse.cPostmetal, parent), 27, 4, 1, 1);
            grid.attach (new ElementItem("51","Sb","121.75", multiElement.Resourse.cPolimetal, parent), 28, 4, 1, 1);
            grid.attach (new ElementItem("52","Te","127.60", multiElement.Resourse.cPolimetal, parent), 29, 4, 1, 1);
            grid.attach (new ElementItem("53","I","126.91", multiElement.Resourse.cGalogen, parent), 30, 4, 1, 1);
            grid.attach (new ElementItem("54","Xe","131.29", multiElement.Resourse.cReal, parent), 31, 4, 1, 1);

            grid.attach (new ElementItem("81","Tl","204.38", multiElement.Resourse.cPostmetal, parent), 26, 3, 1, 1);
            grid.attach (new ElementItem("82","Pb","207.2", multiElement.Resourse.cPostmetal, parent), 27, 3, 1, 1);
            grid.attach (new ElementItem("83","Bi","208.98", multiElement.Resourse.cPostmetal, parent), 28, 3, 1, 1);
            grid.attach (new ElementItem("84","Po","[209]", multiElement.Resourse.cPolimetal, parent), 29, 3, 1, 1);
            grid.attach (new ElementItem("85","At","[210]", multiElement.Resourse.cGalogen, parent), 30, 3, 1, 1);
            grid.attach (new ElementItem("86","Rn","[222]", multiElement.Resourse.cReal, parent), 31, 3, 1, 1);

            grid.attach (new ElementItem("113","Nh","[284]", multiElement.Resourse.cPostmetal, parent), 26, 2, 1, 1);
            grid.attach (new ElementItem("114","Fl","[289]", multiElement.Resourse.cPostmetal, parent), 27, 2, 1, 1);
            grid.attach (new ElementItem("115","Mc","[288]", multiElement.Resourse.cPostmetal, parent), 28, 2, 1, 1);
            grid.attach (new ElementItem("116","Lv","[293]", multiElement.Resourse.cPostmetal, parent), 29, 2, 1, 1);
            grid.attach (new ElementItem("117","Ts","[294]", multiElement.Resourse.cGalogen, parent), 30, 2, 1, 1);
            grid.attach (new ElementItem("118","Og","[294]", multiElement.Resourse.cReal, parent), 31, 2, 1, 1);

            grid.attach (new ElementItem("1","H","1.0079", multiElement.Resourse.cNemetal, parent), 30, 8, 1, 1);
            grid.attach (new ElementItem("2","He","4.0026", multiElement.Resourse.cReal, parent), 31, 8, 1, 1);

            grid.attach (new PeriodItem("/"), 32, 1, 1, 1);
            grid.attach (new PeriodItem("/"), 32, 2, 1, 1);
            grid.attach (new PeriodItem("/"), 32, 3, 1, 1);
            grid.attach (new PeriodItem("/"), 32, 4, 1, 1);
            grid.attach (new PeriodItem("/"), 32, 5, 1, 1);
            grid.attach (new PeriodItem("/"), 32, 6, 1, 1);
            grid.attach (new PeriodItem("/"), 32, 7, 1, 1);
            grid.attach (new PeriodItem("/"), 32, 8, 1, 1);

            grid.attach (new ElementItem("1","H","1.0079", multiElement.Resourse.cNemetal, parent), 33, 8, 1, 1);
            grid.attach (new ElementItem("2","He","4.0026", multiElement.Resourse.cReal, parent), 34, 8, 1, 1);

            grid.attach (new ElementItem("3","Li","6.9412", multiElement.Resourse.cSheloch, parent), 33, 7, 1, 1);
            grid.attach (new ElementItem("4","Be","9.0121", multiElement.Resourse.cShelLand, parent), 34, 7, 1, 1);

            grid.attach (new ElementItem("11","Na","22.989", multiElement.Resourse.cSheloch, parent), 33, 6, 1, 1);
            grid.attach (new ElementItem("12","Mg","24.305", multiElement.Resourse.cShelLand, parent), 34, 6, 1, 1);

            grid.attach (new ElementItem("19","K","39.098", multiElement.Resourse.cSheloch, parent), 33, 5, 1, 1);
            grid.attach (new ElementItem("20","Ca","40.078", multiElement.Resourse.cShelLand, parent), 34, 5, 1, 1);

            grid.attach (new ElementItem("37","Rb","85.468", multiElement.Resourse.cSheloch, parent), 33, 4, 1, 1);
            grid.attach (new ElementItem("38","Sr","87.82", multiElement.Resourse.cShelLand, parent), 34, 4, 1, 1);

            grid.attach (new ElementItem("55","Cs","132.91", multiElement.Resourse.cSheloch, parent), 33, 3, 1, 1);
            grid.attach (new ElementItem("56","Ba","137.33", multiElement.Resourse.cShelLand, parent), 34, 3, 1, 1);

            grid.attach (new ElementItem("87","Fr","[223]", multiElement.Resourse.cSheloch, parent), 33, 2, 1, 1);
            grid.attach (new ElementItem("88","Ra","226.02", multiElement.Resourse.cShelLand, parent), 34, 2, 1 ,1);

            grid.attach (new ElementItem("119","Uue","[]", multiElement.Resourse.cPostmetal, parent), 33, 1, 1, 1);
            grid.attach (new ElementItem("120","Ubn","[]", multiElement.Resourse.cPostmetal, parent), 34, 1, 1, 1);
*/
////////////////////
            var centerBox = new Gtk.CenterBox ();
            centerBox.set_center_widget (grid);
            scroll.set_child (centerBox);
            mainBox.append(scroll);

//	        scroll.set_child (grid);
//            mainBox.append(scroll);

	        return mainBox;
        }
    }
}
