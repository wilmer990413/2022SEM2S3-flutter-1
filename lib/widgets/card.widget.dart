import 'package:flutter/material.dart';
import 'package:newnoticias/models/articulo.model.dart';

import '../pages/detalle.page.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, required this.articulo});

  ArticuloModel articulo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => DetallePage(articulo: articulo))));
        },
        child: Container(
            child: Column(
          children: [Text(articulo.author), Text(articulo.content)],
        )),
      ),
    );
  }
}
