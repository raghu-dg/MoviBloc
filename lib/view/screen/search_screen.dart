import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/view/state_manager/search_bloc.dart';
import 'package:movi/view/state_manager/search_state.dart';
import 'package:movi/view/state_manager/search_view_events.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: _searchView(context),
    );
  }

  Widget _searchView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_buildSearchBar(context), _buildResultContainer(context)],
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: TextField(
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            hintText: 'Search Movie, Show or Person',
          ),
          onChanged: (query) {
            if (query.isNotEmpty) {
              context.read<SearchBloc>().add(SearchMovieEvent(query));
            }
          },
        ));
  }

  Widget _buildResultContainer(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
      if (state is SearchLoading) {
        return const CircularProgressIndicator();
      } else if (state is SearchContent) {
        return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.searchResult.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.searchResult[index].title),
              );
            });
      } else if (state is SearchError) {
        return Center(
          child: Text(state.message),
        );
      } else {
        return const Center(
          child: Text('Hi there, Search something!'),
        );
      }
    });
  }
}
