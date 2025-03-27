List<Map<String, dynamic>> ticketList = [
  {
    'from': {'code': "NYC", 'name': "New-York"},
    'to': {'code': "LDN", 'name': "London"},
    'flying_time': '8H 30M',
    'date': "1 MAY",
    'departure_time': "08:00 AM",
    "number": 23
  },
  {
    'from': {'code': "DK", 'name': "Dhaka"},
    'to': {'code': "SH", 'name': "Shanghai"},
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time': "09:00 AM",
    "number": 45
  },
  {
    'from': {'code': "LAX", 'name': "Los Angeles"},
    'to': {'code': "SYD", 'name': "Sydney"},
    'flying_time': '15H 20M',
    'date': "15 JUN",
    'departure_time': "10:30 AM",
    "number": 67
  },
  {
    'from': {'code': "SFO", 'name': "San Francisco"},
    'to': {'code': "TLV", 'name': "Tel Aviv"},
    'flying_time': '14H 10M',
    'date': "20 JUN",
    'departure_time': "02:45 PM",
    "number": 81
  },
  {
    'from': {'code': "BKK", 'name': "Bangkok"},
    'to': {'code': "KUL", 'name': "Kuala Lumpur"},
    'flying_time': '2H 30M',
    'date': "25 JUN",
    'departure_time': "01:00 PM",
    "number": 56
  },
  {
    'from': {'code': "HKG", 'name': "Hong Kong"},
    'to': {'code': "BOM", 'name': "Mumbai"},
    'flying_time': '6H 50M',
    'date': "5 JUL",
    'departure_time': "06:30 AM",
    "number": 19
  },
  {
    'from': {'code': "FRA", 'name': "Frankfurt"},
    'to': {'code': "ZRH", 'name': "Zurich"},
    'flying_time': '1H 30M',
    'date': "15 JUL",
    'departure_time': "03:00 PM",
    "number": 29
  },
  {
    'from': {'code': "JFK", 'name': "New York"},
    'to': {'code': "LHR", 'name': "London Heathrow"},
    'flying_time': '7H 45M',
    'date': "22 JUL",
    'departure_time': "11:30 PM",
    "number": 56
  }
];

class AppRoutes {
  static const homePage = "/";

  static const allTickets = "/all_tickets";

  static const ticketScreen = "/ticket_screen";

  static const allHotels = "/all_hotels";

  static const hotelDetail = "/hotel_detail";
}

List<Map<String, dynamic>> hotelList = [
  {
    'image':
        'https://blog.zenhotels.com/wp-content/uploads/2023/10/%D1%84%D0%BE%D1%82%D0%BE82.jpg',
    'place': 'Open Space',
    'destination': 'UK',
    'price': 25,
  },
  {
    'image':
        'https://the-st-regis-moscow-nikolskaya-hotel.booked.net/data/Photos/OriginalPhoto/6791/679197/679197165/The-St-Regis-Moscow-Nikolskaya-Hotel-Exterior.JPEG',
    'place': 'Sir Victor Hotel',
    'destination': 'Spain',
    'price': 25,
  },
  {
    'image':
        'https://spainguides.com/wp-content/uploads/2018/04/Royal-Garden-Villas-Tenerif.jpg',
    'place': 'Sir Victor Hotel',
    'destination': 'Spain',
    'price': 25,
  },
  {
    'image':
        'https://media.cnn.com/api/v1/images/stellar/prod/160726150143-us-beautiful-hotels-17-bellagio-2.jpg?q=w_1900,h_1096,x_0,y_0,c_fill',
    'place': 'Global Will',
    'destination': 'London',
    'price': 40,
  },
  {
    'image':
        'https://i0.wp.com/kenwoodtravel.co.uk/blog/wp-content/uploads/Untitled-design-1-1.png?fit=2310%2C1208&ssl=1',
    'place': 'Tallest Building',
    'destination': 'Dubai',
    'price': 68,
  },
];
