import 'package:flutter/material.dart';

final class FilterItem extends StatefulWidget {
  const FilterItem({
    super.key,
    required this.initialValue,
    required this.titleText,
    required this.subtitleText,
    required this.onFilterChanged,
  });

  final bool initialValue;
  final String titleText;
  final String subtitleText;
  final Function(bool) onFilterChanged;

  @override
  State<FilterItem> createState() {
    return _FilterItemState();
  }
}

final class _FilterItemState extends State<FilterItem> {
  var _isFilterSet = false;

  @override
  void initState() {
    super.initState();
    _isFilterSet = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: _isFilterSet,
      onChanged: (isChecked) {
        setState(() {
          _isFilterSet = isChecked;
          widget.onFilterChanged(isChecked);
        });
      },
      title: Text(
        widget.titleText, // 'Gluten-free'
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
      ),
      subtitle: Text(
        widget.subtitleText, // 'Only include gluten-free meals.'
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
    );
  }
}
