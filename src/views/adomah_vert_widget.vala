namespace Multielement {

    class AdomahVertWidget
    {

//        public Gtk.Label AdomahVertWidget (Window parent)
        public Gtk.Box AdomahVertWidget (MainWindow parent)
        {
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
/*
			grid.attach (itemWidgets.ElementItem("57","La","138.90", multiElement.Resourse.cLantan, parent), 4, 0, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("58","Ce","140.12", multiElement.Resourse.cLantan, parent), 4, 1, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("59","Pr","140.91", multiElement.Resourse.cLantan, parent), 4, 2, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("60","Nd","144.24", multiElement.Resourse.cLantan, parent), 4, 3, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("61","Pm","[145]", multiElement.Resourse.cLantan, parent), 4, 4, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("62","Sm","150.36", multiElement.Resourse.cLantan, parent), 4, 5, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("63","Eu","151.96", multiElement.Resourse.cLantan, parent), 4, 6, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("64","Gd","157.25", multiElement.Resourse.cLantan, parent), 4, 7, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("65","Tb","158.93", multiElement.Resourse.cLantan, parent), 4, 8, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("66","Dy","162.50", multiElement.Resourse.cLantan, parent), 4, 9, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("67","Ho","164.93", multiElement.Resourse.cLantan, parent), 4, 10, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("68","Er","167.26", multiElement.Resourse.cLantan, parent), 4, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("69","Tm","168.93", multiElement.Resourse.cLantan, parent), 4, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("70","Yb","173.61", multiElement.Resourse.cLantan, parent), 4, 13, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("71","Lu","174.96", multiElement.Resourse.cLantan, parent), 5, 15, 1, 1);///////////

			grid.attach (itemWidgets.ElementItem("89","Ac","[227]", multiElement.Resourse.cActan, parent), 5, 0, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("90","Th","223.04", multiElement.Resourse.cActan, parent), 5, 1, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("91","Pa","[231]", multiElement.Resourse.cActan, parent), 5, 2, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("92","U","238.02", multiElement.Resourse.cActan, parent), 5, 3, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("93","Np","237.04", multiElement.Resourse.cActan, parent), 5, 4, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("94","Pu","[244]", multiElement.Resourse.cActan, parent), 5, 5, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("95","Am","[243]", multiElement.Resourse.cActan, parent), 5, 6, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("96","Cm","[247]", multiElement.Resourse.cActan, parent), 5, 7, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("97","Bk","[247]", multiElement.Resourse.cActan, parent), 5, 8, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("98","Cf","[251]", multiElement.Resourse.cActan, parent), 5, 9, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("99","Es","[252]", multiElement.Resourse.cActan, parent), 5, 10, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("100","Fm","[257]", multiElement.Resourse.cActan, parent), 5, 11, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("101","Md","[258]", multiElement.Resourse.cActan, parent), 5, 12, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("102","No","259.1", multiElement.Resourse.cActan, parent), 5, 13, 1, 1);///////////
			grid.attach (itemWidgets.ElementItem("103","Lr","[266]", multiElement.Resourse.cActan, parent), 6, 15, 1, 1);///////////

			grid.attach (itemWidgets.PeriodItem("/"), 4, 14, 1, 1);
			grid.attach (itemWidgets.PeriodItem("/"), 5, 14, 1, 1);
			grid.attach (itemWidgets.PeriodItem("/"), 6, 14, 1, 1);

			grid.attach (itemWidgets.ElementItem("21","Sc","44.956", multiElement.Resourse.cMetal, parent), 3, 15, 1, 1);
			grid.attach (itemWidgets.ElementItem("22","Ti","47.88", multiElement.Resourse.cMetal, parent), 3, 16, 1, 1);
			grid.attach (itemWidgets.ElementItem("23","V","50.942", multiElement.Resourse.cMetal, parent), 3, 17, 1, 1);
			grid.attach (itemWidgets.ElementItem("24","Cr","51.996", multiElement.Resourse.cMetal, parent), 3, 18, 1, 1);
			grid.attach (itemWidgets.ElementItem("25","Mn","54.938", multiElement.Resourse.cMetal, parent), 3, 19, 1, 1);
			grid.attach (itemWidgets.ElementItem("26","Fe","55.847", multiElement.Resourse.cMetal, parent), 3, 20, 1, 1);
			grid.attach (itemWidgets.ElementItem("27","Co","58.993", multiElement.Resourse.cMetal, parent), 3, 21, 1, 1);
			grid.attach (itemWidgets.ElementItem("28","Ni","58.69", multiElement.Resourse.cMetal, parent), 3, 22, 1, 1);
			grid.attach (itemWidgets.ElementItem("29","Cu","63.546", multiElement.Resourse.cMetal, parent), 3, 23, 1, 1);
			grid.attach (itemWidgets.ElementItem("30","Zn","65.39", multiElement.Resourse.cMetal, parent), 3, 24, 1, 1);

			grid.attach (itemWidgets.ElementItem("39","Y","88.906", multiElement.Resourse.cMetal, parent), 4, 15, 1, 1);
			grid.attach (itemWidgets.ElementItem("40","Zr","91.224", multiElement.Resourse.cMetal, parent), 4, 16, 1, 1);
			grid.attach (itemWidgets.ElementItem("41","Nb","92.906", multiElement.Resourse.cMetal, parent), 4, 17, 1, 1);
			grid.attach (itemWidgets.ElementItem("42","Mo","95.94", multiElement.Resourse.cMetal, parent), 4, 18, 1, 1);
			grid.attach (itemWidgets.ElementItem("43","Tc","98.906", multiElement.Resourse.cMetal, parent), 4, 19, 1, 1);
			grid.attach (itemWidgets.ElementItem("44","Ru","101.07", multiElement.Resourse.cMetal, parent), 4, 20, 1, 1);
			grid.attach (itemWidgets.ElementItem("45","Rh","102.91", multiElement.Resourse.cMetal, parent), 4, 21, 1, 1);
			grid.attach (itemWidgets.ElementItem("46","Pd","106.42", multiElement.Resourse.cMetal, parent), 4, 22, 1, 1);
			grid.attach (itemWidgets.ElementItem("47","Ag","107.87", multiElement.Resourse.cMetal, parent), 4, 23, 1, 1);
			grid.attach (itemWidgets.ElementItem("48","Cd","112.41", multiElement.Resourse.cMetal, parent), 4, 24, 1, 1);

			grid.attach (itemWidgets.ElementItem("72","Hf","178.49", multiElement.Resourse.cMetal, parent), 5, 16, 1, 1);
			grid.attach (itemWidgets.ElementItem("73","Ta","180.95", multiElement.Resourse.cMetal, parent), 5, 17, 1, 1);
			grid.attach (itemWidgets.ElementItem("74","W","183.85", multiElement.Resourse.cMetal, parent), 5, 18, 1, 1);
			grid.attach (itemWidgets.ElementItem("75","Re","185.21", multiElement.Resourse.cMetal, parent), 5, 19, 1, 1);
			grid.attach (itemWidgets.ElementItem("76","Os","190.2", multiElement.Resourse.cMetal, parent), 5, 20, 1, 1);
			grid.attach (itemWidgets.ElementItem("77","Ir","192.22", multiElement.Resourse.cMetal, parent), 5, 21, 1, 1);
			grid.attach (itemWidgets.ElementItem("78","Pt","195.08", multiElement.Resourse.cMetal, parent), 5, 22, 1, 1);
			grid.attach (itemWidgets.ElementItem("79","Au","196.97", multiElement.Resourse.cMetal, parent), 5, 23, 1, 1);
			grid.attach (itemWidgets.ElementItem("80","Hg","200.59", multiElement.Resourse.cMetal, parent), 5, 24, 1, 1);

			grid.attach (itemWidgets.ElementItem("104","Rf","[261]", multiElement.Resourse.cMetal, parent), 6, 16, 1, 1);
			grid.attach (itemWidgets.ElementItem("105","Db","[268]", multiElement.Resourse.cMetal, parent), 6, 17, 1, 1);
			grid.attach (itemWidgets.ElementItem("106","Sg","[271]", multiElement.Resourse.cMetal, parent), 6, 18, 1, 1);
			grid.attach (itemWidgets.ElementItem("107","Bh","[267]", multiElement.Resourse.cMetal, parent), 6, 19, 1, 1);
			grid.attach (itemWidgets.ElementItem("108","Hs","[269]", multiElement.Resourse.cMetal, parent), 6, 20, 1, 1);
			grid.attach (itemWidgets.ElementItem("109","Mt","[276]", multiElement.Resourse.cMetal, parent), 6, 21, 1, 1);
			grid.attach (itemWidgets.ElementItem("110","Ds","[281]", multiElement.Resourse.cMetal, parent), 6, 22, 1, 1);
			grid.attach (itemWidgets.ElementItem("111","Rg","[281]", multiElement.Resourse.cMetal, parent), 6, 23, 1, 1);
			grid.attach (itemWidgets.ElementItem("112","Cn","[285]", multiElement.Resourse.cMetal, parent), 6, 24, 1, 1);

			grid.attach (itemWidgets.PeriodItem("/"), 3, 25, 1, 1);
			grid.attach (itemWidgets.PeriodItem("/"), 4, 25, 1, 1);
			grid.attach (itemWidgets.PeriodItem("/"), 5, 25, 1, 1);
			grid.attach (itemWidgets.PeriodItem("/"), 6, 25, 1, 1);
			grid.attach (itemWidgets.PeriodItem("/"), 7, 25, 1, 1);

			grid.attach (itemWidgets.ElementItem("5","B","10.811", multiElement.Resourse.cPolimetal, parent), 2, 26, 1, 1);
			grid.attach (itemWidgets.ElementItem("6","C","12.011", multiElement.Resourse.cNemetal, parent), 2, 27, 1, 1);
			grid.attach (itemWidgets.ElementItem("7","N","14.007", multiElement.Resourse.cNemetal, parent), 2, 28, 1, 1);
			grid.attach (itemWidgets.ElementItem("8","O","15.999", multiElement.Resourse.cNemetal, parent), 2, 29, 1, 1);
			grid.attach (itemWidgets.ElementItem("9","F","18.998", multiElement.Resourse.cGalogen, parent), 2, 30, 1, 1);
			grid.attach (itemWidgets.ElementItem("10","Ne","20.179", multiElement.Resourse.cReal, parent), 2, 31, 1, 1);

			grid.attach (itemWidgets.ElementItem("13","Al","26.982", multiElement.Resourse.cPostmetal, parent), 3, 26, 1, 1);
			grid.attach (itemWidgets.ElementItem("14","Si","28.086", multiElement.Resourse.cPolimetal, parent), 3, 27, 1, 1);
			grid.attach (itemWidgets.ElementItem("15","P","30.974", multiElement.Resourse.cNemetal, parent), 3, 28, 1, 1);
			grid.attach (itemWidgets.ElementItem("16","S","32.066", multiElement.Resourse.cNemetal, parent), 3, 29, 1, 1);
			grid.attach (itemWidgets.ElementItem("17","Cl","35.453", multiElement.Resourse.cGalogen, parent), 3, 30, 1, 1);
			grid.attach (itemWidgets.ElementItem("18","Ar","39.948", multiElement.Resourse.cReal, parent), 3, 31, 1, 1);

			grid.attach (itemWidgets.ElementItem("31","Ga","69.723", multiElement.Resourse.cPostmetal, parent), 4, 26, 1, 1);
			grid.attach (itemWidgets.ElementItem("32","Ge","72.59", multiElement.Resourse.cPolimetal, parent), 4, 27, 1, 1);
			grid.attach (itemWidgets.ElementItem("33","As","74.922", multiElement.Resourse.cPolimetal, parent), 4, 28, 1, 1);
			grid.attach (itemWidgets.ElementItem("34","Se","78.96", multiElement.Resourse.cNemetal, parent), 4, 29, 1, 1);
			grid.attach (itemWidgets.ElementItem("35","Br","79.904", multiElement.Resourse.cGalogen, parent), 4, 30, 1, 1);
			grid.attach (itemWidgets.ElementItem("36","Kr","83.80", multiElement.Resourse.cReal, parent), 4, 31, 1, 1);

			grid.attach (itemWidgets.ElementItem("49","In","114.82", multiElement.Resourse.cPostmetal, parent), 5, 26, 1, 1);
			grid.attach (itemWidgets.ElementItem("50","Sn","118.71", multiElement.Resourse.cPostmetal, parent), 5, 27, 1, 1);
			grid.attach (itemWidgets.ElementItem("51","Sb","121.75", multiElement.Resourse.cPolimetal, parent), 5, 28, 1, 1);
			grid.attach (itemWidgets.ElementItem("52","Te","127.60", multiElement.Resourse.cPolimetal, parent), 5, 29, 1, 1);
			grid.attach (itemWidgets.ElementItem("53","I","126.91", multiElement.Resourse.cGalogen, parent), 5, 30, 1, 1);
			grid.attach (itemWidgets.ElementItem("54","Xe","131.29", multiElement.Resourse.cReal, parent), 5, 31, 1, 1);

			grid.attach (itemWidgets.ElementItem("81","Tl","204.38", multiElement.Resourse.cPostmetal, parent), 6, 26, 1, 1);
			grid.attach (itemWidgets.ElementItem("82","Pb","207.2", multiElement.Resourse.cPostmetal, parent), 6, 27, 1, 1);
			grid.attach (itemWidgets.ElementItem("83","Bi","208.98", multiElement.Resourse.cPostmetal, parent), 6, 28, 1, 1);
			grid.attach (itemWidgets.ElementItem("84","Po","[209]", multiElement.Resourse.cPolimetal, parent), 6, 29, 1, 1);
			grid.attach (itemWidgets.ElementItem("85","At","[210]", multiElement.Resourse.cGalogen, parent), 6, 30, 1, 1);
			grid.attach (itemWidgets.ElementItem("86","Rn","[222]", multiElement.Resourse.cReal, parent), 6, 31, 1, 1);

			grid.attach (itemWidgets.ElementItem("113","Nh","[284]", multiElement.Resourse.cPostmetal, parent), 7, 26, 1, 1);
			grid.attach (itemWidgets.ElementItem("114","Fl","[289]", multiElement.Resourse.cPostmetal, parent), 7, 27, 1, 1);
			grid.attach (itemWidgets.ElementItem("115","Mc","[288]", multiElement.Resourse.cPostmetal, parent), 7, 28, 1, 1);
			grid.attach (itemWidgets.ElementItem("116","Lv","[293]", multiElement.Resourse.cPostmetal, parent), 7, 29, 1, 1);
			grid.attach (itemWidgets.ElementItem("117","Ts","[294]", multiElement.Resourse.cGalogen, parent), 7, 30, 1, 1);
			grid.attach (itemWidgets.ElementItem("118","Og","[294]", multiElement.Resourse.cReal, parent), 7, 31, 1, 1);

			grid.attach (itemWidgets.ElementItem("1","H","1.0079", multiElement.Resourse.cNemetal, parent), 1, 30, 1, 1);
			grid.attach (itemWidgets.ElementItem("2","He","4.0026", multiElement.Resourse.cReal, parent), 1, 31, 1, 1);

			grid.attach (itemWidgets.PeriodItem("/"), 1, 32, 1, 1);
			grid.attach (itemWidgets.PeriodItem("/"), 2, 32, 1, 1);
			grid.attach (itemWidgets.PeriodItem("/"), 3, 32, 1, 1);
			grid.attach (itemWidgets.PeriodItem("/"), 4, 32, 1, 1);
			grid.attach (itemWidgets.PeriodItem("/"), 5, 32, 1, 1);
			grid.attach (itemWidgets.PeriodItem("/"), 6, 32, 1, 1);
			grid.attach (itemWidgets.PeriodItem("/"), 7, 32, 1, 1);
			grid.attach (itemWidgets.PeriodItem("/"), 8, 32, 1, 1);

			grid.attach (itemWidgets.ElementItem("1","H","1.0079", multiElement.Resourse.cNemetal, parent), 1, 33, 1, 1);
			grid.attach (itemWidgets.ElementItem("2","He","4.0026", multiElement.Resourse.cReal, parent), 1, 34, 1, 1);

			grid.attach (itemWidgets.ElementItem("3","Li","6.9412", multiElement.Resourse.cSheloch, parent), 2, 33, 1, 1);
			grid.attach (itemWidgets.ElementItem("4","Be","9.0121", multiElement.Resourse.cShelLand, parent), 2, 34, 1, 1);

			grid.attach (itemWidgets.ElementItem("11","Na","22.989", multiElement.Resourse.cSheloch, parent), 3, 33, 1, 1);
			grid.attach (itemWidgets.ElementItem("12","Mg","24.305", multiElement.Resourse.cShelLand, parent), 3, 34, 1, 1);

			grid.attach (itemWidgets.ElementItem("19","K","39.098", multiElement.Resourse.cSheloch, parent), 4, 33, 1, 1);
			grid.attach (itemWidgets.ElementItem("20","Ca","40.078", multiElement.Resourse.cShelLand, parent), 4, 34, 1, 1);

			grid.attach (itemWidgets.ElementItem("37","Rb","85.468", multiElement.Resourse.cSheloch, parent), 5, 33, 1, 1);
			grid.attach (itemWidgets.ElementItem("38","Sr","87.82", multiElement.Resourse.cShelLand, parent), 5, 34, 1, 1);

			grid.attach (itemWidgets.ElementItem("55","Cs","132.91", multiElement.Resourse.cSheloch, parent), 6, 33, 1, 1);
			grid.attach (itemWidgets.ElementItem("56","Ba","137.33", multiElement.Resourse.cShelLand, parent), 6, 34, 1, 1);

			grid.attach (itemWidgets.ElementItem("87","Fr","[223]", multiElement.Resourse.cSheloch, parent), 7, 33, 1, 1);
			grid.attach (itemWidgets.ElementItem("88","Ra","226.02", multiElement.Resourse.cShelLand, parent), 7, 34, 1, 1);

			grid.attach (itemWidgets.ElementItem("119","Uue","[]", multiElement.Resourse.cPostmetal, parent), 8, 33, 1, 1);
			grid.attach (itemWidgets.ElementItem("120","Ubn","[]", multiElement.Resourse.cPostmetal, parent), 8, 34, 1, 1);
*/

			grid.attach (new ElementItem("57","La","138.90", multiElement.Resourse.cLantan, parent), 4, 0, 1, 1);///////////
			grid.attach (new ElementItem("58","Ce","140.12", multiElement.Resourse.cLantan, parent), 4, 1, 1, 1);///////////
			grid.attach (new ElementItem("59","Pr","140.91", multiElement.Resourse.cLantan, parent), 4, 2, 1, 1);///////////
			grid.attach (new ElementItem("60","Nd","144.24", multiElement.Resourse.cLantan, parent), 4, 3, 1, 1);///////////
			grid.attach (new ElementItem("61","Pm","[145]", multiElement.Resourse.cLantan, parent), 4, 4, 1, 1);///////////
			grid.attach (new ElementItem("62","Sm","150.36", multiElement.Resourse.cLantan, parent), 4, 5, 1, 1);///////////
			grid.attach (new ElementItem("63","Eu","151.96", multiElement.Resourse.cLantan, parent), 4, 6, 1, 1);///////////
			grid.attach (new ElementItem("64","Gd","157.25", multiElement.Resourse.cLantan, parent), 4, 7, 1, 1);///////////
			grid.attach (new ElementItem("65","Tb","158.93", multiElement.Resourse.cLantan, parent), 4, 8, 1, 1);///////////
			grid.attach (new ElementItem("66","Dy","162.50", multiElement.Resourse.cLantan, parent), 4, 9, 1, 1);///////////
			grid.attach (new ElementItem("67","Ho","164.93", multiElement.Resourse.cLantan, parent), 4, 10, 1, 1);///////////
			grid.attach (new ElementItem("68","Er","167.26", multiElement.Resourse.cLantan, parent), 4, 11, 1, 1);///////////
			grid.attach (new ElementItem("69","Tm","168.93", multiElement.Resourse.cLantan, parent), 4, 12, 1, 1);///////////
			grid.attach (new ElementItem("70","Yb","173.61", multiElement.Resourse.cLantan, parent), 4, 13, 1, 1);///////////
			grid.attach (new ElementItem("71","Lu","174.96", multiElement.Resourse.cLantan, parent), 5, 15, 1, 1);///////////

			grid.attach (new ElementItem("89","Ac","[227]", multiElement.Resourse.cActan, parent), 5, 0, 1, 1);///////////
			grid.attach (new ElementItem("90","Th","223.04", multiElement.Resourse.cActan, parent), 5, 1, 1, 1);///////////
			grid.attach (new ElementItem("91","Pa","[231]", multiElement.Resourse.cActan, parent), 5, 2, 1, 1);///////////
			grid.attach (new ElementItem("92","U","238.02", multiElement.Resourse.cActan, parent), 5, 3, 1, 1);///////////
			grid.attach (new ElementItem("93","Np","237.04", multiElement.Resourse.cActan, parent), 5, 4, 1, 1);///////////
			grid.attach (new ElementItem("94","Pu","[244]", multiElement.Resourse.cActan, parent), 5, 5, 1, 1);///////////
			grid.attach (new ElementItem("95","Am","[243]", multiElement.Resourse.cActan, parent), 5, 6, 1, 1);///////////
			grid.attach (new ElementItem("96","Cm","[247]", multiElement.Resourse.cActan, parent), 5, 7, 1, 1);///////////
			grid.attach (new ElementItem("97","Bk","[247]", multiElement.Resourse.cActan, parent), 5, 8, 1, 1);///////////
			grid.attach (new ElementItem("98","Cf","[251]", multiElement.Resourse.cActan, parent), 5, 9, 1, 1);///////////
			grid.attach (new ElementItem("99","Es","[252]", multiElement.Resourse.cActan, parent), 5, 10, 1, 1);///////////
			grid.attach (new ElementItem("100","Fm","[257]", multiElement.Resourse.cActan, parent), 5, 11, 1, 1);///////////
			grid.attach (new ElementItem("101","Md","[258]", multiElement.Resourse.cActan, parent), 5, 12, 1, 1);///////////
			grid.attach (new ElementItem("102","No","259.1", multiElement.Resourse.cActan, parent), 5, 13, 1, 1);///////////
			grid.attach (new ElementItem("103","Lr","[266]", multiElement.Resourse.cActan, parent), 6, 15, 1, 1);///////////

			grid.attach (new PeriodItem("/"), 4, 14, 1, 1);
			grid.attach (new PeriodItem("/"), 5, 14, 1, 1);
			grid.attach (new PeriodItem("/"), 6, 14, 1, 1);

			grid.attach (new ElementItem("21","Sc","44.956", multiElement.Resourse.cMetal, parent), 3, 15, 1, 1);
			grid.attach (new ElementItem("22","Ti","47.88", multiElement.Resourse.cMetal, parent), 3, 16, 1, 1);
			grid.attach (new ElementItem("23","V","50.942", multiElement.Resourse.cMetal, parent), 3, 17, 1, 1);
			grid.attach (new ElementItem("24","Cr","51.996", multiElement.Resourse.cMetal, parent), 3, 18, 1, 1);
			grid.attach (new ElementItem("25","Mn","54.938", multiElement.Resourse.cMetal, parent), 3, 19, 1, 1);
			grid.attach (new ElementItem("26","Fe","55.847", multiElement.Resourse.cMetal, parent), 3, 20, 1, 1);
			grid.attach (new ElementItem("27","Co","58.993", multiElement.Resourse.cMetal, parent), 3, 21, 1, 1);
			grid.attach (new ElementItem("28","Ni","58.69", multiElement.Resourse.cMetal, parent), 3, 22, 1, 1);
			grid.attach (new ElementItem("29","Cu","63.546", multiElement.Resourse.cMetal, parent), 3, 23, 1, 1);
			grid.attach (new ElementItem("30","Zn","65.39", multiElement.Resourse.cMetal, parent), 3, 24, 1, 1);

			grid.attach (new ElementItem("39","Y","88.906", multiElement.Resourse.cMetal, parent), 4, 15, 1, 1);
			grid.attach (new ElementItem("40","Zr","91.224", multiElement.Resourse.cMetal, parent), 4, 16, 1, 1);
			grid.attach (new ElementItem("41","Nb","92.906", multiElement.Resourse.cMetal, parent), 4, 17, 1, 1);
			grid.attach (new ElementItem("42","Mo","95.94", multiElement.Resourse.cMetal, parent), 4, 18, 1, 1);
			grid.attach (new ElementItem("43","Tc","98.906", multiElement.Resourse.cMetal, parent), 4, 19, 1, 1);
			grid.attach (new ElementItem("44","Ru","101.07", multiElement.Resourse.cMetal, parent), 4, 20, 1, 1);
			grid.attach (new ElementItem("45","Rh","102.91", multiElement.Resourse.cMetal, parent), 4, 21, 1, 1);
			grid.attach (new ElementItem("46","Pd","106.42", multiElement.Resourse.cMetal, parent), 4, 22, 1, 1);
			grid.attach (new ElementItem("47","Ag","107.87", multiElement.Resourse.cMetal, parent), 4, 23, 1, 1);
			grid.attach (new ElementItem("48","Cd","112.41", multiElement.Resourse.cMetal, parent), 4, 24, 1, 1);

			grid.attach (new ElementItem("72","Hf","178.49", multiElement.Resourse.cMetal, parent), 5, 16, 1, 1);
			grid.attach (new ElementItem("73","Ta","180.95", multiElement.Resourse.cMetal, parent), 5, 17, 1, 1);
			grid.attach (new ElementItem("74","W","183.85", multiElement.Resourse.cMetal, parent), 5, 18, 1, 1);
			grid.attach (new ElementItem("75","Re","185.21", multiElement.Resourse.cMetal, parent), 5, 19, 1, 1);
			grid.attach (new ElementItem("76","Os","190.2", multiElement.Resourse.cMetal, parent), 5, 20, 1, 1);
			grid.attach (new ElementItem("77","Ir","192.22", multiElement.Resourse.cMetal, parent), 5, 21, 1, 1);
			grid.attach (new ElementItem("78","Pt","195.08", multiElement.Resourse.cMetal, parent), 5, 22, 1, 1);
			grid.attach (new ElementItem("79","Au","196.97", multiElement.Resourse.cMetal, parent), 5, 23, 1, 1);
			grid.attach (new ElementItem("80","Hg","200.59", multiElement.Resourse.cMetal, parent), 5, 24, 1, 1);

			grid.attach (new ElementItem("104","Rf","[261]", multiElement.Resourse.cMetal, parent), 6, 16, 1, 1);
			grid.attach (new ElementItem("105","Db","[268]", multiElement.Resourse.cMetal, parent), 6, 17, 1, 1);
			grid.attach (new ElementItem("106","Sg","[271]", multiElement.Resourse.cMetal, parent), 6, 18, 1, 1);
			grid.attach (new ElementItem("107","Bh","[267]", multiElement.Resourse.cMetal, parent), 6, 19, 1, 1);
			grid.attach (new ElementItem("108","Hs","[269]", multiElement.Resourse.cMetal, parent), 6, 20, 1, 1);
			grid.attach (new ElementItem("109","Mt","[276]", multiElement.Resourse.cMetal, parent), 6, 21, 1, 1);
			grid.attach (new ElementItem("110","Ds","[281]", multiElement.Resourse.cMetal, parent), 6, 22, 1, 1);
			grid.attach (new ElementItem("111","Rg","[281]", multiElement.Resourse.cMetal, parent), 6, 23, 1, 1);
			grid.attach (new ElementItem("112","Cn","[285]", multiElement.Resourse.cMetal, parent), 6, 24, 1, 1);

			grid.attach (new PeriodItem("/"), 3, 25, 1, 1);
			grid.attach (new PeriodItem("/"), 4, 25, 1, 1);
			grid.attach (new PeriodItem("/"), 5, 25, 1, 1);
			grid.attach (new PeriodItem("/"), 6, 25, 1, 1);
			grid.attach (new PeriodItem("/"), 7, 25, 1, 1);

			grid.attach (new ElementItem("5","B","10.811", multiElement.Resourse.cPolimetal, parent), 2, 26, 1, 1);
			grid.attach (new ElementItem("6","C","12.011", multiElement.Resourse.cNemetal, parent), 2, 27, 1, 1);
			grid.attach (new ElementItem("7","N","14.007", multiElement.Resourse.cNemetal, parent), 2, 28, 1, 1);
			grid.attach (new ElementItem("8","O","15.999", multiElement.Resourse.cNemetal, parent), 2, 29, 1, 1);
			grid.attach (new ElementItem("9","F","18.998", multiElement.Resourse.cGalogen, parent), 2, 30, 1, 1);
			grid.attach (new ElementItem("10","Ne","20.179", multiElement.Resourse.cReal, parent), 2, 31, 1, 1);

			grid.attach (new ElementItem("13","Al","26.982", multiElement.Resourse.cPostmetal, parent), 3, 26, 1, 1);
			grid.attach (new ElementItem("14","Si","28.086", multiElement.Resourse.cPolimetal, parent), 3, 27, 1, 1);
			grid.attach (new ElementItem("15","P","30.974", multiElement.Resourse.cNemetal, parent), 3, 28, 1, 1);
			grid.attach (new ElementItem("16","S","32.066", multiElement.Resourse.cNemetal, parent), 3, 29, 1, 1);
			grid.attach (new ElementItem("17","Cl","35.453", multiElement.Resourse.cGalogen, parent), 3, 30, 1, 1);
			grid.attach (new ElementItem("18","Ar","39.948", multiElement.Resourse.cReal, parent), 3, 31, 1, 1);

			grid.attach (new ElementItem("31","Ga","69.723", multiElement.Resourse.cPostmetal, parent), 4, 26, 1, 1);
			grid.attach (new ElementItem("32","Ge","72.59", multiElement.Resourse.cPolimetal, parent), 4, 27, 1, 1);
			grid.attach (new ElementItem("33","As","74.922", multiElement.Resourse.cPolimetal, parent), 4, 28, 1, 1);
			grid.attach (new ElementItem("34","Se","78.96", multiElement.Resourse.cNemetal, parent), 4, 29, 1, 1);
			grid.attach (new ElementItem("35","Br","79.904", multiElement.Resourse.cGalogen, parent), 4, 30, 1, 1);
			grid.attach (new ElementItem("36","Kr","83.80", multiElement.Resourse.cReal, parent), 4, 31, 1, 1);

			grid.attach (new ElementItem("49","In","114.82", multiElement.Resourse.cPostmetal, parent), 5, 26, 1, 1);
			grid.attach (new ElementItem("50","Sn","118.71", multiElement.Resourse.cPostmetal, parent), 5, 27, 1, 1);
			grid.attach (new ElementItem("51","Sb","121.75", multiElement.Resourse.cPolimetal, parent), 5, 28, 1, 1);
			grid.attach (new ElementItem("52","Te","127.60", multiElement.Resourse.cPolimetal, parent), 5, 29, 1, 1);
			grid.attach (new ElementItem("53","I","126.91", multiElement.Resourse.cGalogen, parent), 5, 30, 1, 1);
			grid.attach (new ElementItem("54","Xe","131.29", multiElement.Resourse.cReal, parent), 5, 31, 1, 1);

			grid.attach (new ElementItem("81","Tl","204.38", multiElement.Resourse.cPostmetal, parent), 6, 26, 1, 1);
			grid.attach (new ElementItem("82","Pb","207.2", multiElement.Resourse.cPostmetal, parent), 6, 27, 1, 1);
			grid.attach (new ElementItem("83","Bi","208.98", multiElement.Resourse.cPostmetal, parent), 6, 28, 1, 1);
			grid.attach (new ElementItem("84","Po","[209]", multiElement.Resourse.cPolimetal, parent), 6, 29, 1, 1);
			grid.attach (new ElementItem("85","At","[210]", multiElement.Resourse.cGalogen, parent), 6, 30, 1, 1);
			grid.attach (new ElementItem("86","Rn","[222]", multiElement.Resourse.cReal, parent), 6, 31, 1, 1);

			grid.attach (new ElementItem("113","Nh","[284]", multiElement.Resourse.cPostmetal, parent), 7, 26, 1, 1);
			grid.attach (new ElementItem("114","Fl","[289]", multiElement.Resourse.cPostmetal, parent), 7, 27, 1, 1);
			grid.attach (new ElementItem("115","Mc","[288]", multiElement.Resourse.cPostmetal, parent), 7, 28, 1, 1);
			grid.attach (new ElementItem("116","Lv","[293]", multiElement.Resourse.cPostmetal, parent), 7, 29, 1, 1);
			grid.attach (new ElementItem("117","Ts","[294]", multiElement.Resourse.cGalogen, parent), 7, 30, 1, 1);
			grid.attach (new ElementItem("118","Og","[294]", multiElement.Resourse.cReal, parent), 7, 31, 1, 1);

			grid.attach (new ElementItem("1","H","1.0079", multiElement.Resourse.cNemetal, parent), 1, 30, 1, 1);
			grid.attach (new ElementItem("2","He","4.0026", multiElement.Resourse.cReal, parent), 1, 31, 1, 1);

			grid.attach (new PeriodItem("/"), 1, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 2, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 3, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 4, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 5, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 6, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 7, 32, 1, 1);
			grid.attach (new PeriodItem("/"), 8, 32, 1, 1);

			grid.attach (new ElementItem("1","H","1.0079", multiElement.Resourse.cNemetal, parent), 1, 33, 1, 1);
			grid.attach (new ElementItem("2","He","4.0026", multiElement.Resourse.cReal, parent), 1, 34, 1, 1);

			grid.attach (new ElementItem("3","Li","6.9412", multiElement.Resourse.cSheloch, parent), 2, 33, 1, 1);
			grid.attach (new ElementItem("4","Be","9.0121", multiElement.Resourse.cShelLand, parent), 2, 34, 1, 1);

			grid.attach (new ElementItem("11","Na","22.989", multiElement.Resourse.cSheloch, parent), 3, 33, 1, 1);
			grid.attach (new ElementItem("12","Mg","24.305", multiElement.Resourse.cShelLand, parent), 3, 34, 1, 1);

			grid.attach (new ElementItem("19","K","39.098", multiElement.Resourse.cSheloch, parent), 4, 33, 1, 1);
			grid.attach (new ElementItem("20","Ca","40.078", multiElement.Resourse.cShelLand, parent), 4, 34, 1, 1);

			grid.attach (new ElementItem("37","Rb","85.468", multiElement.Resourse.cSheloch, parent), 5, 33, 1, 1);
			grid.attach (new ElementItem("38","Sr","87.82", multiElement.Resourse.cShelLand, parent), 5, 34, 1, 1);

			grid.attach (new ElementItem("55","Cs","132.91", multiElement.Resourse.cSheloch, parent), 6, 33, 1, 1);
			grid.attach (new ElementItem("56","Ba","137.33", multiElement.Resourse.cShelLand, parent), 6, 34, 1, 1);

			grid.attach (new ElementItem("87","Fr","[223]", multiElement.Resourse.cSheloch, parent), 7, 33, 1, 1);
			grid.attach (new ElementItem("88","Ra","226.02", multiElement.Resourse.cShelLand, parent), 7, 34, 1, 1);

			grid.attach (new ElementItem("119","Uue","[]", multiElement.Resourse.cPostmetal, parent), 8, 33, 1, 1);
			grid.attach (new ElementItem("120","Ubn","[]", multiElement.Resourse.cPostmetal, parent), 8, 34, 1, 1);

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
