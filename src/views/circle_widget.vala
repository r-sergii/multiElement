using MyLib;

namespace Multielement {

    const double RADIUS_0A = 1.0;
    const double RADIUS_09 = 0.92;
    const double RADIUS_08 = 0.84;
    const double RADIUS_07 = 0.80;
    const double RADIUS_06 = 0.72;
    const double RADIUS_05 = 0.64;
    const double RADIUS_04 = 0.56;
    const double RADIUS_03 = 0.48;
    const double RADIUS_02 = 0.40;
    const double RADIUS_01 = 0.32;
    const double RADIUS_00 = 0.24;

    class CircleWidget
    {
        private double xCentr;
        private double yCentr;
        //int
        private double radius;

        private Adw.ColorScheme theme;

        //public Gtk.Label CircleWidget (Window parent)
        public Gtk.DrawingArea CircleWidget (MainWindow parent)
        {
        //    return new Gtk.Label("Circle");
            var drawing_area = new Gtk.DrawingArea ();
            drawing_area.set_draw_func (draw_func);
            return drawing_area;
        }

        private void draw_func (Gtk.DrawingArea drawing_area, Cairo.Context context, int width, int height)
        {
                MyLib.HexColor fon;
                var app = GLib.Application.get_default();
                theme = (app as Multielement.Application).theme;
                var info = (app as Multielement.Application).info;

//                if((theme == Adw.ColorScheme.FORCE_LIGHT) || (theme == Adw.ColorScheme.PREFER_LIGHT)) {
                if((theme == Adw.ColorScheme.FORCE_LIGHT) || (theme == Adw.ColorScheme.PREFER_LIGHT)
                || ((theme == Adw.ColorScheme.DEFAULT) && (info.theme == true))
                ) {

                    //cr.set_source_rgb (0.95, 0.95, 0.95);
                    fon = multiElement.Resourse.gUnknown;
                } else {
                    //cr.set_source_rgb (0.15, 0.15, 0.15);
                    fon = multiElement.Resourse.gUnknownDark;
                }

//        	    int height = drawing_area.get_allocated_height ();
	//		    int width = drawing_area.get_allocated_width ();
			    //double
			    xCentr = width / 2.0;
			    //double
			    yCentr = height / 2.0;
			    //double
			    radius = int.min (width, height) / 2.0;

            	// Get necessary data:
			    weak Gtk.StyleContext style_context = drawing_area.get_style_context ();
			    Gdk.RGBA color = style_context.get_color ();

                //init
                bool isHorizontal = (width > height) ? false : true;
                bool isHSymbol = (width > height) ? true : false;
                int un_length_arc;// = 10;
        	    double angle1;// = 40 * (Math.PI/180.0); // angles are specified
	            double angle2;// = (40 + un_length_arc) * (Math.PI/180.0); // in radians
	            double ANGLE;
	            double RADIUS;
	            MyLib.GdkColor gColor;
	            // The arc:
//////// Actanoid
                //drawArcsA(widget, cActan, 50);//89
                ANGLE = isHorizontal ? 40 : 310;
                drawArcs1(context, color, multiElement.Resourse.gActan, isHorizontal ? 40 : 310, RADIUS_0A, 10);
                //drawArcsA(widget, cActan, 40);//90
                //ANGLE = isHorizontal ? 50 : 320;
                drawArcs1(context, color, multiElement.Resourse.gActan, isHorizontal ? 50 : 320, RADIUS_0A, 10);
                //drawArcsA(widget, cActan, 30);//91
                //ANGLE = isHorizontal ? 60 : 330;
                drawArcs1(context, color, multiElement.Resourse.gActan, isHorizontal ? 60 : 330, RADIUS_0A, 10);
                //drawArcsA(widget, cActan, 20);//92
                //ANGLE = isHorizontal ? 70 : 340;
                drawArcs1(context, color, multiElement.Resourse.gActan, isHorizontal ? 70 : 340, RADIUS_0A, 10);
                //drawArcsA(widget, cActan, 10);//93
                //ANGLE = isHorizontal ? 80 : 350;
                drawArcs1(context, color, multiElement.Resourse.gActan, isHorizontal ? 80 : 350, RADIUS_0A, 10);
                //drawArcsA(widget, cActan, 0);//94
                //ANGLE = isHorizontal ? 90 : 0;
                drawArcs1(context, color, multiElement.Resourse.gActan, isHorizontal ? 90 : 0, RADIUS_0A, 10);
                //drawArcsA(widget, cActan, 350);//95
                //ANGLE = isHorizontal ? 100 : 10;
                drawArcs1(context, color, multiElement.Resourse.gActan, isHorizontal ? 100 : 10, RADIUS_0A, 10);
                //drawArcsA(widget, cActan, 340);//96
  //              ANGLE = isHorizontal ? 110 : 20;
                drawArcs1(context, color, multiElement.Resourse.gActan, isHorizontal ? 110 : 20, RADIUS_0A, 10);
                //drawArcsA(widget, cActan, 330);//97
//                ANGLE = isHorizontal ? 120 : 30;
                drawArcs1(context, color, multiElement.Resourse.gActan, isHorizontal ? 120 : 30, RADIUS_0A, 10);
                //drawArcsA(widget, cActan, 320);//98
//                ANGLE = isHorizontal ? 130 : 40;
                drawArcs1(context, color, multiElement.Resourse.gActan, isHorizontal ? 130 : 40, RADIUS_0A, 10);
                //drawArcsA(widget, cActan, 230);//99
                //ANGLE = isHorizontal ? 270 : 130;
                drawArcs1(context, color, multiElement.Resourse.gActan, isHorizontal ? 270 : 130, RADIUS_0A, 10);
                //drawArcsA(widget, cActan, 220);//100
                //ANGLE = isHorizontal ? 280 : 140;
                drawArcs1(context, color, multiElement.Resourse.gActan, isHorizontal ? 280 : 140, RADIUS_0A, 10);
                //drawArcsA(widget, cActan, 210);//101
                //ANGLE = isHorizontal ? 290 : 150;
                drawArcs1(context, color, multiElement.Resourse.gActan, isHorizontal ? 290 : 150, RADIUS_0A, 10);
                //drawArcsA(widget, cActan, 200);//102
                //ANGLE = isHorizontal ? 300 : 160;
                drawArcs1(context, color, multiElement.Resourse.gActan, isHorizontal ? 300 : 160, RADIUS_0A, 10);
                //drawArcsA(widget, cActan, 190);//103
//                ANGLE = isHorizontal ? 310 : 170;
                drawArcs1(context, color, multiElement.Resourse.gActan, isHorizontal ? 310 : 170, RADIUS_0A, 10);

//////// Lantanoid
                //drawArcs9(widget, cLantan, 50);//57
                //ANGLE = isHorizontal ? 40 : 310;
                drawArcs1(context, color, multiElement.Resourse.gLantan, isHorizontal ? 40 : 310, RADIUS_09, 10);
                //drawArcs9(widget, cLantan, 40);//58
                //ANGLE = isHorizontal ? 50 : 320;
                drawArcs1(context, color, multiElement.Resourse.gLantan, isHorizontal ? 50 : 320, RADIUS_09, 10);
                //drawArcs9(widget, cLantan, 30);//59
                //ANGLE = isHorizontal ? 60 : 330;
                drawArcs1(context, color, multiElement.Resourse.gLantan, isHorizontal ? 60 : 330, RADIUS_09, 10);
                //drawArcs9(widget, cLantan, 20);//60
                //ANGLE = isHorizontal ? 70 : 340;
                drawArcs1(context, color, multiElement.Resourse.gLantan, isHorizontal ? 70 : 340, RADIUS_09, 10);
                //drawArcs9(widget, cLantan, 10);//61
                //ANGLE = isHorizontal ? 80 : 350;
                drawArcs1(context, color, multiElement.Resourse.gLantan, isHorizontal ? 80 : 350, RADIUS_09, 10);
                //drawArcs9(widget, cLantan, 0);//62
                //ANGLE = isHorizontal ? 90 : 0;
                drawArcs1(context, color, multiElement.Resourse.gLantan, isHorizontal ? 90 : 0, RADIUS_09, 10);
                //drawArcs9(widget, cLantan, 350);//63
                //ANGLE = isHorizontal ? 100 : 10;
                drawArcs1(context, color, multiElement.Resourse.gLantan, isHorizontal ? 100 : 10, RADIUS_09, 10);
                //drawArcs9(widget, cLantan, 340);//64
                //ANGLE = isHorizontal ? 110 : 20;
                drawArcs1(context, color, multiElement.Resourse.gLantan, isHorizontal ? 110 : 20, RADIUS_09, 10);
                //drawArcs9(widget, cLantan, 330);//65
                //ANGLE = isHorizontal ? 120 : 30;
                drawArcs1(context, color, multiElement.Resourse.gLantan, isHorizontal ? 120 : 30, RADIUS_09, 10);
                //drawArcs9(widget, cLantan, 320);//66
                //ANGLE = isHorizontal ? 130 : 40;
                drawArcs1(context, color, multiElement.Resourse.gLantan, isHorizontal ? 130 : 40, RADIUS_09, 10);
                //drawArcs9(widget, cLantan, 230);//67
                //ANGLE = isHorizontal ? 270 : 130;
                drawArcs1(context, color, multiElement.Resourse.gLantan, isHorizontal ? 270 : 130, RADIUS_09, 10);
                //drawArcs9(widget, cLantan, 220);//68
//                ANGLE = isHorizontal ? 280 : 140;
                drawArcs1(context, color, multiElement.Resourse.gLantan, isHorizontal ? 280 : 140, RADIUS_09, 10);
                //drawArcs9(widget, cLantan, 210);//69
                //ANGLE = isHorizontal ? 290 : 150;
                drawArcs1(context, color, multiElement.Resourse.gLantan, isHorizontal ? 290 : 150, RADIUS_09, 10);
                //drawArcs9(widget, cLantan, 200);//70
//                ANGLE = isHorizontal ? 300 : 160;
                drawArcs1(context, color, multiElement.Resourse.gLantan, isHorizontal ? 300 : 160, RADIUS_09, 10);
                //drawArcs9(widget, cLantan, 190);//71
//                ANGLE = isHorizontal ? 310 : 170;
                drawArcs1(context, color, multiElement.Resourse.gLantan, isHorizontal ? 310 : 170, RADIUS_09, 10);

// Null

//                drawArcs1(context, color, multiElement.Resourse.gUnknown, isHorizontal ? 40 : 310, RADIUS_08, 10);
  //              drawArcs1(context, color, multiElement.Resourse.gUnknown, isHorizontal ? 50 : 320, RADIUS_08, 10);
    //            drawArcs1(context, color, multiElement.Resourse.gUnknown, isHorizontal ? 60 : 330, RADIUS_08, 10);
      //          drawArcs1(context, color, multiElement.Resourse.gUnknown, isHorizontal ? 70 : 340, RADIUS_08, 10);
        //        drawArcs1(context, color, multiElement.Resourse.gUnknown, isHorizontal ? 80 : 350, RADIUS_08, 10);
          //      drawArcs1(context, color, multiElement.Resourse.gUnknown, isHorizontal ? 90 : 0, RADIUS_08, 10);
            //    drawArcs1(context, color, multiElement.Resourse.gUnknown, isHorizontal ? 100 : 10, RADIUS_08, 10);
//                drawArcs1(context, color, multiElement.Resourse.gUnknown, isHorizontal ? 110 : 20, RADIUS_08, 10);
  //              drawArcs1(context, color, multiElement.Resourse.gUnknown, isHorizontal ? 120 : 30, RADIUS_08, 10);
    //            drawArcs1(context, color, multiElement.Resourse.gUnknown, isHorizontal ? 130 : 40, RADIUS_08, 10);
      //          drawArcs1(context, color, multiElement.Resourse.gUnknown, isHorizontal ? 270 : 130, RADIUS_08, 10);
        //        drawArcs1(context, color, multiElement.Resourse.gUnknown, isHorizontal ? 280 : 140, RADIUS_08, 10);
          //      drawArcs1(context, color, multiElement.Resourse.gUnknown, isHorizontal ? 290 : 150, RADIUS_08, 10);
            //    drawArcs1(context, color, multiElement.Resourse.gUnknown, isHorizontal ? 300 : 160, RADIUS_08, 10);
              //  drawArcs1(context, color, multiElement.Resourse.gUnknown, isHorizontal ? 310 : 170, RADIUS_08, 10);
                drawArcs1(context, color, fon, isHorizontal ? 40 : 310, RADIUS_08, 10);
                drawArcs1(context, color, fon, isHorizontal ? 50 : 320, RADIUS_08, 10);
                drawArcs1(context, color, fon, isHorizontal ? 60 : 330, RADIUS_08, 10);
                drawArcs1(context, color, fon, isHorizontal ? 70 : 340, RADIUS_08, 10);
                drawArcs1(context, color, fon, isHorizontal ? 80 : 350, RADIUS_08, 10);
                drawArcs1(context, color, fon, isHorizontal ? 90 : 0, RADIUS_08, 10);
                drawArcs1(context, color, fon, isHorizontal ? 100 : 10, RADIUS_08, 10);
                drawArcs1(context, color, fon, isHorizontal ? 110 : 20, RADIUS_08, 10);
                drawArcs1(context, color, fon, isHorizontal ? 120 : 30, RADIUS_08, 10);
                drawArcs1(context, color, fon, isHorizontal ? 130 : 40, RADIUS_08, 10);
                drawArcs1(context, color, fon, isHorizontal ? 270 : 130, RADIUS_08, 10);
                drawArcs1(context, color, fon, isHorizontal ? 280 : 140, RADIUS_08, 10);
                drawArcs1(context, color, fon, isHorizontal ? 290 : 150, RADIUS_08, 10);
                drawArcs1(context, color, fon, isHorizontal ? 300 : 160, RADIUS_08, 10);
                drawArcs1(context, color, fon, isHorizontal ? 310 : 170, RADIUS_08, 10);


                //drawArcs7(widget, cSheloch, 0);//, 19);//87
                drawArcs1(context, color, multiElement.Resourse.gSheloch, 340, RADIUS_07);
                //drawArcs7(widget, cShelLand, 20);//, 39);//88
                drawArcs1(context, color, multiElement.Resourse.gShelLand, 320, RADIUS_07);
                //drawArcs7(widget, cActan, 40);//, 59);//89
                drawArcs1(context, color, multiElement.Resourse.gActan, 300, RADIUS_07);
                //drawArcs7(widget, cMetal, 60);//, 79);//104
                drawArcs1(context, color, multiElement.Resourse.gMetal, 280, RADIUS_07);
                //drawArcs7(widget, cMetal, 80);//, 99);//105
                drawArcs1(context, color, multiElement.Resourse.gMetal, 260, RADIUS_07);
                //drawArcs7(widget, cMetal, 100);//, 119);//106
                drawArcs1(context, color, multiElement.Resourse.gMetal, 240, RADIUS_07);
                //drawArcs7(widget, cMetal, 120);//, 139);//107
                drawArcs1(context, color, multiElement.Resourse.gMetal, 220, RADIUS_07);
                //drawArcs7(widget, cMetal, 140);//, 159);//108
                drawArcs1(context, color, multiElement.Resourse.gMetal, 200, RADIUS_07);
                //drawArcs7(widget, cMetal, 160);//, 179);//109
                drawArcs1(context, color, multiElement.Resourse.gMetal, 180, RADIUS_07);
                //drawArcs7(widget, cMetal, 180);//, 199);//110
                drawArcs1(context, color, multiElement.Resourse.gMetal, 160, RADIUS_07);
                //drawArcs7(widget, cMetal, 200);//, 219);//111
                drawArcs1(context, color, multiElement.Resourse.gMetal, 140, RADIUS_07);
                //drawArcs7(widget, cMetal, 220);//, 239);//112
                drawArcs1(context, color, multiElement.Resourse.gMetal, 120, RADIUS_07);
                //drawArcs7(widget, cPostmetal, 240);//, 259);//113
                drawArcs1(context, color, multiElement.Resourse.gPostmetal, 100, RADIUS_07);
                //drawArcs7(widget, cPostmetal, 260);//, 279);//114
                drawArcs1(context, color, multiElement.Resourse.gPostmetal, 80, RADIUS_07);
                //drawArcs7(widget, cPostmetal, 280);//, 299);//115
                drawArcs1(context, color, multiElement.Resourse.gPostmetal, 60, RADIUS_07);
                //drawArcs7(widget, cPostmetal, 300);//, 319);//116
                drawArcs1(context, color, multiElement.Resourse.gPostmetal, 40, RADIUS_07);
                //drawArcs7(widget, cGalogen, 320);//, 339);//117
                drawArcs1(context, color, multiElement.Resourse.gGalogen, 20, RADIUS_07);
                //drawArcs7(widget, cReal, 340);//, 359);//118
                drawArcs1(context, color, multiElement.Resourse.gReal, 0, RADIUS_07);

                //drawArcs6(widget, cSheloch, 0);//, 19);//55
                drawArcs1(context, color, multiElement.Resourse.gSheloch, 340, RADIUS_06);
                //drawArcs6(widget, cShelLand, 20);//, 39);//56
                drawArcs1(context, color, multiElement.Resourse.gShelLand, 320, RADIUS_06);
                //drawArcs6(widget, cLantan, 40);//, 59);//57
                drawArcs1(context, color, multiElement.Resourse.gLantan, 300, RADIUS_06);
                //drawArcs6(widget, cMetal, 60);//, 79);//72
                drawArcs1(context, color, multiElement.Resourse.gMetal, 280, RADIUS_06);
                //drawArcs6(widget, cMetal, 80);//, 99);//73
                drawArcs1(context, color, multiElement.Resourse.gMetal, 260, RADIUS_06);
                //drawArcs6(widget, cMetal, 100);//, 119);//74
                drawArcs1(context, color, multiElement.Resourse.gMetal, 240, RADIUS_06);
                //drawArcs6(widget, cMetal, 120);//, 139);//75
                drawArcs1(context, color, multiElement.Resourse.gMetal, 220, RADIUS_06);
                //drawArcs6(widget, cMetal, 140);//, 159);//76
                drawArcs1(context, color, multiElement.Resourse.gMetal, 200, RADIUS_06);
                //drawArcs6(widget, cMetal, 160);//, 179);//77
                drawArcs1(context, color, multiElement.Resourse.gMetal, 180, RADIUS_06);
                //drawArcs6(widget, cMetal, 180);//, 199);//78
                drawArcs1(context, color, multiElement.Resourse.gMetal, 160, RADIUS_06);
                //drawArcs6(widget, cMetal, 200);//, 219);//79
                drawArcs1(context, color, multiElement.Resourse.gMetal, 140, RADIUS_06);
                //drawArcs6(widget, cMetal, 220);//, 239);//80
                drawArcs1(context, color, multiElement.Resourse.gMetal, 120, RADIUS_06);
                //drawArcs6(widget, cPostmetal, 240);//, 259);//81
                drawArcs1(context, color, multiElement.Resourse.gPostmetal, 100, RADIUS_06);
                //drawArcs6(widget, cPostmetal, 260);//, 279);//82
                drawArcs1(context, color, multiElement.Resourse.gPostmetal, 80, RADIUS_06);
                //drawArcs6(widget, cPostmetal, 280);//, 299);//83
                drawArcs1(context, color, multiElement.Resourse.gPostmetal, 60, RADIUS_06);
                //drawArcs6(widget, cPolimetal, 300);//, 319);//84
                drawArcs1(context, color, multiElement.Resourse.gPolimetal, 40, RADIUS_06);
                //drawArcs6(widget, cGalogen, 320);//, 339);//85
                drawArcs1(context, color, multiElement.Resourse.gGalogen, 20, RADIUS_06);
                //drawArcs6(widget, cReal, 340);//, 359);//86
                drawArcs1(context, color, multiElement.Resourse.gReal, 0, RADIUS_06);

                //drawArcs5(widget, cSheloch, 0);//, 19);//37
                drawArcs1(context, color, multiElement.Resourse.gSheloch, 340, RADIUS_05);
                //drawArcs5(widget, cShelLand, 20);//, 39);//38
                drawArcs1(context, color, multiElement.Resourse.gShelLand, 320, RADIUS_05);
                //drawArcs5(widget, cMetal, 40);//, 59);//39
                drawArcs1(context, color, multiElement.Resourse.gMetal, 300, RADIUS_05);
                //drawArcs5(widget, cMetal, 60);//, 79);//40
                drawArcs1(context, color, multiElement.Resourse.gMetal, 280, RADIUS_05);
                //drawArcs5(widget, cMetal, 80);//, 99);//41
                drawArcs1(context, color, multiElement.Resourse.gMetal, 260, RADIUS_05);
                //drawArcs5(widget, cMetal, 100);//, 119);//42
                drawArcs1(context, color, multiElement.Resourse.gMetal, 240, RADIUS_05);
                //drawArcs5(widget, cMetal, 120);//, 139);//43
                drawArcs1(context, color, multiElement.Resourse.gMetal, 220, RADIUS_05);
                //drawArcs5(widget, cMetal, 140);//, 159);//44
                drawArcs1(context, color, multiElement.Resourse.gMetal, 200, RADIUS_05);
                //drawArcs5(widget, cMetal, 160);//, 179);//45
                drawArcs1(context, color, multiElement.Resourse.gMetal, 180, RADIUS_05);
                //drawArcs5(widget, cMetal, 180);//, 199);//46
                drawArcs1(context, color, multiElement.Resourse.gMetal, 160, RADIUS_05);
                //drawArcs5(widget, cMetal, 200);//, 219);//47
                drawArcs1(context, color, multiElement.Resourse.gMetal, 140, RADIUS_05);
                //drawArcs5(widget, cMetal, 220);//, 239);//48
                drawArcs1(context, color, multiElement.Resourse.gMetal, 120, RADIUS_05);
                //drawArcs5(widget, cPostmetal, 240);//, 259);//49
                drawArcs1(context, color, multiElement.Resourse.gPostmetal, 100, RADIUS_05);
                //drawArcs5(widget, cPostmetal, 260);//, 279);//50
                drawArcs1(context, color, multiElement.Resourse.gPostmetal, 80, RADIUS_05);
                //drawArcs5(widget, cPolimetal, 280);//, 299);//51
                drawArcs1(context, color, multiElement.Resourse.gPolimetal, 60, RADIUS_05);
                //drawArcs5(widget, cPolimetal, 300);//, 319);//52
                drawArcs1(context, color, multiElement.Resourse.gPolimetal, 40, RADIUS_05);
                //drawArcs5(widget, cGalogen, 320);//, 339);//53
                drawArcs1(context, color, multiElement.Resourse.gGalogen, 20, RADIUS_05);
                //drawArcs5(widget, cReal, 340);//, 359);//54
                drawArcs1(context, color, multiElement.Resourse.gReal, 0, RADIUS_05);


                //drawArcs4(widget, cSheloch, 0);//, 19);//19
                drawArcs1(context, color, multiElement.Resourse.gSheloch, 340, RADIUS_04);
                //drawArcs4(widget, cShelLand, 20);//, 39);//20
                drawArcs1(context, color, multiElement.Resourse.gShelLand, 320, RADIUS_04);
                //drawArcs4(widget, cMetal, 40);//, 59);//21
                drawArcs1(context, color, multiElement.Resourse.gMetal, 300, RADIUS_04);
                //drawArcs4(widget, cMetal, 60);//, 79);//22
                drawArcs1(context, color, multiElement.Resourse.gMetal, 280, RADIUS_04);
                //drawArcs4(widget, cMetal, 80);//, 99);//23
                drawArcs1(context, color, multiElement.Resourse.gMetal, 260, RADIUS_04);
                //drawArcs4(widget, cMetal, 100);//, 119);//24
                drawArcs1(context, color, multiElement.Resourse.gMetal, 240, RADIUS_04);
                //drawArcs4(widget, cMetal, 120);//, 139);//25
                drawArcs1(context, color, multiElement.Resourse.gMetal, 220, RADIUS_04);
                //drawArcs4(widget, cMetal, 140);//, 159);//26
                drawArcs1(context, color, multiElement.Resourse.gMetal, 200, RADIUS_04);
                //drawArcs4(widget, cMetal, 160);//, 179);//27
                drawArcs1(context, color, multiElement.Resourse.gMetal, 180, RADIUS_04);
                //drawArcs4(widget, cMetal, 180);//, 199);//28
                drawArcs1(context, color, multiElement.Resourse.gMetal, 160, RADIUS_04);
                //drawArcs4(widget, cMetal, 200);//, 219);//29
                drawArcs1(context, color, multiElement.Resourse.gMetal, 140, RADIUS_04);
                //drawArcs4(widget, cMetal, 220);//, 239);//30
                drawArcs1(context, color, multiElement.Resourse.gMetal, 120, RADIUS_04);
                //drawArcs4(widget, cPostmetal, 240);//, 259);//31
                drawArcs1(context, color, multiElement.Resourse.gPostmetal, 100, RADIUS_04);
                //drawArcs4(widget, cPolimetal, 260);//, 279);//32
                drawArcs1(context, color, multiElement.Resourse.gPolimetal, 80, RADIUS_04);
                //drawArcs4(widget, cPolimetal, 280);//, 299);//33
                drawArcs1(context, color, multiElement.Resourse.gPolimetal, 60, RADIUS_04);
                //drawArcs4(widget, cNemetal, 300);//, 319);//34
                drawArcs1(context, color, multiElement.Resourse.gNemetal, 40, RADIUS_04);
                //drawArcs4(widget, cGalogen, 320);//, 339);//35
                drawArcs1(context, color, multiElement.Resourse.gGalogen, 20, RADIUS_04);
                //drawArcs4(widget, cReal, 340);//, 359);//36
                drawArcs1(context, color, multiElement.Resourse.gReal, 0, RADIUS_04);

                drawArcs1(context, color, multiElement.Resourse.gSheloch, 340, RADIUS_03);
                drawArcs1(context, color, multiElement.Resourse.gShelLand, 320, RADIUS_03);
//                drawArcs1(context, color, multiElement.Resourse.gUnknown, 300, RADIUS_03);
  //              drawArcs1(context, color, multiElement.Resourse.gUnknown, 280, RADIUS_03);
    //            drawArcs1(context, color, multiElement.Resourse.gUnknown, 260, RADIUS_03);
      //          drawArcs1(context, color, multiElement.Resourse.gUnknown, 240, RADIUS_03);
        //        drawArcs1(context, color, multiElement.Resourse.gUnknown, 220, RADIUS_03);
          //      drawArcs1(context, color, multiElement.Resourse.gUnknown, 200, RADIUS_03);
//                drawArcs1(context, color, multiElement.Resourse.gUnknown, 180, RADIUS_03);
  //              drawArcs1(context, color, multiElement.Resourse.gUnknown, 160, RADIUS_03);
    //            drawArcs1(context, color, multiElement.Resourse.gUnknown, 140, RADIUS_03);
      //          drawArcs1(context, color, multiElement.Resourse.gUnknown, 120, RADIUS_03);
                drawArcs1(context, color, fon, 300, RADIUS_03);
                drawArcs1(context, color, fon, 280, RADIUS_03);
                drawArcs1(context, color, fon, 260, RADIUS_03);
                drawArcs1(context, color, fon, 240, RADIUS_03);
                drawArcs1(context, color, fon, 220, RADIUS_03);
                drawArcs1(context, color, fon, 200, RADIUS_03);
                drawArcs1(context, color, fon, 180, RADIUS_03);
                drawArcs1(context, color, fon, 160, RADIUS_03);
                drawArcs1(context, color, fon, 140, RADIUS_03);
                drawArcs1(context, color, fon, 120, RADIUS_03);
                drawArcs1(context, color, multiElement.Resourse.gPostmetal, 100, RADIUS_03);
                drawArcs1(context, color, multiElement.Resourse.gPolimetal, 80, RADIUS_03);
                drawArcs1(context, color, multiElement.Resourse.gNemetal, 60, RADIUS_03);
                drawArcs1(context, color, multiElement.Resourse.gNemetal, 40, RADIUS_03);
                drawArcs1(context, color, multiElement.Resourse.gGalogen, 20, RADIUS_03);
                drawArcs1(context, color, multiElement.Resourse.gReal, 0, RADIUS_03);

                //drawArcs2(widget, cSheloch, 0);//, 19);//3
                drawArcs1(context, color, multiElement.Resourse.gSheloch, 340, RADIUS_02);
                //drawArcs2(widget, cShelLand, 20);//, 39);//4
                drawArcs1(context, color, multiElement.Resourse.gShelLand, 320, RADIUS_02);
                //drawArcs2(widget, cPolimetal, 240);//, 259);//5
                drawArcs1(context, color, multiElement.Resourse.gPolimetal, 100, RADIUS_02);
                //drawArcs2(widget, cNemetal, 260);//, 279);//6
                drawArcs1(context, color, multiElement.Resourse.gNemetal, 80, RADIUS_02);
                //drawArcs2(widget, cNemetal, 280);//, 299);//7
                drawArcs1(context, color, multiElement.Resourse.gNemetal, 60, RADIUS_02);
                //drawArcs2(widget, cNemetal, 300);//, 319);//8
                drawArcs1(context, color, multiElement.Resourse.gNemetal, 40, RADIUS_02);
                //drawArcs2(widget, cGalogen, 320);//, 339);//9
                drawArcs1(context, color, multiElement.Resourse.gGalogen, 20, RADIUS_02);
                //drawArcs2(widget, cReal, 340);//, 359);//10
                drawArcs1(context, color, multiElement.Resourse.gReal, 0, RADIUS_02);

                drawArcs1(context, color, multiElement.Resourse.gNemetal, 340, RADIUS_01);
//                drawArcs1(context, color, multiElement.Resourse.gUnknown, 320, RADIUS_01);
  //              drawArcs1(context, color, multiElement.Resourse.gUnknown, 100, RADIUS_01);
    //            drawArcs1(context, color, multiElement.Resourse.gUnknown, 80, RADIUS_01);
      //          drawArcs1(context, color, multiElement.Resourse.gUnknown, 60, RADIUS_01);
        //        drawArcs1(context, color, multiElement.Resourse.gUnknown, 40, RADIUS_01);
          //      drawArcs1(context, color, multiElement.Resourse.gUnknown, 20, RADIUS_01);
                drawArcs1(context, color, fon, 320, RADIUS_01);
                drawArcs1(context, color, fon, 100, RADIUS_01);
                drawArcs1(context, color, fon, 80, RADIUS_01);
                drawArcs1(context, color, fon, 60, RADIUS_01);
                drawArcs1(context, color, fon, 40, RADIUS_01);
                drawArcs1(context, color, fon, 20, RADIUS_01);
                drawArcs1(context, color, multiElement.Resourse.gReal, 0, RADIUS_01);

//                drawArcs1(context, color, multiElement.Resourse.gUnknown, 340, RADIUS_00);
  //              drawArcs1(context, color, multiElement.Resourse.gUnknown, 0, RADIUS_00);
                drawArcs1(context, color, fon, 340, RADIUS_00);
                drawArcs1(context, color, fon, 0, RADIUS_00);


                calcCoordinateElement(context, isHorizontal ? 40 : 180, RADIUS_0A, "Lr", 10);
                calcCoordinateElement(context, isHorizontal ? 50 : 190, RADIUS_0A, "No", 10);
                calcCoordinateElement(context, isHorizontal ? 60 : 200, RADIUS_0A, "Md", 10);
                calcCoordinateElement(context, isHorizontal ? 70 : 210, RADIUS_0A, "Fm", 10);
                calcCoordinateElement(context, isHorizontal ? 80 : 220, RADIUS_0A, "Es", 10);

                calcCoordinateElement(context, isHorizontal ? 220 : 310, RADIUS_0A, "Cf", 10);
                calcCoordinateElement(context, isHorizontal ? 230 : 320, RADIUS_0A, "Bk", 10);
                calcCoordinateElement(context, isHorizontal ? 240 : 330, RADIUS_0A, "Cm", 10);
                calcCoordinateElement(context, isHorizontal ? 250 : 340, RADIUS_0A, "Am", 10);
                calcCoordinateElement(context, isHorizontal ? 260 : 350, RADIUS_0A, "Pu", 10);
                calcCoordinateElement(context, isHorizontal ? 270 : 0, RADIUS_0A, "Np", 10);
                calcCoordinateElement(context, isHorizontal ? 280 : 10, RADIUS_0A, "U", 10);
                calcCoordinateElement(context, isHorizontal ? 290 : 20, RADIUS_0A, "Pa", 10);
                calcCoordinateElement(context, isHorizontal ? 300 : 30, RADIUS_0A, "Th", 10);
                calcCoordinateElement(context, isHorizontal ? 310 : 40, RADIUS_0A, "Ac", 10);


                calcCoordinateElement(context, isHorizontal ? 40 : 180, RADIUS_09, "Lu", 10);
                calcCoordinateElement(context, isHorizontal ? 50 : 190, RADIUS_09, "Yb", 10);
                calcCoordinateElement(context, isHorizontal ? 60 : 200, RADIUS_09, "Tm", 10);
                calcCoordinateElement(context, isHorizontal ? 70 : 210, RADIUS_09, "Er", 10);
                calcCoordinateElement(context, isHorizontal ? 80 : 220, RADIUS_09, "Ho", 10);

                calcCoordinateElement(context, isHorizontal ? 220 : 310, RADIUS_09, "Dy", 10);
                calcCoordinateElement(context, isHorizontal ? 230 : 320, RADIUS_09, "Tb", 10);
                calcCoordinateElement(context, isHorizontal ? 240 : 330, RADIUS_09, "Gd", 10);
                calcCoordinateElement(context, isHorizontal ? 250 : 340, RADIUS_09, "Eu", 10);
                calcCoordinateElement(context, isHorizontal ? 260 : 350, RADIUS_09, "Sm", 10);
                calcCoordinateElement(context, isHorizontal ? 270 : 0, RADIUS_09, "Pm", 10);
                calcCoordinateElement(context, isHorizontal ? 280 : 10, RADIUS_09, "Nd", 10);
                calcCoordinateElement(context, isHorizontal ? 290 : 20, RADIUS_09, "Pr", 10);
                calcCoordinateElement(context, isHorizontal ? 300 : 30, RADIUS_09, "Ce", 10);
                calcCoordinateElement(context, isHorizontal ? 310 : 40, RADIUS_09, "La", 10);

                calcCoordinateElement(context, 0, RADIUS_07, "Fr");
                calcCoordinateElement(context, 20, RADIUS_07, "Ra");
                calcCoordinateElement(context, 40, RADIUS_07, "Ac");
                calcCoordinateElement(context, 60, RADIUS_07, "Rf");
                calcCoordinateElement(context, 80, RADIUS_07, "Db");
                calcCoordinateElement(context, 100, RADIUS_07, "Sg");
                calcCoordinateElement(context, 120, RADIUS_07, "Bh");
                calcCoordinateElement(context, 140, RADIUS_07, "Hs");
                calcCoordinateElement(context, 160, RADIUS_07, "Mt");
                calcCoordinateElement(context, 180, RADIUS_07, "Ds");
                calcCoordinateElement(context, 200, RADIUS_07, "Rg");
                calcCoordinateElement(context, 220, RADIUS_07, "Cn");
                calcCoordinateElement(context, 240, RADIUS_07, "Nh");
                calcCoordinateElement(context, 260, RADIUS_07, "Fl");
                calcCoordinateElement(context, 280, RADIUS_07, "Mc");
                calcCoordinateElement(context, 300, RADIUS_07, "Lv");
                calcCoordinateElement(context, 320, RADIUS_07, "Ts");
                calcCoordinateElement(context, 340, RADIUS_07, "Og");

                calcCoordinateElement(context, 0, RADIUS_06, "Cs");
                calcCoordinateElement(context, 20, RADIUS_06, "Ba");
                calcCoordinateElement(context, 40, RADIUS_06, "La");
                calcCoordinateElement(context, 60, RADIUS_06, "Hf");
                calcCoordinateElement(context, 80, RADIUS_06, "Ta");
                calcCoordinateElement(context, 100, RADIUS_06, "W");
                calcCoordinateElement(context, 120, RADIUS_06, "Re");
                calcCoordinateElement(context, 140, RADIUS_06, "Os");
                calcCoordinateElement(context, 160, RADIUS_06, "Ir");
                calcCoordinateElement(context, 180, RADIUS_06, "Pt");
                calcCoordinateElement(context, 200, RADIUS_06, "Au");
                calcCoordinateElement(context, 220, RADIUS_06, "Hg");
                calcCoordinateElement(context, 240, RADIUS_06, "Tl");
                calcCoordinateElement(context, 260, RADIUS_06, "Pb");
                calcCoordinateElement(context, 280, RADIUS_06, "Bi");
                calcCoordinateElement(context, 300, RADIUS_06, "Po");
                calcCoordinateElement(context, 320, RADIUS_06, "At");
                calcCoordinateElement(context, 340, RADIUS_06, "Rn");

                calcCoordinateElement(context, 0, RADIUS_05, "Rb");
                calcCoordinateElement(context, 20, RADIUS_05, "Sr");
                calcCoordinateElement(context, 40, RADIUS_05, "Y");
                calcCoordinateElement(context, 60, RADIUS_05, "Zr");
                calcCoordinateElement(context, 80, RADIUS_05, "Nb");
                calcCoordinateElement(context, 100, RADIUS_05, "Mo");
                calcCoordinateElement(context, 120, RADIUS_05, "Tc");
                calcCoordinateElement(context, 140, RADIUS_05, "Ru");
                calcCoordinateElement(context, 160, RADIUS_05, "Rh");
                calcCoordinateElement(context, 180, RADIUS_05, "Pd");
                calcCoordinateElement(context, 200, RADIUS_05, "Ag");
                calcCoordinateElement(context, 220, RADIUS_05, "Cd");
                calcCoordinateElement(context, 240, RADIUS_05, "In");
                calcCoordinateElement(context, 260, RADIUS_05, "Sn");
                calcCoordinateElement(context, 280, RADIUS_05, "Sb");
                calcCoordinateElement(context, 300, RADIUS_05, "Te");
                calcCoordinateElement(context, 320, RADIUS_05, "I");
                calcCoordinateElement(context, 340, RADIUS_05, "Xe");

                calcCoordinateElement(context, 0, RADIUS_04, "K");
                calcCoordinateElement(context, 20, RADIUS_04, "Ca");
                calcCoordinateElement(context, 40, RADIUS_04, "Sc");
                calcCoordinateElement(context, 60, RADIUS_04, "Ti");
                calcCoordinateElement(context, 80, RADIUS_04, "V");
                calcCoordinateElement(context, 100, RADIUS_04, "Cr");
                calcCoordinateElement(context, 120, RADIUS_04, "Mn");
                calcCoordinateElement(context, 140, RADIUS_04, "Fe");
                calcCoordinateElement(context, 160, RADIUS_04, "Co");
                calcCoordinateElement(context, 180, RADIUS_04, "Ni");
                calcCoordinateElement(context, 200, RADIUS_04, "Cu");
                calcCoordinateElement(context, 220, RADIUS_04, "Zn");
                calcCoordinateElement(context, 240, RADIUS_04, "Ga");
                calcCoordinateElement(context, 260, RADIUS_04, "Ge");
                calcCoordinateElement(context, 280, RADIUS_04, "As");
                calcCoordinateElement(context, 300, RADIUS_04, "Se");
                calcCoordinateElement(context, 320, RADIUS_04, "Br");
                calcCoordinateElement(context, 340, RADIUS_04, "Kr");

                calcCoordinateElement(context, 0, RADIUS_03, "Na");
                calcCoordinateElement(context, 20, RADIUS_03, "Mg");
                calcCoordinateElement(context, 240, RADIUS_03, "Al");
                calcCoordinateElement(context, 260, RADIUS_03, "Si");
                calcCoordinateElement(context, 280, RADIUS_03, "P");
                calcCoordinateElement(context, 300, RADIUS_03, "S");
                calcCoordinateElement(context, 320, RADIUS_03, "Cl");
                calcCoordinateElement(context, 340, RADIUS_03, "Ar");

                calcCoordinateElement(context, 0, RADIUS_02, "Li");
                calcCoordinateElement(context, 20, RADIUS_02, "Be");
                calcCoordinateElement(context, 240, RADIUS_02, "B");
                calcCoordinateElement(context, 260, RADIUS_02, "C");
                calcCoordinateElement(context, 280, RADIUS_02, "N");
                calcCoordinateElement(context, 300, RADIUS_02, "O");
                calcCoordinateElement(context, 320, RADIUS_02, "F");
                calcCoordinateElement(context, 340, RADIUS_02, "Ne");

                calcCoordinateElement(context, 0, RADIUS_01, "H");
                calcCoordinateElement(context, 340, RADIUS_01, "He");

        }

        private void drawArcs1(Cairo.Context context, Gdk.RGBA color, MyLib.HexColor hColor, int _angle, double _radius, int un_length_arc = 20)
        {
                double ANGLE = _angle;
                double RADIUS = _radius;
//                int un_length_arc = 20;
        	    double angle1 = ANGLE * (Math.PI/180.0); // angles are specified
	            double angle2 = (ANGLE + un_length_arc) * (Math.PI/180.0); // in radians

//	            char[] buf = new char[double.DTOSTR_BUF_SIZE];
	            //message(radius.to_str(buf));
	//            message(angle1.to_str(buf));
      //          message(angle2.to_str(buf));
        //        message(radius.to_string());

                //draw fon
	            context.set_line_width (1.0);
	            context.line_to (xCentr, yCentr);
	            context.arc (xCentr, yCentr, radius * RADIUS, angle1, angle2);
	            context.line_to (xCentr, yCentr);
	            GdkColor gColor = new MyLib.GdkColor.fromHexColor(hColor);
	            context.set_source_rgba (gColor.getR(), gColor.getG(), gColor.getB(), gColor.getA());
                context.fill ();

                //draw contur
	            context.line_to (xCentr, yCentr);
	            context.arc (xCentr, yCentr, radius * RADIUS, angle1, angle2);
	            context.line_to (xCentr, yCentr);
	            Gdk.cairo_set_source_rgba (context, color);
                context.stroke ();
        }

        private void calcCoordinateElement(Cairo.Context context, int _angle, double _radius, string element, int un_length_arc = 20)
        {
                double ANGLE = _angle;
                double RADIUS = _radius;
//                int un_length_arc = 20;
        	    double angle1 = ANGLE * (Math.PI/180.0); // angles are specified
	            double angle2 = (ANGLE + un_length_arc) * (Math.PI/180.0); // in radians

//                message("----------");
                GPoint point1 = find_point_circle(radius * RADIUS, ANGLE);
  //              message(point1.x.to_string());
    //            message(point1.y.to_string());
                GPoint point2 = find_point_circle(radius * RADIUS, ANGLE + un_length_arc);
      //          message(point2.x.to_string());
        //        message(point2.y.to_string());
                GPoint point3 = find_point_circle(radius * RADIUS * 0.92, ANGLE);
          //      message(point3.x.to_string());
            //    message(point3.y.to_string());
                GPoint point4 = find_point_circle(radius * RADIUS * 0.92, ANGLE + un_length_arc);
              //  message(point4.x.to_string());
                //message(point4.y.to_string());

    	        context.set_source_rgb (0.1, 0.1, 0.1);
    	        context.select_font_face ("Adventure", Cairo.FontSlant.NORMAL, Cairo.FontWeight.BOLD);
    	        context.set_font_size (12);
    	        int pointX = (point1.x + point2.x + point3.x + point4.x) / 4 - 10;
    	        int pointY = (point1.y + point2.y + point3.y + point4.y) / 4;
    	        context.move_to (pointX, pointY);
    	        context.show_text (element);
        }

        private GPoint find_point_circle(double radius, double angle)
        {
	        GPoint point = { 0, 0 };
//	        point.x = 0;
//	        point.y = 0;
	        if((angle<0) || (angle>360)) return point;
	        point = { (int)xCentr, (int)yCentr };
//	        point.x = center.x;
//	        point.y = center.y;
	        int iAngle = (int)Math.round(angle);
	        switch(iAngle)	{
		        case 0:     point.x  = (int)xCentr + (int)radius;
		                    //point.y = center.y;
				        return point;
		        case 90:	point.y  = (int)yCentr - (int)radius;
		                    //point.x = center.x;
				        return point;
		        case 180:	point.x  = (int)xCentr - (int)radius;
		                    //point.y = center.y;
				        return point;
		        case 270:	point.y  = (int)yCentr + (int)radius;
		                    //point.x = center.x;
				        return point;
		        default:if((angle > 0) && (angle <90))
				        {
                            point = find_katet1(radius, angle);
                            return point;
                        }
                        else if((angle > 90) && (angle <180))
				        {
                            point = find_katet2(radius, angle);
                            return point;
                        }
                        else if((angle > 180) && (angle <270))
				        {
                            point = find_katet3(radius, angle);
                            return point;
                        }
                        else// if((angle > 270) && (angle <360))
				        {
                            point = find_katet4(radius, angle);
                            return point;
                        }
            }
            return point;
        }

        private GPoint find_katet1(double radius, double angle)
        {
//	        GPoint point;
	        double val = Math.PI / 180;
//	        point.x = center.x + (int)Math.round(radius * Math.cos(angle*val));
//	        point.y = center.y - (int)Math.round(radius * Math.sin(angle*val));
	        GPoint point = {
                    (int)xCentr + (int)Math.round(radius * Math.cos(angle*val)),
                    (int)yCentr - (int)Math.round(radius * Math.sin(angle*val))
	        };
	        return point;
        }

        private GPoint find_katet2(double radius, double angle)
        {
	        double angle2 = 180 - angle;
//	        GPoint point;
	        double val = Math.PI / 180;
//	        point.x = center.x - (int)Math.round(radius * Math.cos(angle2*val));
//	        point.y = center.y - (int)Math.round(radius * Math.sin(angle2*val));
	        GPoint point = {
		            (int)xCentr - (int)Math.round(radius * Math.cos(angle2*val)),
	                (int)yCentr - (int)Math.round(radius * Math.sin(angle2*val))
	        };
	        return point;
        }

        private GPoint find_katet3(double radius, double angle)
        {
	        double angle3 = angle - 180;
//	        GPoint point;
	        double val = Math.PI / 180;
//	        point.x = center.x - (int)Math.round(radius * Math.cos(angle3*val));
//	        point.y = center.y + (int)Math.round(radius * Math.sin(angle3*val));
	        GPoint point = {
	                (int)xCentr - (int)Math.round(radius * Math.cos(angle3*val)),
	                (int)yCentr + (int)Math.round(radius * Math.sin(angle3*val))
	        };
	        return point;
        }

        private GPoint find_katet4(double radius, double angle)
        {
	        double angle4 = 360 - angle;
//	        GPoint point;
	        double val = Math.PI / 180;
//	        point.x = center.x + (int)Math.round(radius * Math.cos(angle3*val));
//	        point.y = center.y + (int)Math.round(radius * Math.sin(angle3*val));
	        GPoint point = {
	                (int)xCentr + (int)(radius * Math.cos(angle4*val)),
	                (int)yCentr + (int)(radius * Math.sin(angle4*val))
	        };
	        return point;
        }

    }
}
