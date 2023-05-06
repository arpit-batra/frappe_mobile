class NoticationResponse {
  late List<Message> message;

  NoticationResponse({required this.message});

  NoticationResponse.fromJson(Map<String, dynamic> json) {
    if (json['message'] != null) {
      message = [];
      json['message'].forEach((v) {
        message.add(new Message.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message.map((v) => v.toJson()).toList();
    return data;
  }
}

class Message {
  late String? creation;
  late String? fromUser;
  late String? subject;
  late String? documentName;
  late String? documentType;

  Message(
      {
      this.creation,
      this.fromUser,
      this.subject,
      this.documentName,
      this.documentType,
      });

  Message.fromJson(Map<String, dynamic> json) {
    creation = json['creation'];
    fromUser = json['from_user'];
    subject = json['subject'];
    documentName = json['document_name'];
    documentType = json['document_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['creation'] = this.creation;
    data['from_user'] = this.fromUser;
    data['subject'] = this.subject;
    data['document_name'] = this.documentName;
    data['document_type'] = this.documentType;
    return data;
  }
}
