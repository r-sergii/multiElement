namespace Multielement {

    public class TranslatorProvider {
        const string baseUrl = "https://script.google.com";
        const string pathUrl = "/macros/s/AKfycbyEI2pnxLJF489Kp5-qvCdDN8PhvN_Hv08mzplb9IXkoqVjFqSO13u1Q8OYl0CjBHZi/exec";

        Http.Client http;

        public TranslatorProvider() {
            http = new Http.Client();
        }

        public void getItems ( TranslatorModel source, Gee.ArrayList<ResultTranslatorModel> listTranslation ) {
            var host = baseUrl + pathUrl + "?lang=" + source.lang + "&words=" + source.words;

            listTranslation.clear();
//            message (host);

            try {
                var response = http.get( host );
                if ( response.status.code == 200 ){
                    //stdout.printf(@"My public IP address is: $(response)\n");
//                    message (response.to_string ());

                    var parser = new Json.Parser ();
                    parser.load_from_data ((string)response.to_string (), -1);
                    unowned Json.Node node = parser.get_root();
                    unowned Json.Array arr = node.get_array();
                    int i = 0;
                    foreach(unowned Json.Node item in arr.get_elements ()) {
                        listTranslation.add (new ResultTranslatorModel.fromJson (item) );

                        i++;
//                        message(i.to_string());
                    }

                }
            } catch (Error err){
                stderr.printf(@"$(err.message)\n");
            }
        }
    }
}

