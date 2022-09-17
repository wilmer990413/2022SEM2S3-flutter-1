import 'package:http/http.dart' as http;
import 'package:newnoticias/models/articulo.model.dart';

class ArticuloProvider {
  Future<List<ArticuloModel>> obtenerArticulos() async {
    // var fechaActual = new DateTime.now();
    // String fechaEnvio = fechaActual.toString().substring(0, 10);
    List<ArticuloModel> articulos = [];
    var client = http.Client();
    try {
      Map<String, String> parametros = {
        'q': 'tesla',
        'from': '2022-08-17',
        'sortBy': 'publishedAt',
        'apiKey': '31110224f958464c8ee092762eec6a62'
      };
      var url = Uri.https('https://newsapi.org', 'v2/everything', parametros);
      var response = await client.get(url);
      return articulos;
    } finally {
      client.close();
    }
  }
}
