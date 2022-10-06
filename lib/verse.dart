import 'package:chinese_colors/poetry_api.dart';
import 'package:chinese_colors/vertical_text.dart';
import 'package:flutter/material.dart';

class Verse extends StatefulWidget {
  final String topic;
  final TextStyle style;

  const Verse({super.key, required this.topic, required this.style});

  @override
  State<Verse> createState() => _VerseState();
}

class _VerseState extends State<Verse> with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 1), vsync: this);

  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.easeIn);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getVerseForTopic(widget.topic),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            _controller.forward();
            return FadeTransition(
                opacity: _animation,
                child: VerticalText(
                  snapshot.data!.content,
                  style: widget.style,
                ));
          } else {
            return const VerticalText('　');
          }
        }));
  }
}
