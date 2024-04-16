import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CalendarRangeWidget extends StatelessWidget {
  final DateTime start;
  final DateTime end;
  final ValueChanged<DateRangePickerSelectionChangedArgs> onChanged;
  const CalendarRangeWidget({
    super.key,
    required this.start,
    required this.end,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 400,
      child: SfDateRangePicker(
        headerStyle: DateRangePickerHeaderStyle(
          textStyle: context.textTheme.bodyLarge,
        ),
        yearCellStyle: DateRangePickerYearCellStyle(
          textStyle: context.textTheme.headlineMedium?.copyWith(fontSize: 22),
        ),
        onSelectionChanged: onChanged,

        selectionMode: DateRangePickerSelectionMode.range,
        maxDate: DateTime.now(), // Set maxDate to today's date
        initialSelectedRange: PickerDateRange(
          start,
          end,
        ),
      ),
    );
  }
}
