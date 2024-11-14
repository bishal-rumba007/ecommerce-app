import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/feature/filter/domain/entities/attribute.dart';
import 'package:ecommerce_app/src/feature/filter/presentation/bloc/filter_bloc.dart';
import 'package:ecommerce_app/src/feature/filter/presentation/cubit/attribute_cubit.dart';
import 'package:ecommerce_app/src/feature/filter/presentation/widgets/attribute_list_view.dart';
import 'package:ecommerce_app/src/feature/filter/presentation/widgets/attribute_value_builder.dart';
import 'package:ecommerce_app/src/feature/filter/presentation/widgets/filter_button.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen(
      {super.key, required this.subCategory, required this.selectedCountry});
  final String subCategory;
  final String? selectedCountry;

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text("Filter"),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: () {

              /// ClearFilters event is added to the FilterBloc to clear the filters
              /// selected by the user and close the filter screen
              context.read<FilterBloc>().add(ClearFilters());
              context.pop();
            },
            child: Text(
              "Clear Filters",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 12,
                  ),
            ),
          ),
        ],
      ),

      /// BlocBuilder to build UI based on the state of the FilterBloc
      /// FilterBloc is responsible for managing the state of the filters
      /// it fetches the filters from the server and updates the state
      /// based on the response from the server or any error that occurs
      body: BlocBuilder<FilterBloc, FilterState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          switch (state.status) {
            case FilterStatus.initial:
            case FilterStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case FilterStatus.success:
              final attributes = state.attributes;
              if (attributes.isNotEmpty) {
                context
                    .read<AttributeCubit>()
                    .selectAttribute(attributes.first);
              }
              if (attributes.isEmpty) {
                return const Center(
                  child: Text("No Filters found"),
                );
              }
              return Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 14),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 1,
                          child: AttributeListView(
                            attributes: [
                              ...attributes,
                              Attribute(            /// Adding Price attribute to the list of attributes to be displayed in the UI
                                id: "1",
                                attributeName: "Price",
                                values: const ["200", "20000"],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        Flexible(
                          flex: 2,
                          child: BlocSelector<AttributeCubit, AttributeState,
                              Attribute?>(
                            selector: (state) {
                              return state.maybeWhen(
                                attributeSelected: (selectedAttribute) =>
                                    selectedAttribute,
                                orElse: () => null,
                              );
                            },
                            builder: (context, selectedAttribute) {
                              if (selectedAttribute == null) {
                                return const Center(
                                    child: Text('No Attribute Selected'));
                              }
                              return AttributeValueBuilder(
                                attribute: selectedAttribute,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// FilterButton is a custom widget that displays a button
                  /// to apply the filters selected by the user and close the filter screen
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: FilterButton(
                      onPressed: () {
                        context.read<FilterBloc>().add(FilterApplied());
                        context.pop();
                      },
                    ),
                  ),
                ],
              );
            case FilterStatus.failure:
              return Center(
                child: Text(state.message),
              );
          }
        },
      ),
    );
  }
}
