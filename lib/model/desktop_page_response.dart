class DesktopPageResponse {
  late DesktopPageMessage message;

  DesktopPageResponse({required this.message});

  DesktopPageResponse.fromJson(Map<dynamic, dynamic> json) {
    message = DesktopPageMessage.fromJson(json['message']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message.toJson();
    return data;
  }
}

class DesktopPageMessage {
  late DesktopPageShortcuts shortcuts;
  late DesktopPageCards cards;

  DesktopPageMessage({
    required this.shortcuts,
    required this.cards,
  });

  DesktopPageMessage.fromJson(Map<dynamic, dynamic> json) {
    shortcuts = DesktopPageShortcuts.fromJson(json['shortcuts']);
    cards = DesktopPageCards.fromJson(json['cards']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shortcuts'] = this.shortcuts.toJson();
    data['cards'] = this.cards.toJson();
    return data;
  }
}

class DesktopPageShortcuts {
  String? label;
  late List<ShortcutItem> items;

  DesktopPageShortcuts({
    required this.label,
    required this.items,
  });

  DesktopPageShortcuts.fromJson(Map<dynamic, dynamic> json) {
    label = json['label'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items.add(new ShortcutItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['items'] = this.items.map((v) => v.toJson()).toList();
    return data;
  }
}

class DesktopPageCards {
  String? label;
  late List<CardItem> items;

  DesktopPageCards({
    required this.label,
    required this.items,
  });

  DesktopPageCards.fromJson(Map<dynamic, dynamic> json) {
    label = json['label'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items.add(CardItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['items'] = this.items.map((v) => v.toJson()).toList();
    return data;
  }
}

class ShortcutItem {
  String? type;
  late String linkTo;
  late String label;
  String? statsFilter;

  ShortcutItem({
    this.type,
    required this.linkTo,
    required this.label,
    this.statsFilter,
  });

  ShortcutItem.fromJson(Map<dynamic, dynamic> json) {
    type = json['type'];
    linkTo = json['link_to'];
    label = json['label'];
    statsFilter = json['stats_filter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['link_to'] = this.linkTo;
    data['label'] = this.label;
    data['stats_filter'] = this.statsFilter;
    return data;
  }
}

class CardItem {
  late String label;
  late dynamic hidden;
  late List<CardItemLink> links;

  CardItem({
    required this.label,
    this.hidden,
    required this.links,
  });

  CardItem.fromJson(Map<dynamic, dynamic> json) {
    label = json['label'];
    hidden = json['hidden'];
    if (json['links'] != null) {
      links = [];
      json['links'].forEach((v) {
        links.add(CardItemLink.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['hidden'] = this.hidden;
    data['links'] = this.links.map((v) => v.toJson()).toList();
    return data;
  }
}

class CardItemLink {
  late String label;
  String? name;
  String? type;
  String? linkTo;

  CardItemLink(
      {required this.label, required this.name, this.type, this.linkTo});

  CardItemLink.fromJson(Map<dynamic, dynamic> json) {
    label = json['label'];
    name = json['name'];
    type = json['type'];
    linkTo = json['link_to'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['name'] = this.name;
    data['type'] = this.type;
    data['link_to'] = this.linkTo;
    return data;
  }
}
