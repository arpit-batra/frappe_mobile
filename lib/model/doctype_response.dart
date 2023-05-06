class DoctypeResponse {
  late List<DoctypeDoc> docs;
  late String userSettings;

  DoctypeResponse({required this.docs, required this.userSettings});

  DoctypeResponse.fromJson(Map<dynamic, dynamic> json) {
    if (json['docs'] != null) {
      docs = [];
      json['docs'].forEach((v) {
        docs.add(new DoctypeDoc.fromJson(Map<dynamic, dynamic>.from(v)));
      });
    }
    userSettings = json['user_settings'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['docs'] = this.docs.map((v) => v.toJson()).toList();
    data['user_settings'] = this.userSettings;
    return data;
  }
}

class DoctypeDoc {
  late String name;
  late int issingle;
  late String module;
  late String? titleField;
  late String? subjectField;
  late dynamic senderField;
  late String? sortField;
  late String? sortOrder;
  late int? isSubmittable;
  late List<DoctypeField> fields;
  late Map? fieldsMap;

  DoctypeDoc(
      {
      required this.name,
      required this.issingle,
      required this.module,
      this.titleField,
      this.subjectField,
      this.senderField,
      this.sortField,
      this.sortOrder,
      this.isSubmittable,
      required this.fields,
      this.fieldsMap});

  DoctypeDoc.fromJson(Map<dynamic, dynamic> json) {
    name = json['name'];
    issingle = json['issingle'];
    module = json['module'];
    titleField = json['title_field'];
    subjectField = json['subject_field'];
    senderField = json['sender_field'];
    sortField = json['sort_field'];
    sortOrder = json['sort_order'];
    isSubmittable = json['is_submittable'];
    fieldsMap = json['field_map'];
    if (json['fields'] != null) {
      fields = [];
      json['fields'].forEach((v) {
        fields.add(new DoctypeField.fromJson(Map<dynamic, dynamic>.from(v)));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['issingle'] = this.issingle;
    data['module'] = this.module;
    data['title_field'] = this.titleField;
    data['title_field'] = this.senderField;
    data['title_field'] = this.subjectField;
    data['sort_field'] = this.sortField;
    data['sort_order'] = this.sortOrder;
    data['is_submittable'] = this.isSubmittable;
    data['fields_map'] = this.fieldsMap;
    data['fields'] = this.fields.map((v) => v.toJson()).toList();
    return data;
  }
}

class DoctypeField {
  late String? parent;
  late String fieldname;
  late String? dependsOn;
  late String? mandatoryDependsOn;
  late String? fetchFrom;
  late String? label;
  late String? fieldtype;
  late dynamic options;
  late int? hidden;
  late int? setOnlyOnce;
  late int? reqd;
  late int? bold;
  late int? collapsible;
  late int? inListView;
  late int? inStandardFilter;
  late int? readOnly;
  late dynamic defaultValue;
  late int pVisible = 1;

  DoctypeField({
    this.parent,
    required this.fieldname,
    required this.label,
    this.dependsOn,
    this.mandatoryDependsOn,
    this.fetchFrom,
    this.fieldtype,
    this.options,
    this.hidden,
    this.setOnlyOnce,
    this.reqd,
    this.bold,
    this.collapsible,
    this.inListView,
    this.inStandardFilter,
    this.readOnly,
    this.defaultValue,
    this.pVisible = 1,
  });

  DoctypeField.fromJson(Map<dynamic, dynamic> json) {
    parent = json['parent'];
    fieldname = json['fieldname'];
    dependsOn = json['depends_on'];
    mandatoryDependsOn = json['mandatory_depends_on'];
    fetchFrom = json['fetch_from'];
    label = json['label'];
    fieldtype = json['fieldtype'];
    options = json['options'];
    hidden = json['hidden'];
    setOnlyOnce = json['set_only_once'];
    reqd = json['reqd'];
    bold = json['bold'];
    collapsible = json['collapsible'];
    inListView = json['in_list_view'];
    inStandardFilter = json['in_standard_filter'];
    readOnly = json['read_only'];
    defaultValue = json['default'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['parent'] = this.parent;
    data['fieldname'] = this.fieldname;
    data['depends_on'] = this.dependsOn;
    data['mandatory_depends_on'] = this.mandatoryDependsOn;
    data['fetch_from'] = this.fetchFrom;
    data['label'] = this.label;
    data['fieldtype'] = this.fieldtype;
    data['options'] = this.options;
    data['hidden'] = this.hidden;
    data['set_only_once'] = this.setOnlyOnce;
    data['reqd'] = this.reqd;
    data['bold'] = this.bold;
    data['collapsible'] = this.collapsible;
    data['in_list_view'] = this.inListView;
    data['in_standard_filter'] = this.inStandardFilter;
    data['read_only'] = this.readOnly;
    data['default'] = this.defaultValue;
    return data;
  }
}
