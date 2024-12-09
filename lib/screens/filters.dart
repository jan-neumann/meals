import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/filters_provider.dart';
import 'package:meals/widgets/filter_item.dart';
// import 'package:meals/screens/tabs.dart';
// import 'package:meals/widgets/main_drawer.dart';


final class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
          children: [
            FilterItem(
              initialValue: activeFilters[Filter.glutenFree]!,
              titleText: 'Gluten-free',
              subtitleText: 'Only include gluten-free meals.',
              onFilterChanged: (isChecked) {
                ref.read(filtersProvider.notifier).setFilter(Filter.glutenFree, isChecked);
              },
            ),
            FilterItem(
              initialValue: activeFilters[Filter.lactoseFree]!,
              titleText: 'Lactose-free',
              subtitleText: 'Only include lactose-free meals.',
              onFilterChanged: (isChecked) {
                ref.read(filtersProvider.notifier).setFilter(Filter.lactoseFree, isChecked);
              },
            ),
            FilterItem(
              initialValue: activeFilters[Filter.vegetarian]!,
              titleText: 'Vegetarian',
              subtitleText: 'Only include vegetarian meals.',
              onFilterChanged: (isChecked) {
                ref.read(filtersProvider.notifier).setFilter(Filter.vegetarian, isChecked);
              },
            ),
            FilterItem(
              initialValue: activeFilters[Filter.vegan]!,
              titleText: 'Vegan',
              subtitleText: 'Only include vegan meals.',
              onFilterChanged: (isChecked) {
                ref.read(filtersProvider.notifier).setFilter(Filter.vegan, isChecked);
              },
            ),
          ],
        ),
    );
  }
}
