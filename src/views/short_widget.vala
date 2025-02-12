using Gtk;
using GLib;
//using Gdk;
using MyLib;

namespace Multielement {

    class ShortWidget
    {

      public Gtk.Box ShortWidget (MainWindow parent)
      {
	      //Gtk.VBox mainBox = new VBox (false, 1);//0
	      Gtk.Box mainBox = new Gtk.Box (Gtk.Orientation.VERTICAL, 1);//0
	      //mainBox.set_border_width (2);//0;

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
	      grid.attach (itemWidgets.PeriodItem("Group"), 2, 0, 12, 1);

	      grid.attach (itemWidgets.TitleItem("Period"), 0, 0, 1, 2);
	      grid.attach (itemWidgets.TitleItem("Row"), 1, 0, 1, 2);
	      grid.attach (itemWidgets.PeriodItem("I"), 2, 1, 1, 1);
	      grid.attach (itemWidgets.PeriodItem("II"), 3, 1, 1, 1);
	      grid.attach (itemWidgets.PeriodItem("III"), 4, 1, 1, 1);
	      grid.attach (itemWidgets.PeriodItem("IV"), 5, 1, 1, 1);
	      grid.attach (itemWidgets.PeriodItem("V"), 6, 1, 1, 1);
	      grid.attach (itemWidgets.PeriodItem("VI"), 7, 1, 1, 1);
	      grid.attach (itemWidgets.PeriodItem("VII"), 8, 1, 1, 1);
	      grid.attach (itemWidgets.PeriodItem("VIII"), 9, 1, 3, 1);

	      grid.attach (itemWidgets.PeriodItem("I"), 0, 2, 1, 1);
	      grid.attach (itemWidgets.PeriodItem("1"), 1, 2, 1, 1);
          grid.attach (itemWidgets.ElementItem("1","H","1.0079", multiElement.Resourse.cNemetal, parent), 2, 2, 1, 1);
	      grid.attach (itemWidgets.ElementItem("2","He","4.0026", multiElement.Resourse.cReal, parent), 9, 2, 1, 1);

	      grid.attach (itemWidgets.PeriodItem("II"), 0, 3, 1, 1);
	      grid.attach (itemWidgets.PeriodItem("2"), 1, 3, 1, 1);
	      grid.attach (itemWidgets.ElementItem("3","Li","6.9412", multiElement.Resourse.cSheloch, parent), 2, 3, 1, 1);
	      grid.attach (itemWidgets.ElementItem("4","Be","9.0121", multiElement.Resourse.cShelLand, parent), 3, 3, 1, 1);
	      grid.attach (itemWidgets.ElementItem("5","B","10.811", multiElement.Resourse.cPolimetal, parent), 4, 3, 1, 1);
	      grid.attach (itemWidgets.ElementItem("6","C","12.011", multiElement.Resourse.cNemetal, parent), 5, 3, 1, 1);
	      grid.attach (itemWidgets.ElementItem("7","N","14.007", multiElement.Resourse.cNemetal, parent), 6, 3, 1, 1);
	      grid.attach (itemWidgets.ElementItem("8","O","15.999", multiElement.Resourse.cNemetal, parent), 7, 3, 1, 1);
	      grid.attach (itemWidgets.ElementItem("9","F","18.998", multiElement.Resourse.cGalogen, parent), 8, 3, 1, 1);
	      grid.attach (itemWidgets.ElementItem("10","Ne","20.179", multiElement.Resourse.cReal, parent), 9, 3, 1, 1);

	      grid.attach (itemWidgets.PeriodItem("III"), 0, 4, 1, 1);
	      grid.attach (itemWidgets.PeriodItem("3"), 1, 4, 1, 1);
	      grid.attach (itemWidgets.ElementItem("11","Na","22.989", multiElement.Resourse.cSheloch, parent), 2, 4, 1, 1);
	      grid.attach (itemWidgets.ElementItem("12","Mg","24.305", multiElement.Resourse.cShelLand, parent), 3, 4, 1, 1);
	      grid.attach (itemWidgets.ElementItem("13","Al","26.982", multiElement.Resourse.cPostmetal, parent), 4, 4, 1, 1);
	      grid.attach (itemWidgets.ElementItem("14","Si","28.086", multiElement.Resourse.cPolimetal, parent), 5, 4, 1, 1);
	      grid.attach (itemWidgets.ElementItem("15","P","30.974", multiElement.Resourse.cNemetal, parent), 6, 4, 1, 1);
	      grid.attach (itemWidgets.ElementItem("16","S","32.066", multiElement.Resourse.cNemetal, parent), 7, 4, 1, 1);
	      grid.attach (itemWidgets.ElementItem("17","Cl","35.453", multiElement.Resourse.cGalogen, parent), 8, 4, 1, 1);
	      grid.attach (itemWidgets.ElementItem("18","Ar","39.948", multiElement.Resourse.cReal, parent), 9, 4, 1, 1);

	      grid.attach (itemWidgets.PeriodItem("IV"), 0, 5, 1, 2);
	      grid.attach (itemWidgets.PeriodItem("4"), 1, 5, 1, 1);
	      grid.attach (itemWidgets.ElementItem("19","K","39.098", multiElement.Resourse.cSheloch, parent), 2, 5, 1, 1);
	      grid.attach (itemWidgets.ElementItem("20","Ca","40.078", multiElement.Resourse.cShelLand, parent), 3, 5, 1, 1);
	      grid.attach (itemWidgets.ElementItem("21","Sc","44.956", multiElement.Resourse.cMetal, parent), 4, 5, 1, 1);
	      grid.attach (itemWidgets.ElementItem("22","Ti","47.88", multiElement.Resourse.cMetal, parent), 5, 5, 1, 1);
	      grid.attach (itemWidgets.ElementItem("23","V","50.942", multiElement.Resourse.cMetal, parent), 6, 5, 1, 1);
	      grid.attach (itemWidgets.ElementItem("24","Cr","51.996", multiElement.Resourse.cMetal, parent), 7, 5, 1, 1);
	      grid.attach (itemWidgets.ElementItem("25","Mn","54.938", multiElement.Resourse.cMetal, parent), 8, 5, 1, 1);
	      grid.attach (itemWidgets.ElementItem("26","Fe","55.847", multiElement.Resourse.cMetal, parent), 9, 5, 1, 1);
	      grid.attach (itemWidgets.ElementItem("27","Co","58.993", multiElement.Resourse.cMetal, parent), 10, 5, 1, 1);
	      grid.attach (itemWidgets.ElementItem("28","Ni","58.69", multiElement.Resourse.cMetal, parent), 11, 5, 1, 1);

	      grid.attach (itemWidgets.PeriodItem("5"), 1, 6, 1, 1);
	      grid.attach (itemWidgets.ElementItem("29","Cu","63.546", multiElement.Resourse.cMetal, parent), 2, 6, 1, 1);
	      grid.attach (itemWidgets.ElementItem("30","Zn","65.39", multiElement.Resourse.cMetal, parent), 3, 6, 1, 1);
	      grid.attach (itemWidgets.ElementItem("31","Ga","69.723", multiElement.Resourse.cPostmetal, parent), 4, 6, 1, 1);
	      grid.attach (itemWidgets.ElementItem("32","Ge","72.59", multiElement.Resourse.cPolimetal, parent), 5, 6, 1, 1);
	      grid.attach (itemWidgets.ElementItem("33","As","74.922", multiElement.Resourse.cPolimetal, parent), 6, 6, 1, 1);
	      grid.attach (itemWidgets.ElementItem("34","Se","78.96", multiElement.Resourse.cNemetal, parent), 7, 6, 1, 1);
	      grid.attach (itemWidgets.ElementItem("35","Br","79.904", multiElement.Resourse.cGalogen, parent), 8, 6, 1, 1);
	      grid.attach (itemWidgets.ElementItem("36","Kr","83.80", multiElement.Resourse.cReal, parent), 9, 6, 1, 1);

	      grid.attach (itemWidgets.PeriodItem("V"), 0, 7, 1, 2);
	      grid.attach (itemWidgets.PeriodItem("6"), 1, 7, 1, 1);
	      grid.attach (itemWidgets.ElementItem("37","Rb","85.468", multiElement.Resourse.cSheloch, parent), 2, 7, 1, 1);
	      grid.attach (itemWidgets.ElementItem("38","Sr","87.82", multiElement.Resourse.cShelLand, parent), 3, 7, 1, 1);
	      grid.attach (itemWidgets.ElementItem("39","Y","88.906", multiElement.Resourse.cMetal, parent), 4, 7, 1, 1);
	      grid.attach (itemWidgets.ElementItem("40","Zr","91.224", multiElement.Resourse.cMetal, parent), 5, 7, 1, 1);
	      grid.attach (itemWidgets.ElementItem("41","Nb","92.906", multiElement.Resourse.cMetal, parent), 6, 7, 1, 1);
	      grid.attach (itemWidgets.ElementItem("42","Mo","95.94", multiElement.Resourse.cMetal, parent), 7, 7, 1, 1);
	      grid.attach (itemWidgets.ElementItem("43","Tc","98.906", multiElement.Resourse.cMetal, parent), 8, 7, 1, 1);
	      grid.attach (itemWidgets.ElementItem("44","Ru","101.07", multiElement.Resourse.cMetal, parent), 9, 7, 1, 1);
	      grid.attach (itemWidgets.ElementItem("45","Rh","102.91", multiElement.Resourse.cMetal, parent), 10, 7, 1, 1);
 	      grid.attach (itemWidgets.ElementItem("46","Pd","106.42", multiElement.Resourse.cMetal, parent), 11, 7, 1, 1);

	      grid.attach (itemWidgets.PeriodItem("7"), 1, 8, 1, 1);
	      grid.attach (itemWidgets.ElementItem("47","Ag","107.87", multiElement.Resourse.cMetal, parent), 2, 8, 1, 1);
	      grid.attach (itemWidgets.ElementItem("48","Cd","112.41", multiElement.Resourse.cMetal, parent), 3, 8, 1, 1);
	      grid.attach (itemWidgets.ElementItem("49","In","114.82", multiElement.Resourse.cPostmetal, parent), 4, 8, 1, 1);
	      grid.attach (itemWidgets.ElementItem("50","Sn","118.71", multiElement.Resourse.cPostmetal, parent), 5, 8, 1, 1);
	      grid.attach (itemWidgets.ElementItem("51","Sb","121.75", multiElement.Resourse.cPolimetal, parent), 6, 8, 1, 1);
	      grid.attach (itemWidgets.ElementItem("52","Te","127.60", multiElement.Resourse.cPolimetal, parent), 7, 8, 1, 1);
	      grid.attach (itemWidgets.ElementItem("53","I","126.91", multiElement.Resourse.cGalogen, parent), 8, 8, 1, 1);
	      grid.attach (itemWidgets.ElementItem("54","Xe","131.29", multiElement.Resourse.cReal, parent), 9, 8, 1, 1);

	      grid.attach (itemWidgets.PeriodItem("VI"), 0, 9, 1, 2);
	      grid.attach (itemWidgets.PeriodItem("8"), 1, 9, 1, 1);
	      grid.attach (itemWidgets.ElementItem("55","Cs","132.91", multiElement.Resourse.cSheloch, parent), 2, 9, 1, 1);
	      grid.attach (itemWidgets.ElementItem("56","Ba","137.33", multiElement.Resourse.cShelLand, parent), 3, 9, 1, 1);
	      grid.attach (itemWidgets.ElementItem("57","La","138.90", multiElement.Resourse.cLantan, parent), 4, 9, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("72","Hf","178.49", multiElement.Resourse.cMetal, parent), 5, 9, 1, 1);
	      grid.attach (itemWidgets.ElementItem("73","Ta","180.95", multiElement.Resourse.cMetal, parent), 6, 9, 1, 1);
	      grid.attach (itemWidgets.ElementItem("74","W","183.85", multiElement.Resourse.cMetal, parent), 7, 9, 1, 1);
	      grid.attach (itemWidgets.ElementItem("75","Re","185.21", multiElement.Resourse.cMetal, parent), 8, 9, 1, 1);
	      grid.attach (itemWidgets.ElementItem("76","Os","190.2", multiElement.Resourse.cMetal, parent), 9, 9, 1, 1);
	      grid.attach (itemWidgets.ElementItem("77","Ir","192.22", multiElement.Resourse.cMetal, parent), 10, 9, 1, 1);
	      grid.attach (itemWidgets.ElementItem("78","Pt","195.08", multiElement.Resourse.cMetal, parent), 11, 9, 1, 1);

	      grid.attach (itemWidgets.PeriodItem("9"), 1, 10, 1, 1);
	      grid.attach (itemWidgets.ElementItem("79","Au","196.97", multiElement.Resourse.cMetal, parent), 2, 10, 1, 1);
	      grid.attach (itemWidgets.ElementItem("80","Hg","200.59", multiElement.Resourse.cMetal, parent), 3, 10, 1, 1);
	      grid.attach (itemWidgets.ElementItem("81","Tl","204.38", multiElement.Resourse.cPostmetal, parent), 4, 10, 1, 1);
	      grid.attach (itemWidgets.ElementItem("82","Pb","207.2", multiElement.Resourse.cPostmetal, parent), 5, 10, 1, 1);
	      grid.attach (itemWidgets.ElementItem("83","Bi","208.98", multiElement.Resourse.cPostmetal, parent), 6, 10, 1, 1);
	      grid.attach (itemWidgets.ElementItem("84","Po","[209]", multiElement.Resourse.cPolimetal, parent), 7, 10, 1, 1);
	      grid.attach (itemWidgets.ElementItem("85","At","[210]", multiElement.Resourse.cGalogen, parent), 8, 10, 1, 1);
	      grid.attach (itemWidgets.ElementItem("86","Rn","[222]", multiElement.Resourse.cReal, parent), 9, 10, 1, 1);

	      grid.attach (itemWidgets.PeriodItem("VII"), 0, 11, 1, 2);
	      grid.attach (itemWidgets.PeriodItem("10"), 1, 11, 1, 1);
	      grid.attach (itemWidgets.ElementItem("87","Fr","[223]", multiElement.Resourse.cSheloch, parent), 2, 11, 1, 1);
	      grid.attach (itemWidgets.ElementItem("88","Ra","226.02", multiElement.Resourse.cShelLand, parent), 3, 11, 1, 1);
	      grid.attach (itemWidgets.ElementItem("89","Ac","[227]", multiElement.Resourse.cActan, parent), 4, 11, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("104","Rf","[261]", multiElement.Resourse.cMetal, parent), 5, 11, 1, 1);
	      grid.attach (itemWidgets.ElementItem("105","Db","[268]", multiElement.Resourse.cMetal, parent), 6, 11, 1, 1);
	      grid.attach (itemWidgets.ElementItem("106","Sg","[271]", multiElement.Resourse.cMetal, parent), 7, 11, 1, 1);
	      grid.attach (itemWidgets.ElementItem("107","Bh","[267]", multiElement.Resourse.cMetal, parent), 8, 11, 1, 1);
	      grid.attach (itemWidgets.ElementItem("108","Hs","[269]", multiElement.Resourse.cMetal, parent), 9, 11, 1, 1);
	      grid.attach (itemWidgets.ElementItem("109","Mt","[276]", multiElement.Resourse.cMetal, parent), 10, 11, 1, 1);
	      grid.attach (itemWidgets.ElementItem("110","Ds","[281]", multiElement.Resourse.cMetal, parent), 11, 11, 1, 1);

	      grid.attach (itemWidgets.PeriodItem("11"), 1, 12, 1, 1);
	      grid.attach (itemWidgets.ElementItem("111","Rg","[281]", multiElement.Resourse.cMetal, parent), 2, 12, 1, 1);
	      grid.attach (itemWidgets.ElementItem("112","Cn","[285]", multiElement.Resourse.cMetal, parent), 3, 12, 1, 1);
	      grid.attach (itemWidgets.ElementItem("113","Nh","[284]", multiElement.Resourse.cPostmetal, parent), 4, 12, 1, 1);
	      grid.attach (itemWidgets.ElementItem("114","Fl","[289]", multiElement.Resourse.cPostmetal, parent), 5, 12, 1, 1);
	      grid.attach (itemWidgets.ElementItem("115","Mc","[288]", multiElement.Resourse.cPostmetal, parent), 6, 12, 1, 1);
	      grid.attach (itemWidgets.ElementItem("116","Lv","[293]", multiElement.Resourse.cPostmetal, parent), 7, 12, 1, 1);
	      grid.attach (itemWidgets.ElementItem("117","Ts","[294]", multiElement.Resourse.cGalogen, parent), 8, 12, 1, 1);
	      grid.attach (itemWidgets.ElementItem("118","Og","[294]", multiElement.Resourse.cReal, parent), 9, 12, 1, 1);

	      grid.attach (itemWidgets.PeriodItem("RO"), 0, 13, 2, 1);
	      grid.attach (itemWidgets.OHItem("R","2","O",""), 2, 13, 1, 1);
	      grid.attach (itemWidgets.OHItem("R","","O",""), 3, 13, 1, 1);
	      grid.attach (itemWidgets.OHItem("R","2","O","3"), 4, 13, 1, 1);
	      grid.attach (itemWidgets.OHItem("R","","O","2"), 5, 13, 1, 1);
	      grid.attach (itemWidgets.OHItem("R","2","O","5"), 6, 13, 1, 1);
	      grid.attach (itemWidgets.OHItem("R","","O","3"), 7, 13, 1, 1);
	      grid.attach (itemWidgets.OHItem("R","2","O","7"), 8, 13, 1, 1);
	      grid.attach (itemWidgets.OHItem("R","","O","4"), 9, 13, 3, 1);

	      grid.attach (itemWidgets.PeriodItem("RH"), 0, 14, 2, 1);

	      grid.attach (itemWidgets.OHItem("R","","H","4"), 5, 14, 1, 1);
	      grid.attach (itemWidgets.OHItem("R","","H","3"), 6, 14, 1, 1);
	      grid.attach (itemWidgets.OHItem("R","","H","2"), 7, 14, 1, 1);
	      grid.attach (itemWidgets.OHItem("R","","H",""), 8, 14, 1, 1);

	      grid.attach (itemWidgets.PeriodItem("VI"), 0, 15, 2, 2);
	      grid.attach (itemWidgets.PeriodItem("Lanthanides"), 2, 15, 5, 1);
	      grid.attach (itemWidgets.ElementItem("57","La","138.90", multiElement.Resourse.cLantan, parent), 7, 15, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("58","Ce","140.12", multiElement.Resourse.cLantan, parent), 8, 15, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("59","Pr","140.91", multiElement.Resourse.cLantan, parent), 9, 15, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("60","Nd","144.24", multiElement.Resourse.cLantan, parent), 10, 15, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("61","Pm","[145]", multiElement.Resourse.cLantan, parent), 11, 15, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("62","Sm","150.36", multiElement.Resourse.cLantan, parent), 2, 16, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("63","Eu","151.96", multiElement.Resourse.cLantan, parent), 3, 16, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("64","Gd","157.25", multiElement.Resourse.cLantan, parent), 4, 16, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("65","Tb","158.93", multiElement.Resourse.cLantan, parent), 5, 16, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("66","Dy","162.50", multiElement.Resourse.cLantan, parent), 6, 16, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("67","Ho","164.93", multiElement.Resourse.cLantan, parent), 7, 16, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("68","Er","167.26", multiElement.Resourse.cLantan, parent), 8, 16, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("69","Tm","168.93", multiElement.Resourse.cLantan, parent), 9, 16, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("70","Yb","173.61", multiElement.Resourse.cLantan, parent), 10, 16, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("71","Lu","174.96", multiElement.Resourse.cLantan, parent), 11, 16, 1, 1);///////////

	      grid.attach (itemWidgets.PeriodItem("VII"), 0, 17, 2, 2);
	      grid.attach (itemWidgets.PeriodItem("Actinides"), 2, 17, 5, 1);
	      grid.attach (itemWidgets.ElementItem("89","Ac","[227]", multiElement.Resourse.cActan, parent), 7, 17, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("90","Th","223.04", multiElement.Resourse.cActan, parent), 8, 17, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("91","Pa","[231]", multiElement.Resourse.cActan, parent), 9, 17, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("92","U","238.02", multiElement.Resourse.cActan, parent), 10, 17, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("93","Np","237.04", multiElement.Resourse.cActan, parent), 11, 17, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("94","Pu","[244]", multiElement.Resourse.cActan, parent), 2, 18, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("95","Am","[243]", multiElement.Resourse.cActan, parent), 3, 18, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("96","Cm","[247]", multiElement.Resourse.cActan, parent), 4, 18, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("97","Bk","[247]", multiElement.Resourse.cActan, parent), 5, 18, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("98","Cf","[251]", multiElement.Resourse.cActan, parent), 6, 18, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("99","Es","[252]", multiElement.Resourse.cActan, parent), 7, 18, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("100","Fm","[257]", multiElement.Resourse.cActan, parent), 8, 18, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("101","Md","[258]", multiElement.Resourse.cActan, parent), 9, 18, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("102","No","259.1", multiElement.Resourse.cActan, parent), 10, 18, 1, 1);///////////
	      grid.attach (itemWidgets.ElementItem("103","Lr","[266]", multiElement.Resourse.cActan, parent), 11, 18, 1, 1);///////////
/*
	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Properties",11), multiElement.Resourse.cUnknown), 0, 19, 4, 1);

	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Halogens",11), multiElement.Resourse.cGalogen), 4, 19, 2, 1);
	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Noble gases",11), multiElement.Resourse.cReal), 6, 19, 2, 1);
	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Non metal",11), multiElement.Resourse.cNemetal), 8, 19, 2, 1);
	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Alkali metals",11), multiElement.Resourse.cSheloch), 10, 19, 2, 1);

	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Alkaline earth metals",11), multiElement.Resourse.cShelLand), 2, 20, 2, 1);
	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Transition metals",11), multiElement.Resourse.cMetal), 4, 20, 2, 1);
	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Post-transition metals",11), multiElement.Resourse.cPostmetal), 6, 20, 2, 1);
	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Semimetals",11), multiElement.Resourse.cPolimetal), 8, 20, 2, 1);
	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Properties unknown",11), multiElement.Resourse.cUnknown), 10, 20, 2, 1);
*/
	      grid.attach (itemWidgets.TitleItem("Properties"), 0, 19, 12, 1);

	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Halogens",15), multiElement.Resourse.cGalogen), 0, 20, 3, 1);
	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Noble gases",15), multiElement.Resourse.cReal), 3, 20, 3, 1);
	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Non metal",15), multiElement.Resourse.cNemetal), 6, 20, 3, 1);
	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Alkali metals",15), multiElement.Resourse.cSheloch), 9, 20, 3, 1);

	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Alkaline earth metals",15), multiElement.Resourse.cShelLand), 0, 21, 3, 1);
	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Transition metals",15), multiElement.Resourse.cMetal), 3, 21, 3, 1);
	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Post-transition metals",15), multiElement.Resourse.cPostmetal), 6, 21, 3, 1);
	      grid.attach (itemWidgets.PropertiesItem(TextOperation.TextTrim("Semimetals",15), multiElement.Resourse.cPolimetal), 9, 21, 3, 1);

          scroll.set_child (grid);
          mainBox.append(scroll);
	      //mainBox.pack_start (scroll, true, true, 1);//true,true,1//false, false, 0

	      return mainBox;
     }
  }
}
