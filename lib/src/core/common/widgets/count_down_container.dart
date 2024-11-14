import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class CountDownContainer extends StatefulWidget {
  const CountDownContainer(
      {super.key,
      required this.endDateString,
      required this.titleColor,
      required this.backGroundColor});
  final String endDateString;
  final Color titleColor;
  final List<Color> backGroundColor;

  @override
  State<CountDownContainer> createState() => _CountDownContainerState();
}

class _CountDownContainerState extends State<CountDownContainer> {
  late DateTime _endDate;
  Duration _timeLeft = Duration.zero;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _endDate = DateTime.parse(widget.endDateString);
    _updateTimeLeft();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) return;
      setState(() {
        _updateTimeLeft();
      });
    });
  }

  void _updateTimeLeft() {
    _timeLeft = _endDate.difference(DateTime.now());
    if (_timeLeft.isNegative) {
      _timeLeft = Duration.zero;
      _timer?.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Ends in",
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: widget.titleColor,
              ),
        ),
        const SizedBox(
          width: 8,
        ),
        Row(
          children: [
            buildTimeContainer(context, formatTime(_timeLeft)[0]),
            const SizedBox(
              width: 5,
            ),
            Text(
              ":",
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: AppColor.white,
                  ),
            ),
            const SizedBox(
              width: 5,
            ),
            buildTimeContainer(context, formatTime(_timeLeft)[1]),
            const SizedBox(
              width: 5,
            ),
            Text(
              ":",
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: AppColor.white,
                  ),
            ),
            const SizedBox(
              width: 5,
            ),
            buildTimeContainer(context, formatTime(_timeLeft)[2]),
          ],
        ),
      ],
    );
  }

  List<String> formatTime(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);
    return [
      hours.toString().padLeft(2, '0'),
      minutes.toString().padLeft(2, '0'),
      seconds.toString().padLeft(2, '0')
    ];
  }

  Container buildTimeContainer(BuildContext context, String time) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.backGroundColor,
          stops: const [0.0, 1.0],
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          time,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontSize: 10,
                color: AppColor.white,
              ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
