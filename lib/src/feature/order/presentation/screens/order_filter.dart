import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';

class OrderFilterScreen extends StatefulWidget {
  const OrderFilterScreen({super.key});

  @override
  State<OrderFilterScreen> createState() => _OrderFilterScreenState();
}

class _OrderFilterScreenState extends State<OrderFilterScreen> {
  final List<String> _orderType = [
    "Delivered",
    "On the way",
    "Canceled",
    "Returned"
  ];

  final List<String> _timeFilterList = [
    "Last 30 Days",
    "Last 6 months",
    "2022",
    "2021",
    "2020",
  ];

  int selectedOrderType = -1;
  int selectedTimeFilter = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Back")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Orders Type",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _orderType.length,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                  value: index == selectedOrderType,
                  onChanged: (value) {
                    setState(() {
                      selectedOrderType = index;
                    });
                  },
                  title: Text(
                    _orderType[index],
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  shape: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  checkboxShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    side: BorderSide(width: .8.w),
                  ),
                  visualDensity: VisualDensity.comfortable,
                );
              },
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Time filter",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _timeFilterList.length,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                  value: index == selectedTimeFilter,
                  onChanged: (value) {
                    setState(() {
                      selectedTimeFilter = index;
                    });
                  },
                  title: Text(
                    _timeFilterList[index],
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  shape: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  checkboxShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    side: BorderSide(width: .8.w),
                  ),
                  visualDensity: VisualDensity.comfortable,
                );
              },
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.h),
        color: Theme.of(context).colorScheme.surface,
        child: BuildButton(
          onPressed: () {
            Navigator.pop(context);
          },
          buttonWidget: const Text("Apply"),
        ),
      ),
    );
  }
}
