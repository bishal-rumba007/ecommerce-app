import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/feature/filter/presentation/bloc/filter_bloc.dart';
import 'package:ecommerce_app/src/feature/filter/domain/entities/attribute.dart';

class AttributeValueBuilder extends StatefulWidget {
  final Attribute attribute;

  const AttributeValueBuilder({super.key, required this.attribute});

  @override
  State<AttributeValueBuilder> createState() => _AttributeValueBuilderState();
}

class _AttributeValueBuilderState extends State<AttributeValueBuilder> {
  RangeValues _currentRangeValues = RangeValues(200, 9500);
  Timer? _debounce;

  void _onRangeChanged(RangeValues values) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 200), () {
      context.read<FilterBloc>().add(
            FilterEvent.updateSelectedFilters(
              widget.attribute.attributeName,
              "${values.start.round()}-${values.end.round()}",
              true,
            ),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(
      builder: (context, filterState) {
        if (widget.attribute.attributeName == "Price") {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (filterState.selectedFilters[widget.attribute.attributeName] !=
                null) {
              final selectedPrice = filterState
                  .selectedFilters[widget.attribute.attributeName] as String;
              final priceRange = selectedPrice.split("-");
              setState(() {
                _currentRangeValues = RangeValues(
                  double.parse(priceRange.first),
                  double.parse(priceRange.last),
                );
              });
            }
          });
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price Range",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),
              RangeSlider(
                labels: RangeLabels(
                  '\$${_currentRangeValues.start.round()}',
                  '\$${_currentRangeValues.end.round()}',
                ),
                min: double.parse(widget.attribute.values.first),
                max: double.parse(widget.attribute.values.last),
                values: _currentRangeValues,
                onChanged: (value) {
                  setState(() {
                    _currentRangeValues = value;
                  });
                  _onRangeChanged(value);
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.attribute.values.first,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    widget.attribute.values.last,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          );
        } else {
          return SingleChildScrollView(
            child: Column(
              children: widget.attribute.values.map(
                (e) {
                  return CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      e,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    selectedTileColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                    selected: filterState
                        .selectedFilters[widget.attribute.attributeName] ==
                        e,
                    value: filterState
                            .selectedFilters[widget.attribute.attributeName] ==
                        e,
                    onChanged: (bool? value) {
                      context.read<FilterBloc>().add(
                            FilterEvent.updateSelectedFilters(
                              widget.attribute.attributeName,
                              e,
                              value ?? false,
                            ),
                          );
                    },
                  );
                },
              ).toList(),
            ),
          );
        }
      },
    );
  }
}
