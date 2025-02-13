using Gtk;
using GLib;
using MyLib;

namespace Multielement {

    class ExtendedWidget : Gtk.Box
    {

        public void set_width (int width) {
            message ("child extend");
            message (width.to_string ());
        }

//        public Gtk.Box ExtendedWidget (MainWindow parent)
        public ExtendedWidget (MainWindow parent)
        {
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
/*	        grid.attach (itemWidgets.PeriodItem("Group"), 1, 0, 19, 1);

	        grid.attach (itemWidgets.TitleItem("Period"), 0, 0, 1, 2);
	        grid.attach (itemWidgets.PeriodItem("I"), 1, 1, 1, 1);
	        grid.attach (itemWidgets.PeriodItem("II"), 2, 1, 1, 1);
	        grid.attach (itemWidgets.PeriodItem("III"), 3, 1, 1, 1);
	        grid.attach (itemWidgets.PeriodItem("IV"), 4, 1, 1, 1);
	        grid.attach (itemWidgets.PeriodItem("V"), 5, 1, 1, 1);
	        grid.attach (itemWidgets.PeriodItem("VI"), 6, 1, 1, 1);
	        grid.attach (itemWidgets.PeriodItem("VII"), 7, 1, 1, 1);
	        grid.attach (itemWidgets.PeriodItem("VIII"), 8, 1, 3, 1);
	        grid.attach (itemWidgets.PeriodItem("I"), 11, 1, 1, 1);
	        grid.attach (itemWidgets.PeriodItem("II"), 12, 1, 1, 1);
	        grid.attach (itemWidgets.PeriodItem("III"), 13, 1, 1, 1);
	        grid.attach (itemWidgets.PeriodItem("IV"), 14, 1, 1, 1);
	        grid.attach (itemWidgets.PeriodItem("V"), 15, 1, 1, 1);
	        grid.attach (itemWidgets.PeriodItem("VI"), 16, 1, 1, 1);
	        grid.attach (itemWidgets.PeriodItem("VII"), 17, 1, 1, 1);
	        grid.attach (itemWidgets.PeriodItem("VIII"), 18, 1, 3, 1);

			grid.attach (itemWidgets.PeriodItem("I"), 0, 2, 1, 1);
			grid.attach (itemWidgets.ElementItem("1","H","1.0079", multiElement.Resourse.cNemetal, parent), 1, 2, 1, 1);
			grid.attach (itemWidgets.ElementItem("2","He","4.0026", multiElement.Resourse.cReal, parent), 18, 2, 1, 1);

			grid.attach (itemWidgets.PeriodItem("II"), 0, 3, 1, 1);
			grid.attach (itemWidgets.ElementItem("3","Li","6.9412", multiElement.Resourse.cSheloch, parent), 1, 3, 1, 1);
			grid.attach (itemWidgets.ElementItem("4","Be","9.0121", multiElement.Resourse.cShelLand, parent), 2, 3, 1, 1);
			grid.attach (itemWidgets.ElementItem("5","B","10.811", multiElement.Resourse.cPolimetal, parent), 13, 3, 1, 1);
			grid.attach (itemWidgets.ElementItem("6","C","12.011", multiElement.Resourse.cNemetal, parent), 14, 3, 1, 1);
			grid.attach (itemWidgets.ElementItem("7","N","14.007", multiElement.Resourse.cNemetal, parent), 15, 3, 1, 1);
			grid.attach (itemWidgets.ElementItem("8","O","15.999", multiElement.Resourse.cNemetal, parent), 16, 3, 1, 1);
			grid.attach (itemWidgets.ElementItem("9","F","18.998", multiElement.Resourse.cGalogen, parent), 17, 3, 1, 1);
			grid.attach (itemWidgets.ElementItem("10","Ne","20.179", multiElement.Resourse.cReal, parent), 18, 3, 1, 1);

			grid.attach (itemWidgets.PeriodItem("III"), 0, 4, 1, 1);
			grid.attach (itemWidgets.ElementItem("11","Na","22.989", multiElement.Resourse.cSheloch, parent), 1, 4, 1, 1);
			grid.attach (itemWidgets.ElementItem("12","Mg","24.305", multiElement.Resourse.cShelLand, parent), 2, 4, 1, 1);
			grid.attach (itemWidgets.ElementItem("13","Al","26.982", multiElement.Resourse.cPostmetal, parent), 13, 4, 1, 1);
			grid.attach (itemWidgets.ElementItem("14","Si","28.086", multiElement.Resourse.cPolimetal, parent), 14, 4, 1, 1);
			grid.attach (itemWidgets.ElementItem("15","P","30.974", multiElement.Resourse.cNemetal, parent), 15, 4, 1, 1);
			grid.attach (itemWidgets.ElementItem("16","S","32.066", multiElement.Resourse.cNemetal, parent), 16, 4, 1, 1);
			grid.attach (itemWidgets.ElementItem("17","Cl","35.453", multiElement.Resourse.cGalogen, parent), 17, 4, 1, 1);
			grid.attach (itemWidgets.ElementItem("18","Ar","39.948", multiElement.Resourse.cReal, parent), 18, 4, 1, 1);

			grid.attach (itemWidgets.PeriodItem("IV"), 0, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("19","K","39.098", multiElement.Resourse.cSheloch, parent), 1, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("20","Ca","40.078", multiElement.Resourse.cShelLand, parent), 2, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("21","Sc","44.956", multiElement.Resourse.cMetal, parent), 3, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("22","Ti","47.88", multiElement.Resourse.cMetal, parent), 4, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("23","V","50.942", multiElement.Resourse.cMetal, parent), 5, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("24","Cr","51.996", multiElement.Resourse.cMetal, parent), 6, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("25","Mn","54.938", multiElement.Resourse.cMetal, parent), 7, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("26","Fe","55.847", multiElement.Resourse.cMetal, parent), 8, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("27","Co","58.993", multiElement.Resourse.cMetal, parent), 9, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("28","Ni","58.69", multiElement.Resourse.cMetal, parent), 10, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("29","Cu","63.546", multiElement.Resourse.cMetal, parent), 11, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("30","Zn","65.39", multiElement.Resourse.cMetal, parent), 12, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("31","Ga","69.723", multiElement.Resourse.cPostmetal, parent), 13, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("32","Ge","72.59", multiElement.Resourse.cPolimetal, parent), 14, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("33","As","74.922", multiElement.Resourse.cPolimetal, parent), 15, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("34","Se","78.96", multiElement.Resourse.cNemetal, parent), 16, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("35","Br","79.904", multiElement.Resourse.cGalogen, parent), 17, 5, 1, 1);
			grid.attach (itemWidgets.ElementItem("36","Kr","83.80", multiElement.Resourse.cReal, parent), 18, 5, 1, 1);

			grid.attach (itemWidgets.PeriodItem("V"), 0, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("37","Rb","85.468", multiElement.Resourse.cSheloch, parent), 1, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("38","Sr","87.82", multiElement.Resourse.cShelLand, parent), 2, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("39","Y","88.906", multiElement.Resourse.cMetal, parent), 3, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("40","Zr","91.224", multiElement.Resourse.cMetal, parent), 4, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("41","Nb","92.906", multiElement.Resourse.cMetal, parent), 5, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("42","Mo","95.94", multiElement.Resourse.cMetal, parent), 6, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("43","Tc","98.906", multiElement.Resourse.cMetal, parent), 7, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("44","Ru","101.07", multiElement.Resourse.cMetal, parent), 8, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("45","Rh","102.91", multiElement.Resourse.cMetal, parent), 9, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("46","Pd","106.42", multiElement.Resourse.cMetal, parent), 10, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("47","Ag","107.87", multiElement.Resourse.cMetal, parent), 11, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("48","Cd","112.41", multiElement.Resourse.cMetal, parent), 12, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("49","In","114.82", multiElement.Resourse.cPostmetal, parent), 13, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("50","Sn","118.71", multiElement.Resourse.cPostmetal, parent), 14, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("51","Sb","121.75", multiElement.Resourse.cPolimetal, parent), 15, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("52","Te","127.60", multiElement.Resourse.cPolimetal, parent), 16, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("53","I","126.91", multiElement.Resourse.cGalogen, parent), 17, 6, 1, 1);
			grid.attach (itemWidgets.ElementItem("54","Xe","131.29", multiElement.Resourse.cReal, parent), 18, 6, 1, 1);

			grid.attach (itemWidgets.PeriodItem("VI"), 0, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("55","Cs","132.91", multiElement.Resourse.cSheloch, parent), 1, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("56","Ba","137.33", multiElement.Resourse.cShelLand, parent), 2, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("57","La","138.90", multiElement.Resourse.cLantan, parent), 3, 7, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("72","Hf","178.49", multiElement.Resourse.cMetal, parent), 4, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("73","Ta","180.95", multiElement.Resourse.cMetal, parent), 5, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("74","W","183.85", multiElement.Resourse.cMetal, parent), 6, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("75","Re","185.21", multiElement.Resourse.cMetal, parent), 7, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("76","Os","190.2", multiElement.Resourse.cMetal, parent), 8, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("77","Ir","192.22", multiElement.Resourse.cMetal, parent), 9, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("78","Pt","195.08", multiElement.Resourse.cMetal, parent), 10, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("79","Au","196.97", multiElement.Resourse.cMetal, parent), 11, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("80","Hg","200.59", multiElement.Resourse.cMetal, parent), 12, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("81","Tl","204.38", multiElement.Resourse.cPostmetal, parent), 13, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("82","Pb","207.2", multiElement.Resourse.cPostmetal, parent), 14, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("83","Bi","208.98", multiElement.Resourse.cPostmetal, parent), 15, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("84","Po","[209]", multiElement.Resourse.cPolimetal, parent), 16, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("85","At","[210]", multiElement.Resourse.cGalogen, parent), 17, 7, 1, 1);
			grid.attach (itemWidgets.ElementItem("86","Rn","[222]", multiElement.Resourse.cReal, parent), 18, 7, 1, 1);

			grid.attach (itemWidgets.PeriodItem("VII"), 0, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("87","Fr","[223]", multiElement.Resourse.cSheloch, parent), 1, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("88","Ra","226.02", multiElement.Resourse.cShelLand, parent), 2, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("89","Ac","[227]", multiElement.Resourse.cActan, parent), 3, 8, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("104","Rf","[261]", multiElement.Resourse.cMetal, parent), 4, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("105","Db","[268]", multiElement.Resourse.cMetal, parent), 5, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("106","Sg","[271]", multiElement.Resourse.cMetal, parent), 6, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("107","Bh","[267]", multiElement.Resourse.cMetal, parent), 7, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("108","Hs","[269]", multiElement.Resourse.cMetal, parent), 8, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("109","Mt","[276]", multiElement.Resourse.cMetal, parent), 9, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("110","Ds","[281]", multiElement.Resourse.cMetal, parent), 10, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("111","Rg","[281]", multiElement.Resourse.cMetal, parent), 11, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("112","Cn","[285]", multiElement.Resourse.cMetal, parent), 12, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("113","Nh","[284]", multiElement.Resourse.cPostmetal, parent), 13, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("114","Fl","[289]", multiElement.Resourse.cPostmetal, parent), 14, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("115","Mc","[288]", multiElement.Resourse.cPostmetal, parent), 15, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("116","Lv","[293]", multiElement.Resourse.cPostmetal, parent), 16, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("117","Ts","[294]", multiElement.Resourse.cGalogen, parent), 17, 8, 1, 1);
			grid.attach (itemWidgets.ElementItem("118","Og","[294]", multiElement.Resourse.cReal, parent), 18, 8, 1, 1);

			grid.attach (itemWidgets.PeriodItem("RO"), 0, 9, 1, 1);
			grid.attach (itemWidgets.OHItem("R","2","O",""), 1, 9, 1, 1);
			grid.attach (itemWidgets.OHItem("R","","O",""), 2, 9, 1, 1);
			grid.attach (itemWidgets.OHItem("R","2","O","3"), 3, 9, 1, 1);
			grid.attach (itemWidgets.OHItem("R","","O","2"), 4, 9, 1, 1);
			grid.attach (itemWidgets.OHItem("R","2","O","5"), 5, 9, 1, 1);
			grid.attach (itemWidgets.OHItem("R","","O","3"), 6, 9, 1, 1);
			grid.attach (itemWidgets.OHItem("R","2","O","7"), 7, 9, 1, 1);
			grid.attach (itemWidgets.OHItem("R","","O","4"), 8, 9, 3, 1);

			grid.attach (itemWidgets.OHItem("R","2","O",""), 11, 9, 1, 1);
			grid.attach (itemWidgets.OHItem("R","","O",""), 12, 9, 1, 1);
			grid.attach (itemWidgets.OHItem("R","2","O","3"), 13, 9, 1, 1);
			grid.attach (itemWidgets.OHItem("R","","O","2"), 14, 9, 1, 1);
			grid.attach (itemWidgets.OHItem("R","2","O","5"), 15, 9, 1, 1);
			grid.attach (itemWidgets.OHItem("R","","O","3"), 16, 9, 1, 1);
			grid.attach (itemWidgets.OHItem("R","2","O","7"), 17, 9, 1, 1);
			grid.attach (itemWidgets.OHItem("R","","O","4"), 18, 9, 1, 1);

			grid.attach (itemWidgets.PeriodItem("RH"), 0, 10, 1, 1);

			grid.attach (itemWidgets.OHItem("R","","H","4"), 14, 10, 1, 1);
			grid.attach (itemWidgets.OHItem("R","","H","3"), 15, 10, 1, 1);
			grid.attach (itemWidgets.OHItem("R","","H","2"), 16, 10, 1, 1);
			grid.attach (itemWidgets.OHItem("R","","H",""), 17, 10, 1, 1);

			grid.attach (itemWidgets.PeriodItem("VI"), 0, 11, 1, 1);
			grid.attach (itemWidgets.PeriodItem(TextOperation.TextTrim("Lanthanides",10)), 1, 11, 3, 1);
			grid.attach (itemWidgets.ElementItem("57","La","138.90", multiElement.Resourse.cLantan, parent), 4, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("58","Ce","140.12", multiElement.Resourse.cLantan, parent), 5, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("59","Pr","140.91", multiElement.Resourse.cLantan, parent), 6, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("60","Nd","144.24", multiElement.Resourse.cLantan, parent), 7, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("61","Pm","[145]", multiElement.Resourse.cLantan, parent), 8, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("62","Sm","150.36", multiElement.Resourse.cLantan, parent), 9, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("63","Eu","151.96", multiElement.Resourse.cLantan, parent), 10, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("64","Gd","157.25", multiElement.Resourse.cLantan, parent), 11, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("65","Tb","158.93", multiElement.Resourse.cLantan, parent), 12, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("66","Dy","162.50", multiElement.Resourse.cLantan, parent), 13, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("67","Ho","164.93", multiElement.Resourse.cLantan, parent), 14, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("68","Er","167.26", multiElement.Resourse.cLantan, parent), 15, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("69","Tm","168.93", multiElement.Resourse.cLantan, parent), 16, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("70","Yb","173.61", multiElement.Resourse.cLantan, parent), 17, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("71","Lu","174.96", multiElement.Resourse.cLantan, parent), 18, 11, 1, 1);///////////

			grid.attach (itemWidgets.PeriodItem("VII"), 0, 12, 1, 1);
			grid.attach (itemWidgets.PeriodItem(TextOperation.TextTrim("Actinides",10)), 1, 12, 3, 1);
			grid.attach (itemWidgets.ElementItem("89","Ac","[227]", multiElement.Resourse.cActan, parent), 4, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("90","Th","223.04", multiElement.Resourse.cActan, parent), 5, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("91","Pa","[231]", multiElement.Resourse.cActan, parent), 6, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("92","U","238.02", multiElement.Resourse.cActan, parent), 7, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("93","Np","237.04", multiElement.Resourse.cActan, parent), 8, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("94","Pu","[244]", multiElement.Resourse.cActan, parent), 9, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("95","Am","[243]", multiElement.Resourse.cActan, parent), 10, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("96","Cm","[247]", multiElement.Resourse.cActan, parent), 11, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("97","Bk","[247]", multiElement.Resourse.cActan, parent), 12, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("98","Cf","[251]", multiElement.Resourse.cActan, parent), 13, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("99","Es","[252]", multiElement.Resourse.cActan, parent), 14, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("100","Fm","[257]", multiElement.Resourse.cActan, parent), 15, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("101","Md","[258]", multiElement.Resourse.cActan, parent), 16, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("102","No","259.1", multiElement.Resourse.cActan, parent), 17, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("103","Lr","[266]", multiElement.Resourse.cActan, parent), 18, 12, 1, 1);///////////

//			grid.attach (itemWidgets.TitleItem(TextOperation.TextTrim("Properties",7)), 0, 13, 1, 1);
			grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Properties",7), multiElement.Resourse.cUnknown), 0, 13, 2, 1);
			grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Halogens",11), multiElement.Resourse.cGalogen), 1, 13, 2, 1);
			grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Noble gases",11), multiElement.Resourse.cReal), 3, 13, 2, 1);
			grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Non metal",11), multiElement.Resourse.cNemetal), 5, 13, 2, 1);
			grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Alkali metals",11), multiElement.Resourse.cSheloch), 7, 13, 2, 1);
			grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Alkaline earth metals",11), multiElement.Resourse.cShelLand), 9, 13, 2, 1);
			grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Transition metals",11), multiElement.Resourse.cMetal), 11, 13, 2, 1);
			grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Post-transition metals",11), multiElement.Resourse.cPostmetal), 13, 13, 2, 1);
			grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Semimetals",11), multiElement.Resourse.cPolimetal), 15, 13, 2, 1);
			grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Properties unknown",11), multiElement.Resourse.cUnknown), 17, 13, 2, 1);
*/

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
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Properties",7), multiElement.Resourse.cUnknown), 0, 13, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Halogens",11), multiElement.Resourse.cGalogen), 1, 13, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Noble gases",11), multiElement.Resourse.cReal), 3, 13, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Non metal",11), multiElement.Resourse.cNemetal), 5, 13, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Alkali metals",11), multiElement.Resourse.cSheloch), 7, 13, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Alkaline earth metals",11), multiElement.Resourse.cShelLand), 9, 13, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Transition metals",11), multiElement.Resourse.cMetal), 11, 13, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Post-transition metals",11), multiElement.Resourse.cPostmetal), 13, 13, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Semimetals",11), multiElement.Resourse.cPolimetal), 15, 13, 2, 1);
			grid.attach (new PropertiesItem(TextOperation.TextTrim("Properties unknown",11), multiElement.Resourse.cUnknown), 17, 13, 2, 1);

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
