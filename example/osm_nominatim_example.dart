import 'package:osm_nominatim/osm_nominatim.dart';

Future main() async {
  final searchResult = await Nominatim.searchByName(
    query: 'bakery in berlin wedding',
    limit: 1,
    addressDetails: true,
    extraTags: true,
    nameDetails: true,
  );
  print(searchResult.single.displayName);
  print(searchResult.single.address);
  print(searchResult.single.extraTags);
  print(searchResult.single.nameDetails);

  print('');

  final reverseSearchResult = await Nominatim.reverseSearch(
    lat: '50',
    lon: '6',
    addressDetails: true,
    extraTags: true,
    nameDetails: true,
  );
  print(reverseSearchResult.displayName);
  print(reverseSearchResult.address);
  print(reverseSearchResult.extraTags);
  print(reverseSearchResult.nameDetails);
}
