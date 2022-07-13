class Overview {
  final String image;

  Overview(this.image);
}

List<Overview> overview = overviewData
    .map((item) => Overview(item['image'] as String))
    .toList();

var overviewData = [
  {
    'image': "assets/images/Network Analysis.jpg"
  },
   {
    'image': "assets/images/Engineering Mathematics.jpg"
  },
   {
    'image': "assets/images/Introduction to Financial Accounting.jpg"
  },
   {
    'image': "assets/images/Encyclopedia of Human Nutrition.jpg"
  },
];

class Overview1 {
  final String image;

  Overview1(this.image);
}

List<Overview1> overview1 = overview1Data
    .map((item) => Overview1(item['image'] as String))
    .toList();

var overview1Data = [
  {
    'image': "assets/images/Applied and Computational Engineering.jpg"
  },
   {
    'image': "assets/images/Advanced Stress and Stability.jpg"
  },
   {
    'image': "assets/images/Boundary Methods.jpg"
  },
   {
    'image': "assets/images/Engineering Mathematics.jpg"
  },
];

class Engineering1 {
  final String image;

  Engineering1(this.image);
}

List<Engineering1> engineering1= engineering1Data
    .map((item) => Engineering1(item['image'] as String))
    .toList();

var engineering1Data = [
  {
    'image': "assets/images/Applied and Computational Engineering.jpg"
  },
   {
    'image': "assets/images/Advanced Stress and Stability.jpg"
  },
   {
    'image': "assets/images/Boundary Methods.jpg"
  },
   
];

class Engineering2 {
  final String image;

  Engineering2(this.image);
}

List<Engineering2> engineering2= engineering2Data
    .map((item) => Engineering2(item['image'] as String))
    .toList();

var engineering2Data = [
  {
    'image': "assets/images/Engineering Mathematics.jpg"
  },
   {
    'image': "assets/images/Mechanical Modelling and Computational Issues in Civil Engineering.jpg"
  },
   {
    'image': "assets/images/Mechanics of Composite Materials.jpg"
  },
   
];

class Science1 {
  final String image;

  Science1(this.image);
}

List<Science1> science1= science1Data
    .map((item) => Science1(item['image'] as String))
    .toList();

var science1Data = [
  {
    'image': "assets/images/Data Structures and Applications.jpg"
  },
   {
    'image': "assets/images/Encyclopedia of Human Nutrition.jpg"
  },
   {
    'image': "assets/images/Modern Analytic Chemistry.jpg"
  },
   
];

class Science2 {
  final String image;

  Science2(this.image);
}

List<Science2> science2= science2Data
    .map((item) => Science2(item['image'] as String))
    .toList();

var science2Data = [
  {
    'image': "assets/images/Network Analysis.jpg"
  },
   {
    'image': "assets/images/physics in biology and medicine.jpg"
  },
   {
    'image': "assets/images/The Physical Basis of Chemistry.jpg"
  },
   
];

class Business1 {
  final String image;

  Business1(this.image);
}

List<Business1> business1= business1Data
    .map((item) => Business1(item['image'] as String))
    .toList();

var business1Data = [
  {
    'image': "assets/images/Accounting Tools for Business Decision Making.jpg"
  },
   {
    'image': "assets/images/Introduction to Financial Accounting.jpg"
  },
   {
    'image': "assets/images/Inventory Accounting- A Comprehensive Guide.jpg"
  },
  
];

class Business2 {
  final String image;

  Business2(this.image);
}

List<Business2> business2= business2Data
    .map((item) => Business2(item['image'] as String))
    .toList();

var business2Data = [
  {
    'image': "assets/images/Schaum's Guideline of Managerial Accounting.jpg"
  },
   {
    'image': "assets/images/Statistics for Economic and Business Studies.jpg"
  },
   {
    'image': "assets/images/The Ethics of Accounting and Finance.jpg"
  },
   
];
