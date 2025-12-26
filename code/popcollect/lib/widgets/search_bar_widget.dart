import 'package:flutter/material.dart';
import '../../constants/sizes.dart';



class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchBar(
      leading: Icon(Icons.search, color: Colors.grey),
      hintText: 'Recherche d‘un popmart',
      hintStyle:  WidgetStatePropertyAll<TextStyle>(
        TextStyle(
          fontSize: 17,
          color: Colors.grey,
        ),
      ),
      backgroundColor: WidgetStatePropertyAll<Color?>(Colors.white),
      elevation: WidgetStatePropertyAll<double?>(kSearchBarElevation),

      shape: WidgetStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black,
            width: kSearchBarBorderWidth,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(kSearchBarRadius),
          ),
        ),
      ),
    );
  }
}
