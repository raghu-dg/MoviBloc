// Mocks generated by Mockito 5.3.2 from annotations
// in movi/test/util/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;
import 'dart:convert' as _i14;
import 'dart:typed_data' as _i15;

import 'package:http/http.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:movi/data/datasource/tmdb_data_source.dart' as _i5;
import 'package:movi/data/model/movies_model.dart' as _i7;
import 'package:movi/data/model/persons_model.dart' as _i9;
import 'package:movi/data/model/shows_model.dart' as _i8;
import 'package:movi/domain/entities/failures.dart' as _i10;
import 'package:movi/domain/entities/search_result.dart' as _i11;
import 'package:movi/domain/repositories/tmdb_repository.dart' as _i3;
import 'package:movi/domain/usecases/search_movie_usecase.dart' as _i13;
import 'package:movi/util/search_type.dart' as _i12;
import 'package:multiple_result/multiple_result.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResult_0<E, S> extends _i1.SmartFake implements _i2.Result<E, S> {
  _FakeResult_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTmdbRepository_1 extends _i1.SmartFake
    implements _i3.TmdbRepository {
  _FakeTmdbRepository_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_2 extends _i1.SmartFake implements _i4.Response {
  _FakeResponse_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamedResponse_3 extends _i1.SmartFake
    implements _i4.StreamedResponse {
  _FakeStreamedResponse_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [TmdbDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTmdbDataSource extends _i1.Mock implements _i5.TmdbDataSource {
  MockTmdbDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<List<_i7.Movie>> searchMovie(String? query) => (super.noSuchMethod(
        Invocation.method(
          #searchMovie,
          [query],
        ),
        returnValue: _i6.Future<List<_i7.Movie>>.value(<_i7.Movie>[]),
      ) as _i6.Future<List<_i7.Movie>>);
  @override
  _i6.Future<List<_i8.Show>> searchShow(String? query) => (super.noSuchMethod(
        Invocation.method(
          #searchShow,
          [query],
        ),
        returnValue: _i6.Future<List<_i8.Show>>.value(<_i8.Show>[]),
      ) as _i6.Future<List<_i8.Show>>);
  @override
  _i6.Future<List<_i9.Person>> searchPerson(String? query) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchPerson,
          [query],
        ),
        returnValue: _i6.Future<List<_i9.Person>>.value(<_i9.Person>[]),
      ) as _i6.Future<List<_i9.Person>>);
}

/// A class which mocks [TmdbRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTmdbRepository extends _i1.Mock implements _i3.TmdbRepository {
  MockTmdbRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.Result<_i10.Failure, List<_i11.SearchResult>>> search(
    String? query,
    _i12.SearchType? type,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #search,
          [
            query,
            type,
          ],
        ),
        returnValue:
            _i6.Future<_i2.Result<_i10.Failure, List<_i11.SearchResult>>>.value(
                _FakeResult_0<_i10.Failure, List<_i11.SearchResult>>(
          this,
          Invocation.method(
            #search,
            [
              query,
              type,
            ],
          ),
        )),
      ) as _i6.Future<_i2.Result<_i10.Failure, List<_i11.SearchResult>>>);
}

/// A class which mocks [SearchMovieUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockSearchMovieUseCase extends _i1.Mock
    implements _i13.SearchMovieUseCase {
  MockSearchMovieUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.TmdbRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeTmdbRepository_1(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i3.TmdbRepository);
  @override
  _i6.Future<_i2.Result<_i10.Failure, List<_i11.SearchResult>>> execute(
    String? query,
    _i12.SearchType? type,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [
            query,
            type,
          ],
        ),
        returnValue:
            _i6.Future<_i2.Result<_i10.Failure, List<_i11.SearchResult>>>.value(
                _FakeResult_0<_i10.Failure, List<_i11.SearchResult>>(
          this,
          Invocation.method(
            #execute,
            [
              query,
              type,
            ],
          ),
        )),
      ) as _i6.Future<_i2.Result<_i10.Failure, List<_i11.SearchResult>>>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends _i1.Mock implements _i4.Client {
  MockHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i4.Response> head(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_2(
          this,
          Invocation.method(
            #head,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.Response> get(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_2(
          this,
          Invocation.method(
            #get,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.Response> post(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i14.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_2(
          this,
          Invocation.method(
            #post,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.Response> put(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i14.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_2(
          this,
          Invocation.method(
            #put,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.Response> patch(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i14.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_2(
          this,
          Invocation.method(
            #patch,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.Response> delete(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i14.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_2(
          this,
          Invocation.method(
            #delete,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<String> read(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #read,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<_i15.Uint8List> readBytes(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #readBytes,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i15.Uint8List>.value(_i15.Uint8List(0)),
      ) as _i6.Future<_i15.Uint8List>);
  @override
  _i6.Future<_i4.StreamedResponse> send(_i4.BaseRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #send,
          [request],
        ),
        returnValue:
            _i6.Future<_i4.StreamedResponse>.value(_FakeStreamedResponse_3(
          this,
          Invocation.method(
            #send,
            [request],
          ),
        )),
      ) as _i6.Future<_i4.StreamedResponse>);
  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
