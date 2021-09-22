import 'dart:convert';

main(List<String> args) {
  String json = '[{\"addressType\":\"CONTACT_ADDR\",\"address\":\"111\",\"subDistrict\":\"กก\",\"district\":\"กก\",\"province\":\"กรุงเทพมหานคร\",\"zipCode\":\"12345\"},{\"addressType\":\"PRESENT_ADDR\",\"address\":\"111\",\"subDistrict\":\"กก\",\"district\":\"กก\",\"province\":\"กรุงเทพมหานคร\",\"zipCode\":\"12345\"},{\"addressType\":\"REGISTER_ADDR\",\"address\":\"111\",\"subDistrict\":\"กก\",\"district\":\"กก\",\"province\":\"กรุงเทพมหานคร\",\"zipCode\":\"12345\"}]';
  List<dynamic> mapJson = jsonDecode(json);

  dynamic xx = mapJson.where((elm) => elm['addressType'] == 'REGISTER_ADDR').first;

  print(xx);
}
