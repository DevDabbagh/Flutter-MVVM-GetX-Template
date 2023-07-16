import 'dart:collection';
import 'dart:convert';


class BaseResponse<T> {
  BaseResponse(
      {this.status,
      this.message,
      this.errors,
      this.data,
      this.msg,
      this.items});

  bool? status;

  bool isNestedEmpPhone = true;

  String? message;
  List? errors;
  T? data;
  T? msg;
  T? items;

  // List<TCurrentCouncil>? tCurrentCouncils;

  // List<TCouncilMembers>? tCouncilMembers;

  // String baseResponseToJson(BaseResponse data) => json.encode(data.toJson());


  checkAllList(dynamic json) {
    T? data;

    for (String keyName in listNames) {
      if (json.keys.contains(keyName)) {
        print('object hear');
        data = genericCheck(json[keyName]);
        break;
      }
    }

    return data;
  }

  var listNames = [
    "data",
    "items",
  ];

  T? genericCheck(json
      ) {}
}
