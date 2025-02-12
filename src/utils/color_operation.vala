using Gtk;

namespace MyLib
{
/*    class ColorOperation
    {
	    public static Gdk.Color makeColor(int16 _red, int16 _green, int16 _blue)
	    {
	        Gdk.Color color = Gdk.Color();
	        color.red = _red;
	        color.green = _green;
	        color.blue = _blue;
	        return color;
	    }
    }
    */

    struct GPoint {
//        public uint16 x;
  //      public uint16 y;
        public int x;
        public int y;
    }

    struct HexColor {
        public uint16 red;
        public uint16 green;
        public uint16 blue;
    }

    class GdkColor {
        private double red;
        private double green;
        private double blue;
        private double alpha;

        public GdkColor(double r, double g, double b, double a)
        {
            red = r;
            green = g;
            blue = b;
            alpha = a;
        }

        public GdkColor.fromHexColor(HexColor hColor)
	    {
            red = (double)hColor.red / (double)0xFFFF;
	        green = (double)hColor.green / (double)0xFFFF;
	        blue = (double)hColor.blue / (double)0xFFFF;
	        alpha = 1;
        }

        public double getR() {
            return red;
        }

        public double getG() {
            return green;
        }

        public double getB() {
            return blue;
        }

        public double getA() {
            return alpha;
        }
    }
}
