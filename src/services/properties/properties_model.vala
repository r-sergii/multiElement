namespace Multielement {

    public abstract class PropertiesField {
        public const string id = "id";
        public const string properties = "properties";
        public const string name = "name";
    }

    public class PropertiesModel {
        public int64 id;
        public int64 properties;
        public string name;

        public PropertiesModel(int _id, int _properties, string _name) {
            id = _id;
            properties = _properties;
            name = _name;
        }

        public PropertiesModel.fromJson (Json.Node item) {
//            PropertiesField propertiesField = new PropertiesField();

            Json.Object obj = item.get_object ();
            foreach(unowned string name2 in obj.get_members ()) {
                switch(name2) {
                    case PropertiesField.id:
                        unowned Json.Node it = obj.get_member (name2);
                        id = obj.get_int_member (PropertiesField.id);
//                        message(id.to_string());
                        break;
                    case PropertiesField.properties:
                        unowned Json.Node it = obj.get_member (name2);
                        properties = obj.get_int_member (PropertiesField.properties);
//                        message(properties.to_string());
                        break;
                    case PropertiesField.name:
                        unowned Json.Node it = obj.get_member (name2);
                        name = obj.get_string_member (PropertiesField.name);
//                        message (name);
                        break;
                    default:
                        break;
                }
            }
        }
    }
}


