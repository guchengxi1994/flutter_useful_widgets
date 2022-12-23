import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_useful_widgets/extensions/extensions.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

class UsefulDateRangePicker extends StatefulWidget {
  const UsefulDateRangePicker(
      {Key? key,
      this.calendarHeight = 300,
      this.calendarWidth = 350,
      this.firstDate,
      this.lastDate,
      this.locale = "zh"})
      : super(key: key);
  final double calendarWidth;
  final double calendarHeight;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final String locale;

  @override
  State<UsefulDateRangePicker> createState() => UsefulDateRangePickerState();
}

class UsefulDateRangePickerState extends State<UsefulDateRangePicker> {
  late DateTime firstDate = widget.firstDate ?? DateTime.now();
  late DateTime lastDate = widget.lastDate ?? DateTime.now();

  @override
  Widget build(BuildContext context) {
    return JustTheTooltip(
        offset: -15,
        tailBuilder: (point1, point2, point3) {
          return Path()
            ..moveTo(point1.dx, point1.dy)
            ..lineTo(point3.dx, point3.dy)
            ..close();
        },
        isModal: true,
        content: SizedBox(
          width: widget.calendarWidth,
          height: widget.calendarHeight,
          child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
              calendarType: CalendarDatePicker2Type.range,
            ),
            onValueChanged: (value) {
              // print(value.length);
              if (value.length == 2) {
                if (value[0]!.isBefore(value[1]!)) {
                  setState(() {
                    firstDate = value[0]!;
                    lastDate = value[1]!;
                  });
                } else {
                  setState(() {
                    firstDate = value[1]!;
                    lastDate = value[2]!;
                  });
                }
              }
            },
            initialValue: [firstDate],
          ),
        ),
        child: SizedBox(
          width: 400,
          height: 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _dateWrapper(firstDate.auto(locale: widget.locale)),
              widget.locale == "zh" ? const Text("至") : const Text("To"),
              _dateWrapper(firstDate.auto(locale: widget.locale))
            ],
          ),
        ));
  }

  Widget _dateWrapper(String date) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: 180,
      height: 38,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(19)),
          border: Border.all(color: const Color.fromARGB(255, 232, 232, 232))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [const Icon(Icons.calendar_month_outlined), Text(date)],
      ),
    );
  }
}
