import 'dart:convert';

decodeApiResponse(String response) {
  var responseModel = jsonDecode(response);
  return responseModel["value"];
}
