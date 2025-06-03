abstract class FaqAnswerItem {
  const FaqAnswerItem({
    this.type = '',
    this.value = '',
    this.values = const <FaqAnswerItem>[],
  });

  final String type;
  final String value;
  final List<FaqAnswerItem> values;
}
