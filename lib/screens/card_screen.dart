import 'package:componentes_application/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          const CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          const CustomCardType2(
            imageUrl:
                'https://quo.eldiario.es/wp-content/uploads/2019/10/7-impactantes-imagenes-de-animales-salvajes-en-libertad.jpg',
            mensajeImg: "img 1",
          ),
          SizedBox(
            height: 10,
          ),
          const CustomCardType2(
            imageUrl:
                'https://www.tooltyp.com/wp-content/uploads/2014/10/1900x920-8-beneficios-de-usar-imagenes-en-nuestros-sitios-web.jpg',
            mensajeImg: "img 2",
          ),
          SizedBox(
            height: 10,
          ),
          const CustomCardType2(
            imageUrl:
                'https://cloudfront-us-east-1.images.arcpublishing.com/semana/EF4IV7JOR5EZTMJUWNMQKFUDNY.JPG',
            //mensajeImg: "img 3",
          ),
          SizedBox(
            height: 10,
          ),
          const CustomCardType2(
            imageUrl:
                'https://s1.1zoom.me/big3/809/Sea_Sky_Clouds_Heart_Horizon_512808_5000x5000.jpg',
            mensajeImg: "img 4",
          ),
        ],
      ),
    );
  }
}
