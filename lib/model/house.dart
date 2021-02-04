class Rentplace {
  final String name;
  final String locationCard;
  final String location;
  final String agent;
  final String imageAppbar;
  final String imageFa1;
  final String imageFa2;
  final int beedroom;
  final String imageFa3;
  final String description;
  final double price;
  final double rate;

  Rentplace({
    this.name,
    this.locationCard,
    this.location,
    this.agent,
    this.imageAppbar,
    this.imageFa1,
    this.imageFa2,
    this.beedroom,
    this.imageFa3,
    this.description,
    this.price,
    this.rate,
  });
}

var rentPlaceList = [
  Rentplace(
    name: 'Modern House',
    locationCard: 'Bandung',
    location: 'KBP Bandung , Indonesia',
    agent: 'De Kezia',
    imageAppbar: 'assets/renthouse.jpg',
    imageFa1: 'assets/swimmingpool.png',
    imageFa2: 'assets/beedroom.png',
    beedroom: 2,
    imageFa3: 'assets/garage.png',
    description:
        'Luxury homes at affordable prices with Bandung hilly atmosphere. Located in a strategic location, flood free.',
    price: 300,
    rate: 4.0,
  ),
  Rentplace(
    name: 'White House',
    locationCard: 'Jakarta',
    location: 'Ancol , Indonesia',
    agent: 'Katlin',
    imageAppbar: 'assets/image2.png',
    imageFa1: 'assets/swimmingpool.png',
    imageFa2: 'assets/beedroom.png',
    beedroom: 2,
    imageFa3: 'assets/garage.png',
    description:
        'White house in Jakarta , same like modern house but have different architecture .',
    price: 200,
    rate: 4.2,
  ),
  Rentplace(
    name: 'Minimalist House',
    locationCard: 'Bogor',
    location: 'Telaga Warna , Indonesia',
    agent: 'Felita',
    imageAppbar: 'assets/image3.jpg',
    imageFa1: 'assets/swimmingpool.png',
    imageFa2: 'assets/beedroom.png',
    beedroom: 2,
    imageFa3: 'assets/garage.png',
    description:
        'Minimalist house is that have designed unique , neat , clean without many ornaments and very precise',
    price: 100,
    rate: 4.5,
  ),
  Rentplace(
    name: 'Wooden House',
    locationCard: 'Malang',
    location: 'Gunung Sari , Indonesia',
    agent: 'Anjayani',
    imageAppbar: 'assets/wooden.jpg',
    imageFa1: 'assets/swimmingpool.png',
    imageFa2: 'assets/beedroom.png',
    beedroom: 2,
    imageFa3: 'assets/garage.png',
    description: 'this house has a high aesthetic  and a unique appearance .',
    price: 250,
    rate: 4.8,
  ),
  Rentplace(
    name: 'Triangle House',
    locationCard: 'Bogor',
    location: 'Taman Sari , Indonesia',
    agent: 'Sinta',
    imageAppbar: 'assets/trianglehouse.jpg',
    imageFa1: 'assets/swimmingpool.png',
    imageFa2: 'assets/beedroom.png',
    beedroom: 2,
    imageFa3: 'assets/garage.png',
    description: 'This house triangular have and minimalist style ',
    price: 80,
    rate: 4.0,
  ),
  Rentplace(
    name: 'Hill House',
    locationCard: 'Bogor',
    location: 'Bukit Pelangi , Indonesia',
    agent: 'Nadira',
    imageAppbar: 'assets/hillhouse.jpg',
    imageFa1: 'assets/swimmingpool.png',
    imageFa2: 'assets/beedroom.png',
    beedroom: 2,
    imageFa3: 'assets/garage.png',
    description:
        'Luxury homes at affordable prices with Bogor hilly atmosphere. Located in a strategic location.',
    price: 100,
    rate: 4.0,
  ),

  //fav

  Rentplace(
    name: 'Modern White House',
    locationCard: 'Jakarta',
    location: 'Jakarta Selatan , Indonesia',
    agent: 'Hamillton',
    imageAppbar: 'assets/favorite/image1.jpg',
    imageFa1: 'assets/swimmingpool.png',
    imageFa2: 'assets/beedroom.png',
    beedroom: 2,
    imageFa3: 'assets/garage.png',
    description:
        'Luxury homes at affordable prices , have unique design and Located in a strategic location, flood free.',
    price: 170,
    rate: 4.0,
  ),
  Rentplace(
    name: 'Modern Tropical',
    locationCard: 'Depok',
    location: ' Cimanggis , Indonesia',
    agent: 'Neffeza',
    imageAppbar: 'assets/favorite/image2.jpg',
    imageFa1: 'assets/swimmingpool.png',
    imageFa2: 'assets/beedroom.png',
    beedroom: 2,
    imageFa3: 'assets/garage.png',
    description:
        'This homes have design like italian style , and have classic style',
    price: 150,
    rate: 4.0,
  ),
  Rentplace(
    name: 'Classic House',
    locationCard: 'Sulawesi',
    location: 'Central Sulawesi , Indonesia',
    agent: 'De Kezia',
    imageAppbar: 'assets/favorite/image3.jpg',
    imageFa1: 'assets/swimmingpool.png',
    imageFa2: 'assets/beedroom.png',
    beedroom: 2,
    imageFa3: 'assets/garage.png',
    description:
        'Classic homes at affordable prices. Located in a strategic location, flood free.',
    price: 120,
    rate: 4.0,
  ),
  Rentplace(
    name: 'Italian Classic',
    locationCard: 'Jakarta',
    location: 'Pondok Indah , Indonesia',
    agent: 'Kezia',
    imageAppbar: 'assets/favorite/image4.jpg',
    imageFa1: 'assets/swimmingpool.png',
    imageFa2: 'assets/beedroom.png',
    beedroom: 2,
    imageFa3: 'assets/garage.png',
    description:
        'Italian homes at affordable prices and have minimalist design with italian style',
    price: 220,
    rate: 4.0,
  ),
  Rentplace(
    name: 'American Classic',
    locationCard: 'Bandung',
    location: 'KBP Bandung , Indonesia',
    agent: 'Sarah',
    imageAppbar: 'assets/favorite/image5.jpg',
    imageFa1: 'assets/swimmingpool.png',
    imageFa2: 'assets/beedroom.png',
    beedroom: 2,
    imageFa3: 'assets/garage.png',
    description: 'American House have European classic style',
    price: 175,
    rate: 4.0,
  ),
  Rentplace(
    name: 'Modern Glass House',
    locationCard: 'Bandung',
    location: 'KBP Bandung , Indonesia',
    agent: 'Nabila',
    imageAppbar: 'assets/favorite/image6.jpg',
    imageFa1: 'assets/swimmingpool.png',
    imageFa2: 'assets/beedroom.png',
    beedroom: 2,
    imageFa3: 'assets/garage.png',
    description:
        'Luxury homes glass as the main material and have Located in a strategic location.',
    price: 290,
    rate: 4.0,
  ),
  Rentplace(
    name: 'Federal House',
    locationCard: 'Jakarta',
    location: 'KBP Bandung , Indonesia',
    agent: 'Sinta',
    imageAppbar: 'assets/favorite/image7.jpg',
    imageFa1: 'assets/swimmingpool.png',
    imageFa2: 'assets/beedroom.png',
    beedroom: 2,
    imageFa3: 'assets/garage.png',
    description:
        'Federal house have American architecture , and houses that are simple squares, usually have two or three rooms, with a symmetrical arrangement of doors and windows',
    price: 400,
    rate: 4.0,
  ),
];
