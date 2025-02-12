namespace Multielement {

    public class ElementService {
        public Gee.ArrayList<ElementModel> listElements;

        public ElementService() {
            listElements = new Gee.ArrayList<ElementModel> ();
        }

        public void getItems () {
            var elementProvider = new ElementProvider ();
            elementProvider.getItems ( listElements, "EN" );
            message (listElements.size.to_string ());
        }
    }
}
