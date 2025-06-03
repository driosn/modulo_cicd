class Document {
  const Document({
    required this.title,
    required this.subtitle,
    required this.sections,
  });

  final String title;
  final String subtitle;
  final List<Section> sections;
}

class Section {
  const Section({
    required this.title,
    required this.order,
    required this.elements,
  });

  final String title;
  final int order;
  final List<Element> elements;
}

class Element {
  const Element({
    required this.type,
    required this.bold,
    required this.link,
    required this.box,
    required this.center,
    required this.children,
    required this.content,
    required this.showPrefixSymbol,
    required this.fullUrl,
  });

  final String type;
  final bool bold;
  final bool link;
  final bool box;
  final bool center;
  final List<Element> children;
  final String content;
  final bool showPrefixSymbol;
  final String fullUrl;
}
