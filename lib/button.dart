import 'package:flutter/cupertino.dart';
import 'package:doc_widget/doc_widget.dart';

/// ```dart
/// final button = Button(
///  'Button',
///  onPressed: () => print('doc_widget'),
/// );
/// ```
@docWidget
class Button extends StatelessWidget {
  Button(
    this.text, {
    required this.onPressed,
    this.color = const Color(0xff007aff),
  });

  final String text;
  final void Function() onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: color,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
