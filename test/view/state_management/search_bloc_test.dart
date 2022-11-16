import 'package:flutter_test/flutter_test.dart';
import 'package:movi/view/state_manager/search_bloc.dart';
import 'package:movi/view/state_manager/search_state.dart';

import '../../util/test_helper.mocks.dart';

main() {
  late MockSearchMovieUseCase useCase;
  late SearchBloc searchBloc;

  setUp(() {
    useCase = MockSearchMovieUseCase();
    searchBloc = SearchBloc(useCase);
  });

  group('Search State', () {
    test(
      'initial state should be empty',
      () {
        expect(searchBloc.state, SearchEmptyState());
      },
    );
  });
}
