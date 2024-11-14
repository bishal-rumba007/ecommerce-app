import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/feature/search/presentation/cubit/search_history_cubit.dart';

class SearchHistoryWidget extends StatelessWidget {
  final Function(String) triggerSearchJobEvent;
  const SearchHistoryWidget({
    super.key,
    required this.triggerSearchJobEvent,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<SearchHistoryCubit, SearchHistoryState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            context.read<SearchHistoryCubit>().getSearchHistory();
            return const SizedBox.shrink();
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          loaded: (searchHistory){
            return searchHistory.isEmpty
              ? Center(
                  child: Text(
                   "No search history found",
                    style: theme.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Search History",
                            style: theme.textTheme.bodyMedium,
                          ),
                          InkWell(
                            onTap: () {
                              context
                                  .read<SearchHistoryCubit>()
                                  .clearSearchQueries();
                            },
                            borderRadius: BorderRadius.circular(4),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0, vertical: 2),
                              child: Text(
                                "Clear",
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: AppColor.red,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: searchHistory.reversed.toList().map((history) {
                          return InkWell(
                            onTap: () {
                              triggerSearchJobEvent(history);
                            },
                            borderRadius: BorderRadius.circular(4),
                            child: RawChip(
                              onPressed: () {
                                triggerSearchJobEvent(history);
                              },
                              label: Text(history),
                              labelStyle: theme.textTheme.labelMedium,
                              deleteIcon: Icon(
                                CupertinoIcons.clear_circled_solid,
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                                ),
                              side: BorderSide(
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                                width: 1,
                              ),
                              onDeleted: () {
                                context
                                    .read<SearchHistoryCubit>()
                                    .removeSearchQuery(history);
                              },
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                );
          },
          error: (message) {
            return Center(
              child: Text(
                message,
                style: theme.textTheme.bodyMedium,
              ),
            );
          },
        );
      },
    );
  }
}
