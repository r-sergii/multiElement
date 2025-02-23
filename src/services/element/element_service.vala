namespace Multielement {

    public class ElementService {
        public Gee.ArrayList<ElementModel> listElements;

        public ElementService() {
            listElements = new Gee.ArrayList<ElementModel> ();
        }

        public void getItems (string locale) {
            var elementProvider = new ElementProvider ();
            listElements.clear ();
            elementProvider.getItems ( listElements, locale );
//            message (listElements.size.to_string ());
        }
    }
}
