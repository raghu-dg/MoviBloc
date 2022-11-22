import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/util/search_type.dart';
import '../state_manager/search_bloc.dart';
import '../state_manager/search_view_events.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<StatefulWidget> createState() {
    return SearchFilterState();
  }
}

class SearchFilterState extends State<SearchFilter> {
  String _selectedFilter = SearchType.movie.value;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List<Widget>.generate(SearchType.values.length, (index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ChoiceChip(
            label: Text(SearchType.values[index].value),
            selected: SearchType.values[index].value == _selectedFilter,
            onSelected: (bool selected) {
              setState(() {
                _selectedFilter = SearchType.values[index].value;
              });
              context
                  .read<SearchBloc>()
                  .add(UpdateSearchFilterEvent(_selectedFilter));
            }),
      );
    }).toList());
  }
}
