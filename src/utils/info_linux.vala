extern string get_name_os_linux ();
extern string get_name_os2_linux ();
extern string get_name_cpu_linux ();
extern string get_current_gtk_theme ();
//extern string get_name_architecture_linux ();

namespace MyLib
{
    public class InfoLinux : GLib.Object {

        private string s_os;
        private string s_cpu;
    //    private string s_arhitech;

        private string _os;
        private string _cpu;
    //    private string _arhitech;

        private bool _theme; // true - if Light Theme

        private bool is_light_theme () {
            string _temp = get_current_gtk_theme ();
//            stdout.printf ("%s", _temp);
            int begin = _temp.index_of ("dark");
//            stdout.printf ("%d", begin);
            return begin == -1 ? true : false;
        }

        public InfoLinux () {
            Object ();
            s_os = get_name_os2_linux ();
//	        stdout.printf ("%s", s_os);

    //        s_arhitech = get_name_architecture_linux ();
    //        stdout.printf ("%s", s_arhitech);

	        s_cpu = get_name_cpu_linux ();
//	        stdout.printf ("%s", s_cpu);

	        _os = find_os2 ();
	        _cpu = find_cpu ();

	        _theme = is_light_theme ();
        }

        private string find_os () {
            StringBuilder builder = new StringBuilder ("");
            for(int i=0;i<s_os.length;i++)
            {
                if(s_os[i] == '\n') break;
                builder.append_c(s_os[i]);
            }
            return builder.str;
        }

        private string find_os2 () {
//            int begin = s_os.index_of ("DISTRIB_DESCRIPTION");
            int begin = s_os.index_of ("PRETTY_NAME");
//            string t_cpu = s_os.substring (begin + 20, 50);
            string t_cpu = s_os.substring (begin + 12, 50);
            StringBuilder builder = new StringBuilder ("");
            for(int i=0;i<t_cpu.length;i++)
            {
                if(t_cpu[i] == '\n') break;
                builder.append_c(t_cpu[i]);
            }
            return builder.str;
        }

        private string find_cpu () {
            int begin = s_cpu.index_of ("model name	: ");
            string t_cpu = s_cpu.substring (begin + 13, 36);
            StringBuilder builder = new StringBuilder ("");
            for(int i=0;i<t_cpu.length;i++)
            {
                if(t_cpu[i] == '\n') break;
                builder.append_c(t_cpu[i]);
            }
            return builder.str;
        }

        public string os {
            get {
                return _os;
            }
        }

        public string cpu {
            get {
                return _cpu;
            }
        }

        public bool theme {
            get {
                return _theme;
            }
        }
    /*
        public string arhitech {
            get {
                return _arhitech;
            }
        }
    */
    }
}
