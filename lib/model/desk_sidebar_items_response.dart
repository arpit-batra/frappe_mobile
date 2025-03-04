class DeskSidebarItemsResponse {
  late List<DeskMessage> message;

  DeskSidebarItemsResponse({required this.message});

  DeskSidebarItemsResponse.fromJson(Map<dynamic, dynamic> json) {
    if (json['message'] != null) {
      message = [];
      json['message'].forEach((v) {
        message.add(new DeskMessage.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message.map((v) => v.toJson()).toList();
    return data;
  }
}

class DeskMessage {
  late String name;
  late String? category;
  late dynamic module;
  late String label;
  late String? content;

  DeskMessage({
    required this.name,
    this.category,
    this.content,
    this.module,
    required this.label,
  });

  DeskMessage.fromJson(Map<dynamic, dynamic> json) {
    name = json['name'];
    category = json['category'];
    module = json['module'];
    label = json['label'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['category'] = this.category;
    data['module'] = this.module;
    data['label'] = this.label;
    data['content'] = this.content;
    return data;
  }
}
