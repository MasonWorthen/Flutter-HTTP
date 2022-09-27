import 'package:http/http.dart' as http;
import 'dart:convert';

class HTTP{
  var httpOptions = {
    'headers': "'Content-Type':'application/json'",
  };

  put(baseURL, path, [query]) async {
    var url = Uri.http(baseURL, path);
    await http.put(url, headers: httpOptions).then((response) => {});
  }

  get(baseURL, path, [query]) async {
    var url = Uri.http(baseURL, path, query);
    var response = await http.get(url, headers: httpOptions);
    return json.decode(response.body);
  }

  post(baseURL, path, [query]) async {
    var url = Uri.http(baseURL, path);
    await http.post(url, headers: httpOptions).then((response) => {});
  }

  delete(baseURL, path, [query]) async {
    var url = Uri.http(baseURL, path, query);
    await http.delete(url, headers: httpOptions).then((response) => {});
  }
}
