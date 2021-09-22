import 'dart:convert';

void main() {
  String arrayText = '{"tags": ["dart", "flutter", "json"]}';
  // String arrayText = '{"tags": []}';

  Map valueMap = json.decode(arrayText);
  print("valueMap: ");
  print(valueMap.runtimeType);
  print(valueMap);
  print((valueMap['tags'] as List).runtimeType);

  // var tagsJson = jsonDecode(arrayText)['tags'];
  // print("tagsJson: ");
  // print(tagsJson);
  // print(List.from(tagsJson));
  // List<String>? tags = tagsJson != null ? List.from(tagsJson) : null;

  // print(tags);
}
