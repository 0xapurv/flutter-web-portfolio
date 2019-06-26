final List<Project> projects = [
  Project(
      title: 'Toptaxi',
      description:
          'Toptaxi is a third party transportation service, which is intended to provide cars to its customers through a smart application whenever they request. The use of this application is free',
      tags: [
        'Java',
        'Php',
        'Html',
        'JavaScript',
        'Laravel',
        'Firebase',
        'One Signal',
      ],
      images: [
        'images/toptaxi/img1.png',
        'images/toptaxi/img2.png',
        'images/toptaxi/img3.png',
        'images/toptaxi/img4.png',
        'images/toptaxi/img5.png',
      ],
      link: 'https://play.google.com/store/apps/details?id=toptaxi.dz'),
  Project(
      title: 'Omran',
      description:
          'Developing a strategic plan that can lead the Muslim Ummah towards global competitiveness and can direct the efforts of qualified and skilled youth towards optimal utilization of planning and institutional tools to contribute to the renaissance of their communities and homeland countries.',
      tags: [
        'Java',
        'Dart',
        'Php',
        'Flutter',
        'One Signal',
      ],
      images: [
        'images/omran/img1.png',
        'images/omran/img2.png',
        'images/omran/img3.png',
        'images/omran/img4.png',
      ],
      link: 'https://play.google.com/store/apps/details?id=org.omran.android'),
  Project(
      title: 'Nataloe',
      description:
          'nataloe is an Algerian-Spanish company specializing in the production of semi-pharmaceutical preparations for the daily care of the skin based on the extracts of aloefera, snail and essential oils',
      tags: [
        'Java',
        'Php',
        'Laravel',
        'One Signal',
      ],
      images: [
        'images/nataloe/img1.png',
        'images/nataloe/img2.png',
        'images/nataloe/img3.png',
        'images/nataloe/img4.png',
        'images/nataloe/img5.png',
        'images/nataloe/img6.png',
      ],
      link: 'https://play.google.com/store/apps/details?id=com.nataloe'),
];

class Project {
  final String title;
  final String description;
  final List<String> tags;
  final List<String> images;
  final String link;

  Project({this.title, this.description, this.tags, this.images, this.link});
}
