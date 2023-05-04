import '../model/wishlistM.dart';

class wishlistS {
  static List<wishlistM> wishlistData = wishlistRawData.map((data) => wishlistM.fromJson(data)).toList();
}

var wishlistRawData = [
   {
    'image': [
      'aset/images/nikeblack.jpg',
      'aset/images/nikegrey.jpg',
    ],
    'name': 'Nike Waffle One',
    "price": " Rp 1.429.000",
    'count': 1,
  },
  // 2
  {
    'image': [
      'aset/images/nikegrey.jpg',
      'aset/images/nikeblack.jpg',
    ],
    'name': "Nike Blazer Mid77 Vintage",
    "price": " Rp 1.429.000",
    'count': 1,
  },
  // 3
  {
    'image': [
      'aset/images/nikehoodie.jpg',
      'aset/images/nikehoodie.jpg',
    ],
    'name': "Nike Sportswear Swoosh",
    "price": " Rp 849.000",
    'count': 1,
  },
  // 4
  {
    'image': [
      'aset/images/nikewhite.jpg',
      'aset/images/nikewhite.jpg',
    ],
    'name': "Nike Sportswear Swoosh",
    "price": " Rp 1.449.000",
    'count': 2,
  },
  // 5
  {
    'image': [
      'aset/images/nikepurple.jpg',
      'aset/images/nikepurple.jpg',
    ],
    'name': "Nike Sportswear Swoosh",
    "price": " Rp 1.849.000",
    'count': 3,
  },
  // 6
  {
    'image': [
      'aset/images/nikewhite2.jpg',
      'aset/images/nikewhite2.jpg',
    ],
    'name': "Nike Sportswear Swoosh",
    "price": " Rp 2.849.000",
    'count': 1,
  },
  // 7
  {
    'image': [
      'aset/images/nikepants.jpg',
      'aset/images/nikepants.jpg',
    ],
    'name': "Nike Sportswear Swoosh",
    "price": " Rp 549.000",
    'count': 2,
  },
  // 8
  {
    'image': [
      'aset/images/nikepants2.jpg',
      'aset/images/nikepants2.jpg',
    ],
    'name': "Nike Sportswear Swoosh",
    "price": " Rp 649.000",
    'count': 1,
  },
  // 9
  {
    'image': [
      'aset/images/nikejacket.jpg',
      'aset/images/nikejacket.jpg',
    ],
    'name': "Nike Sportswear Swoosh",
    "price": " Rp 1.549.000",
    'count': 1,
  },
];