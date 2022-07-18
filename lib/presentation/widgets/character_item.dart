import 'package:flutter/material.dart';

import '../../constants/my_colors.dart';
import '../../data/model/characters.dart';

class CharaterItem extends StatelessWidget {
  final Character character;

  const CharaterItem({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
          color: MyColors.myWhite, borderRadius: BorderRadius.circular(8)),
      child: GridTile(
        child: Container(
          child: character.image.isNotEmpty
              ? FadeInImage.assetNetwork(
                  width: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: "assets/images/loading.gif",
                  image: character.image)
              : Image.asset('assets/images/placeholder.png'),
          color: MyColors.myGrey,
        ),
        footer: Container(
          alignment: Alignment.bottomCenter,
          width: double.infinity,
          color: Colors.black54,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text(
            "${character.name}",
            style: TextStyle(
                color: MyColors.myWhite,
                fontSize: 16,
                height: 1.3,
                fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
