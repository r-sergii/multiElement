using Gtk;
using Gdk;
using Cairo;
using GLib;
using MyLib;

namespace Multielement {

    class PiramidWidget
    {

//        private Adw.ColorScheme theme;
        //public Gtk.Label PiramidWidget (Window parent)
        public Gtk.DrawingArea PiramidWidget (MainWindow parent)
        {
            //return new Gtk.Label("Piramid");

            var drawing_area = new Gtk.DrawingArea ();
            drawing_area.set_draw_func (draw_func);
            return drawing_area;
        }

        const double DSIZE = 460.0;

        private void draw_func (Gtk.DrawingArea drawing_area, Cairo.Context context, int width, int height) {

                MyLib.HexColor fon;
                var app = GLib.Application.get_default();
//                theme = (app as Multielement.Application).theme;
                bool theme = (app as Multielement.Application).settingsService.theme.theme;
                var info = (app as Multielement.Application).info;

//                if((theme == Adw.ColorScheme.FORCE_LIGHT) || (theme == Adw.ColorScheme.PREFER_LIGHT)) {
//                if((theme == Adw.ColorScheme.FORCE_LIGHT) || (theme == Adw.ColorScheme.PREFER_LIGHT)
  //                || ((theme == Adw.ColorScheme.DEFAULT) && (info.theme == true))
                if(theme != true
                ) {
                    //cr.set_source_rgb (0.95, 0.95, 0.95);
                    fon = multiElement.Resourse.gUnknown;
                } else {
                    //cr.set_source_rgb (0.15, 0.15, 0.15);
                    fon = multiElement.Resourse.gUnknownDark;
                }

            	// Get necessary data:
			    weak Gtk.StyleContext style_context = drawing_area.get_style_context ();
//			    int height = drawing_area.get_allocated_height ();
	//		    int width = drawing_area.get_allocated_width ();
			    Gdk.RGBA color = style_context.get_color ();
//.parse("#CCBBAA");
			    // Draw an arc:
			    double xc = width / 2.0;
			    double yc = height / 2.0;
			    double radius = int.min (width, height) / 2.0;
			    double angle1 = 0;
			    double angle2 = 2*Math.PI;

			    double picX = width / DSIZE; //Math.fmin(width, height);
			    double picY = height / DSIZE;

                //context.set_source_rgba (color,color,color,1);
                context.set_line_width (2);
			    //context.arc (xc, yc, radius, angle1, angle2);
			    context.move_to (xc, yc);
			    context.line_to (230 * picX, 230 * picY);
			    context.line_to (210 * picX, 230 * picY);
			    context.line_to (210 * picX, 210 * picY);
			    context.line_to (250 * picX, 210 * picY);
			    context.line_to (250 * picX, 250 * picY);
			    context.line_to (190 * picX, 250 * picY);
			    context.line_to (190 * picX, 190 * picY);
			    context.line_to (270 * picX, 190 * picY);
			    context.line_to (270 * picX, 270 * picY);
			    context.line_to (170 * picX, 270 * picY);
			    context.line_to (170 * picX, 170 * picY);
			    context.line_to (290 * picX, 170 * picY);
			    context.line_to (290 * picX, 290 * picY);
			    context.line_to (150 * picX, 290 * picY);
			    context.line_to (150 * picX, 150 * picY);
			    context.line_to (310 * picX, 150 * picY);
			    context.line_to (310 * picX, 150 * picY);
			    context.line_to (310 * picX, 310 * picY);
			    context.line_to (130 * picX, 310 * picY);
			    context.line_to (130 * picX, 130 * picY);
			    context.line_to (330 * picX, 130 * picY);
			    context.line_to (330 * picX, 330 * picY);
			    context.line_to (110 * picX, 330 * picY);
			    context.line_to (110 * picX, 110 * picY);
			    context.line_to (350 * picX, 110 * picY);
			    context.line_to (350 * picX, 350 * picY);
			    context.line_to (90 * picX, 350 * picY);
			    context.line_to (90 * picX, 90 * picY);
			    context.line_to (370 * picX, 90 * picY);
			    context.line_to (370 * picX, 370 * picY);
			    context.line_to (70 * picX, 370 * picY);
			    context.line_to (70 * picX, 70 * picY);
			    context.line_to (390 * picX, 70 * picY);
			    context.line_to (390 * picX, 390 * picY);
			    context.line_to (50 * picX, 390 * picY);
			    context.line_to (50 * picX, 50 * picY);
			    context.line_to (410 * picX, 50 * picY);
			    context.line_to (410 * picX, 410 * picY);
			    context.line_to (30 * picX, 410 * picY);
			    context.line_to (30 * picX, 30 * picY);
			    context.line_to (430 * picX, 30 * picY);
			    context.line_to (430 * picX, 430 * picY);
			    context.line_to (10 * picX, 430 * picY);
			    context.line_to (10 * picX, 10 * picY);
			    context.line_to (450 * picX, 10 * picY);
			    context.line_to (450 * picX, 450 * picY);
			    context.line_to (10 * picX, 450 * picY);

                Gdk.cairo_set_source_rgba (context, color);
			    context.stroke ();
//			    Gdk.cairo_set_source_rgba (context, color);
	//		    context.fill ();

                int size_cell_width = width / 23;
                int size_cell_height = height / 23;

	            roundRect(context, color, multiElement.Resourse.gNemetal,
	                size_cell_width * 11, size_cell_height * 11,
	                size_cell_width, size_cell_height, 10, "H");
//	            roundRect(context, color, multiElement.Resourse.gUnknown,
	//                size_cell_width * 12, size_cell_height * 12,
	  //              size_cell_width, size_cell_height, 10, "(H)");
                roundRect(context, color, fon,
	                size_cell_width * 12, size_cell_height * 12,
	                size_cell_width, size_cell_height, 10, "(H)");
	            roundRect(context, color, multiElement.Resourse.gReal,
	                size_cell_width * 10, size_cell_height * 12,
	                size_cell_width, size_cell_height, 10, "He");

	            roundRect(context, color, multiElement.Resourse.gSheloch,
	                size_cell_width * 9, size_cell_height * 11,
	                size_cell_width, size_cell_height, 10, "Li");
   	            roundRect(context, color, multiElement.Resourse.gShelLand,
	                size_cell_width * 9, size_cell_height * 10,
	                size_cell_width, size_cell_height, 10, "Be");
	            roundRect(context, color, multiElement.Resourse.gPolimetal,
	                size_cell_width * 10, size_cell_height * 9,
	                size_cell_width, size_cell_height, 10, "B");
   	            roundRect(context, color, multiElement.Resourse.gNemetal,
	                size_cell_width * 12, size_cell_height * 9,
	                size_cell_width, size_cell_height, 10, "C");
	            roundRect(context, color, multiElement.Resourse.gNemetal,
	                size_cell_width * 13, size_cell_height * 10,
	                size_cell_width, size_cell_height, 10, "N");
   	            roundRect(context, color, multiElement.Resourse.gNemetal,
	                size_cell_width * 13, size_cell_height * 11,
	                size_cell_width, size_cell_height, 10, "O");
	            roundRect(context, color, multiElement.Resourse.gGalogen,
	                size_cell_width * 12, size_cell_height * 13,
	                size_cell_width, size_cell_height, 10, "F");
	            roundRect(context, color, multiElement.Resourse.gReal,
	                size_cell_width * 9, size_cell_height * 13,
	                size_cell_width, size_cell_height, 10, "Ne");

	            roundRect(context, color, multiElement.Resourse.gSheloch,
	                size_cell_width * 8, size_cell_height * 12,
	                size_cell_width, size_cell_height, 10, "Na");
   	            roundRect(context, color, multiElement.Resourse.gShelLand,
	                size_cell_width * 8, size_cell_height * 9,
	                size_cell_width, size_cell_height, 10, "Mg");
	            roundRect(context, color, multiElement.Resourse.gPostmetal,
	                size_cell_width * 9, size_cell_height * 8,
	                size_cell_width, size_cell_height, 10, "Al");
   	            roundRect(context, color, multiElement.Resourse.gPolimetal,
	                size_cell_width * 13, size_cell_height * 8,
	                size_cell_width, size_cell_height, 10, "Si");
	            roundRect(context, color, multiElement.Resourse.gNemetal,
	                size_cell_width * 14, size_cell_height * 9,
	                size_cell_width, size_cell_height, 10, "P");
   	            roundRect(context, color, multiElement.Resourse.gNemetal,
	                size_cell_width * 14, size_cell_height * 12,
	                size_cell_width, size_cell_height, 10, "S");
	            roundRect(context, color, multiElement.Resourse.gGalogen,
	                size_cell_width * 13, size_cell_height * 14,
	                size_cell_width, size_cell_height, 10, "Cl");
	            roundRect(context, color, multiElement.Resourse.gReal,
	                size_cell_width * 8, size_cell_height * 14,
	                size_cell_width, size_cell_height, 10, "Ar");

	            roundRect(context, color, multiElement.Resourse.gSheloch,
	                size_cell_width * 7, size_cell_height * 13,
	                size_cell_width, size_cell_height, 10, "K");
   	            roundRect(context, color, multiElement.Resourse.gShelLand,
	                size_cell_width * 7, size_cell_height * 8,
	                size_cell_width, size_cell_height, 10, "Ca");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 8, size_cell_height * 7,
	                size_cell_width, size_cell_height, 10, "Sc");
   	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 14, size_cell_height * 7,
	                size_cell_width, size_cell_height, 10, "Ti");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 15, size_cell_height * 8,
	                size_cell_width, size_cell_height, 10, "V");
   	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 15, size_cell_height * 13,
	                size_cell_width, size_cell_height, 10, "Cr");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 14, size_cell_height * 15,
	                size_cell_width, size_cell_height, 10, "Mn");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 11, size_cell_height * 15,
	                size_cell_width, size_cell_height, 10, "Fe");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 9, size_cell_height * 15,
	                size_cell_width, size_cell_height, 10, "Co");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 7, size_cell_height * 15,
	                size_cell_width, size_cell_height, 10, "Ni");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 6, size_cell_height * 14,
	                size_cell_width, size_cell_height, 10, "Cu");
   	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 6, size_cell_height * 7,
	                size_cell_width, size_cell_height, 10, "Zn");
	            roundRect(context, color, multiElement.Resourse.gPostmetal,
	                size_cell_width * 7, size_cell_height * 6,
	                size_cell_width, size_cell_height, 10, "Ga");
   	            roundRect(context, color, multiElement.Resourse.gPolimetal,
	                size_cell_width * 15, size_cell_height * 6,
	                size_cell_width, size_cell_height, 10, "Ge");
	            roundRect(context, color, multiElement.Resourse.gPolimetal,
	                size_cell_width * 16, size_cell_height * 7,
	                size_cell_width, size_cell_height, 10, "As");
   	            roundRect(context, color, multiElement.Resourse.gNemetal,
	                size_cell_width * 16, size_cell_height * 14,
	                size_cell_width, size_cell_height, 10, "Se");
	            roundRect(context, color, multiElement.Resourse.gGalogen,
	                size_cell_width * 15, size_cell_height * 16,
	                size_cell_width, size_cell_height, 10, "Br");
	            roundRect(context, color, multiElement.Resourse.gReal,
	                size_cell_width * 6, size_cell_height * 16,
	                size_cell_width, size_cell_height, 10, "Kr");

	            roundRect(context, color, multiElement.Resourse.gSheloch,
	                size_cell_width * 5, size_cell_height * 15,
	                size_cell_width, size_cell_height, 10, "Rb");
   	            roundRect(context, color, multiElement.Resourse.gShelLand,
	                size_cell_width * 5, size_cell_height * 6,
	                size_cell_width, size_cell_height, 10, "Sr");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 6, size_cell_height * 5,
	                size_cell_width, size_cell_height, 10, "Y");
   	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 16, size_cell_height * 5,
	                size_cell_width, size_cell_height, 10, "Zr");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 17, size_cell_height * 6,
	                size_cell_width, size_cell_height, 10, "Nb");
   	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 17, size_cell_height * 15,
	                size_cell_width, size_cell_height, 10, "Mo");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 16, size_cell_height * 17,
	                size_cell_width, size_cell_height, 10, "Tc");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 9, size_cell_height * 17,
	                size_cell_width, size_cell_height, 10, "Ru");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 7, size_cell_height * 17,
	                size_cell_width, size_cell_height, 10, "Rh");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 5, size_cell_height * 17,
	                size_cell_width, size_cell_height, 10, "Pd");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 4, size_cell_height * 16,
	                size_cell_width, size_cell_height, 10, "Ag");
   	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 4, size_cell_height * 5,
	                size_cell_width, size_cell_height, 10, "Cd");
	            roundRect(context, color, multiElement.Resourse.gPostmetal,
	                size_cell_width * 5, size_cell_height * 4,
	                size_cell_width, size_cell_height, 10, "In");
   	            roundRect(context, color, multiElement.Resourse.gPostmetal,
	                size_cell_width * 17, size_cell_height * 4,
	                size_cell_width, size_cell_height, 10, "Sn");
	            roundRect(context, color, multiElement.Resourse.gPolimetal,
	                size_cell_width * 18, size_cell_height * 5,
	                size_cell_width, size_cell_height, 10, "Sb");
   	            roundRect(context, color, multiElement.Resourse.gPolimetal,
	                size_cell_width * 18, size_cell_height * 16,
	                size_cell_width, size_cell_height, 10, "Te");
	            roundRect(context, color, multiElement.Resourse.gGalogen,
	                size_cell_width * 17, size_cell_height * 18,
	                size_cell_width, size_cell_height, 10, "I");
	            roundRect(context, color, multiElement.Resourse.gReal,
	                size_cell_width * 4, size_cell_height * 18,
	                size_cell_width, size_cell_height, 10, "Xe");

	            roundRect(context, color, multiElement.Resourse.gSheloch,
	                size_cell_width * 3, size_cell_height * 17,
	                size_cell_width, size_cell_height, 10, "Cs");
   	            roundRect(context, color, multiElement.Resourse.gShelLand,
	                size_cell_width * 3, size_cell_height * 4,
	                size_cell_width, size_cell_height, 10, "Ba");

   	            roundRect(context, color, multiElement.Resourse.gLantan,
	                size_cell_width * 3, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "La");
   	            roundRect(context, color, multiElement.Resourse.gLantan,
	                size_cell_width * 4, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Ce");
   	            roundRect(context, color, multiElement.Resourse.gLantan,
	                size_cell_width * 5, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Pr");
   	            roundRect(context, color, multiElement.Resourse.gLantan,
	                size_cell_width * 6, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Nd");
   	            roundRect(context, color, multiElement.Resourse.gLantan,
	                size_cell_width * 7, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Pm");
   	            roundRect(context, color, multiElement.Resourse.gLantan,
	                size_cell_width * 8, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Sm");
   	            roundRect(context, color, multiElement.Resourse.gLantan,
	                size_cell_width * 9, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Eu");
   	            roundRect(context, color, multiElement.Resourse.gLantan,
	                size_cell_width * 10, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Gd");
   	            roundRect(context, color, multiElement.Resourse.gLantan,
	                size_cell_width * 11, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Tb");
   	            roundRect(context, color, multiElement.Resourse.gLantan,
	                size_cell_width * 12, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Dy");
   	            roundRect(context, color, multiElement.Resourse.gLantan,
	                size_cell_width * 13, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Ho");
   	            roundRect(context, color, multiElement.Resourse.gLantan,
	                size_cell_width * 14, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Er");
   	            roundRect(context, color, multiElement.Resourse.gLantan,
	                size_cell_width * 15, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Tm");
   	            roundRect(context, color, multiElement.Resourse.gLantan,
	                size_cell_width * 16, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Yb");
   	            roundRect(context, color, multiElement.Resourse.gLantan,
	                size_cell_width * 17, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Lu");

   	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 18, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Hf");

	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 19, size_cell_height * 4,
	                size_cell_width, size_cell_height, 10, "Ta");
   	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 19, size_cell_height * 17,
	                size_cell_width, size_cell_height, 10, "W");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 18, size_cell_height * 19,
	                size_cell_width, size_cell_height, 10, "Re");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 7, size_cell_height * 19,
	                size_cell_width, size_cell_height, 10, "Os");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 5, size_cell_height * 19,
	                size_cell_width, size_cell_height, 10, "Ir");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 3, size_cell_height * 19,
	                size_cell_width, size_cell_height, 10, "Pt");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 2, size_cell_height * 18,
	                size_cell_width, size_cell_height, 10, "Au");
   	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 2, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Hg");
	            roundRect(context, color, multiElement.Resourse.gPostmetal,
	                size_cell_width * 3, size_cell_height * 2,
	                size_cell_width, size_cell_height, 10, "Tl");
   	            roundRect(context, color, multiElement.Resourse.gPostmetal,
	                size_cell_width * 19, size_cell_height * 2,
	                size_cell_width, size_cell_height, 10, "Pb");
	            roundRect(context, color, multiElement.Resourse.gPostmetal,
	                size_cell_width * 20, size_cell_height * 3,
	                size_cell_width, size_cell_height, 10, "Bi");
   	            roundRect(context, color, multiElement.Resourse.gPolimetal,
	                size_cell_width * 20, size_cell_height * 18,
	                size_cell_width, size_cell_height, 10, "Po");
	            roundRect(context, color, multiElement.Resourse.gGalogen,
	                size_cell_width * 19, size_cell_height * 20,
	                size_cell_width, size_cell_height, 10, "At");
	            roundRect(context, color, multiElement.Resourse.gReal,
	                size_cell_width * 2, size_cell_height * 20,
	                size_cell_width, size_cell_height, 10, "Rn");

	            roundRect(context, color, multiElement.Resourse.gSheloch,
	                size_cell_width * 1, size_cell_height * 19,
	                size_cell_width, size_cell_height, 10, "Fr");
   	            roundRect(context, color, multiElement.Resourse.gShelLand,
	                size_cell_width * 1, size_cell_height * 2,
	                size_cell_width, size_cell_height, 10, "Ra");

   	            roundRect(context, color, multiElement.Resourse.gActan,
	                size_cell_width * 3, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Ac");
   	            roundRect(context, color, multiElement.Resourse.gActan,
	                size_cell_width * 4, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Th");
   	            roundRect(context, color, multiElement.Resourse.gActan,
	                size_cell_width * 5, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Pa");
   	            roundRect(context, color, multiElement.Resourse.gActan,
	                size_cell_width * 6, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "U");
   	            roundRect(context, color, multiElement.Resourse.gActan,
	                size_cell_width * 7, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Np");
   	            roundRect(context, color, multiElement.Resourse.gActan,
	                size_cell_width * 8, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Pu");
   	            roundRect(context, color, multiElement.Resourse.gActan,
	                size_cell_width * 9, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Am");
   	            roundRect(context, color, multiElement.Resourse.gActan,
	                size_cell_width * 10, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Cm");
   	            roundRect(context, color, multiElement.Resourse.gActan,
	                size_cell_width * 11, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Bk");
   	            roundRect(context, color, multiElement.Resourse.gActan,
	                size_cell_width * 12, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Cf");
   	            roundRect(context, color, multiElement.Resourse.gActan,
	                size_cell_width * 13, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Es");
   	            roundRect(context, color, multiElement.Resourse.gActan,
	                size_cell_width * 14, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Fm");
   	            roundRect(context, color, multiElement.Resourse.gActan,
	                size_cell_width * 15, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Md");
   	            roundRect(context, color, multiElement.Resourse.gActan,
	                size_cell_width * 16, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "No");
   	            roundRect(context, color, multiElement.Resourse.gActan,
	                size_cell_width * 17, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Lr");

   	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 20, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Rf");

	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 21, size_cell_height * 2,
	                size_cell_width, size_cell_height, 10, "Db");
   	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 21, size_cell_height * 19,
	                size_cell_width, size_cell_height, 10, "Sg");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 20, size_cell_height * 21,
	                size_cell_width, size_cell_height, 10, "Bh");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 5, size_cell_height * 21,
	                size_cell_width, size_cell_height, 10, "Hs");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 3, size_cell_height * 21,
	                size_cell_width, size_cell_height, 10, "Mt");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 1, size_cell_height * 21,
	                size_cell_width, size_cell_height, 10, "Ds");
	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 0, size_cell_height * 20,
	                size_cell_width, size_cell_height, 10, "Rg");
   	            roundRect(context, color, multiElement.Resourse.gMetal,
	                size_cell_width * 0, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Cn");
	            roundRect(context, color, multiElement.Resourse.gPostmetal,
	                size_cell_width * 1, size_cell_height * 0,
	                size_cell_width, size_cell_height, 10, "Nh");
   	            roundRect(context, color, multiElement.Resourse.gPostmetal,
	                size_cell_width * 21, size_cell_height * 0,
	                size_cell_width, size_cell_height, 10, "Fl");
	            roundRect(context, color, multiElement.Resourse.gPostmetal,
	                size_cell_width * 22, size_cell_height * 1,
	                size_cell_width, size_cell_height, 10, "Mc");
   	            roundRect(context, color, multiElement.Resourse.gPostmetal,
	                size_cell_width * 22, size_cell_height * 20,
	                size_cell_width, size_cell_height, 10, "Lv");
	            roundRect(context, color, multiElement.Resourse.gGalogen,
	                size_cell_width * 21, size_cell_height * 22,
	                size_cell_width, size_cell_height, 10, "Ts");
	            roundRect(context, color, multiElement.Resourse.gReal,
	                size_cell_width * 0, size_cell_height * 22,
	                size_cell_width, size_cell_height, 10, "Og");
        }

        private void roundRect(Cairo.Context context, Gdk.RGBA color, MyLib.HexColor hColor, int x, int y, int width, int height, int r, string element)
        {
            int font_size = 12;
            context.move_to(x,y+height/2);
            context.set_line_width(1);
            context.arc(x+r, y+r, r, Math.PI, 3*Math.PI/2);
            context.arc(x+width-r, y+r, r, 3*Math.PI/2, 0);
            context.arc(x+width-r, y+height-r, r, 0, Math.PI/2);
            context.arc(x+r, y+height-r, r, Math.PI/2, Math.PI);
            context.close_path();
            GdkColor gColor = new MyLib.GdkColor.fromHexColor(hColor);
	        context.set_source_rgba (gColor.getR(), gColor.getG(), gColor.getB(), gColor.getA());
	        //context.set_source_rgb (0, 0, 1);
	        context.fill_preserve ();
	        Gdk.cairo_set_source_rgba (context, color);
	        //context.set_source_rgb(0.5, 0.5, 0.5);
            context.stroke();

            context.select_font_face ("Adventure", Cairo.FontSlant.NORMAL, Cairo.FontWeight.BOLD);
    	    context.set_font_size (font_size);
  	        context.move_to (x + width / 2 - font_size / 2, y + height / 2 + font_size / 2);
  	        //context.move_to (x, y + 12);
  	        context.show_text (element);
  	        context.close_path();
        }
    }
}
