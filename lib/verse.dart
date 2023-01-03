import 'package:chinese_colors/poetry_api.dart';
import 'package:chinese_colors/vertical_text.dart';
import 'package:flutter/material.dart';

class VerseForTopicWidget extends StatefulWidget {
  final String topic;
  final TextStyle style;

  const VerseForTopicWidget(
      {super.key, required this.topic, required this.style});

  @override
  State<VerseForTopicWidget> createState() => _VerseForTopicWidgetState();
}

class _VerseForTopicWidgetState extends State<VerseForTopicWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Future<Verse> _futureVerse;

  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.easeIn);

  @override
  void initState() {
    super.initState();
    _futureVerse = getVerseForTopic(widget.topic);
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _futureVerse,
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
            return Container();
          }
        }));
  }
}
