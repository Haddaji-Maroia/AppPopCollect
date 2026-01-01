class SeriesCharacter {
  final String name;
  final String image;
  final bool owned;

  final double? pricePaid;

  SeriesCharacter({
    required this.name,
    required this.image,
    required this.owned,
    this.pricePaid,
  });
}