class GetVersionsResponse {
  late Message message;

  GetVersionsResponse({required this.message});

  GetVersionsResponse.fromJson(Map<String, dynamic> json) {
    message = Message.fromJson(json['message']);
  }
}

class Message {
  Map<String, FrappeApp> frappeApps = {};

  Message.fromJson(Map<String, dynamic> json) {
    json.entries.forEach(
      (entry) {
        var k = entry.key;
        var v = entry.value;
        frappeApps[k] = FrappeApp.fromJson(v);
      },
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    frappeApps.forEach((key, value) {
      data[key] = value.toJson();
    });
    return data;
  }
}

class FrappeApp {
  String? title;
  String? branch;
  String? version;

  FrappeApp(
      {this.title,
      this.branch,
      this.version});

  FrappeApp.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    branch = json['branch'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['branch'] = this.branch;
    data['version'] = this.version;
    return data;
  }
}
