import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? mensajeImg;
  const CustomCardType2({Key? key, required this.imageUrl, this.mensajeImg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder: AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 300)),
          if (mensajeImg != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(mensajeImg ?? '')),
          /*Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text("Cancel")),
                TextButton(onPressed: () {}, child: const Text("Ok"))
              ],
            ),
          )*/
        ],
      ),
    );
  }
}
