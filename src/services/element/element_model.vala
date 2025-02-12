namespace Multielement {

    class ElementField {
        public const string id = "id";
        public const string nomer = "nomer";
        public const string name = "name";
        public const string symbol = "symbol";
        public const string latin_name = "latin_name";
        public const string period = "period";
        public const string group = "group";
        public const string weight = "weight";
        public const string density = "density";
        public const string temperature_emelting = "temperature_emelting";
        public const string temperature_boiling = "temperature_boiling";
        public const string opening_year = "opening_year";
        public const string discover = "discover";
        public const string wiki = "wiki";
        public const string properties = "properties";
        public const string propertiesName = "propertiesName";
    }

    public class ElementModel {
        public int64 id;
        public int64 nomer;
        public string name;
        public string symbol;
        public string latin_name;
        public int64 period;
        public int64 group;
        public string weight;
        public string density;
        public string temperature_emelting;
        public string temperature_boiling;
        public string opening_year;
        public string discover;
        public string wiki;
        public int64 properties;
        public string propertiesName;

        public ElementModel(int _id, int _nomer, string _name, string _symbol, string _latin_name,
                            int _period, int _group, string _weight, string _density,
                            string _temperature_emelting, string _temperature_boiling,
                            string _opening_year, string _discover, string _wiki, int _properties,
                            string _propertiesName) {
            id = _id;
            nomer = _nomer;
            name = _name;
            symbol = _symbol;
            latin_name = _latin_name;
            period = _period;
            group = _group;
            weight = _weight;
            density = _density;
            temperature_emelting = _temperature_emelting;
            temperature_boiling = _temperature_boiling;
            opening_year = _opening_year;
            discover = _discover;
            wiki = _wiki;
            properties = _properties;
            propertiesName = _propertiesName;
        }

        public ElementModel.fromJson (Json.Node item) {
            ElementField elementField = new ElementField();

            Json.Object obj = item.get_object ();
            foreach(unowned string name2 in obj.get_members ()) {
                switch(name2) {
                    case elementField.id:
                        unowned Json.Node it = obj.get_member (name2);
                        id = obj.get_int_member (elementField.id);
                        message(id.to_string());
                        break;
                    case elementField.nomer:
                        unowned Json.Node it = obj.get_member (name2);
                        nomer = obj.get_int_member (elementField.nomer);
                        message (nomer.to_string());
                        break;
                    case elementField.name:
                        unowned Json.Node it = obj.get_member (name2);
                        name = obj.get_string_member (elementField.name);
                        message (name);
                        break;
                    case elementField.symbol:
                        unowned Json.Node it = obj.get_member (name2);
                        symbol = obj.get_string_member (elementField.symbol);
                        message(symbol);
                        break;
                    case elementField.latin_name:
                        unowned Json.Node it = obj.get_member (name2);
                        latin_name = obj.get_string_member (elementField.latin_name);
                        message(latin_name);
                        break;
                    case elementField.period:
                        unowned Json.Node it = obj.get_member (name2);
                        period = obj.get_int_member (elementField.period);
                        message(period.to_string ());
                        break;
                    case elementField.group:
                        unowned Json.Node it = obj.get_member (name2);
                        group = obj.get_int_member (elementField.group);
                        message(group.to_string ());
                        break;
                    case elementField.weight:
                        unowned Json.Node it = obj.get_member (name2);
                        weight = obj.get_string_member (elementField.weight);
                        message(weight);
                        break;
                    case elementField.density:
                        unowned Json.Node it = obj.get_member (name2);
                        density = obj.get_string_member (elementField.density);
                        message(density);
                        break;
                    case elementField.temperature_emelting:
                        unowned Json.Node it = obj.get_member (name2);
                        temperature_emelting = obj.get_string_member (elementField.temperature_emelting);
                        message(temperature_emelting);
                        break;
                    case elementField.temperature_boiling:
                        unowned Json.Node it = obj.get_member (name2);
                        temperature_boiling = obj.get_string_member (elementField.temperature_boiling);
                        message(temperature_boiling);
                        break;
                    case elementField.opening_year:
                        unowned Json.Node it = obj.get_member (name2);
                        opening_year = obj.get_string_member (elementField.opening_year);
                        message(opening_year);
                        break;
                    case elementField.discover:
                        unowned Json.Node it = obj.get_member (name2);
                        discover = obj.get_string_member (elementField.discover);
                        message(discover);
                        break;
                    case elementField.wiki:
                        unowned Json.Node it = obj.get_member (name2);
                        wiki = obj.get_string_member (elementField.wiki);
                        message(wiki);
                        break;
                    case elementField.properties:
                        unowned Json.Node it = obj.get_member (name2);
                        properties = obj.get_int_member (elementField.properties);
                        message(properties.to_string ());
                        break;
                    case elementField.propertiesName:
                        unowned Json.Node it = obj.get_member (name2);
                        propertiesName = obj.get_string_member (elementField.propertiesName);
                        message(propertiesName);
                        break;
                    default:
                        break;
                }
            }
        }
    }
}


