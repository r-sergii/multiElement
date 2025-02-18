namespace Multielement {

    public class PropertiesService {
        public Gee.ArrayList<PropertiesModel> listProperties;

        public PropertiesService() {
            listProperties = new Gee.ArrayList<PropertiesModel> ();
        }

        public void getItems (string locale) {
            var propertiesProvider = new PropertiesProvider ();
            propertiesProvider.getItems ( listProperties, locale );
            message (listProperties.size.to_string ());
        }
    }
}
