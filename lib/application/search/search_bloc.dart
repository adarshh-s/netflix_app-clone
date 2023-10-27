import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/downloads/models/download_model.dart';
import 'package:netflix_app/domain/search/model/search_response/search_response.dart';
import 'package:netflix_app/domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo downloadService;
  final SearchService searchSerice;
  SearchBloc(this.searchSerice, this.downloadService)
      : super(SearchState.initial()) {
    //idle state
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(SearchState(
          searchResultList: [],
          idleList: state.idleList,
          isLoading: false,
          isError: false,
        ));
        return;
      }
      emit(const SearchState(
        searchResultList: [],
        idleList: [],
        isLoading: true,
        isError: false,
      ));
      final result = await downloadService.getDownloadsImage();
      final _state = result.fold((MainFailures f) {
        return const SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: false,
          isError: true,
        );
      }, (List<Downloads> list) {
        return SearchState(
          searchResultList: [],
          idleList: list,
          isLoading: false,
          isError: false,
        );
      });
      emit(_state);
    });

    //search result state
    on<SearchMulti>((event, emit) async {
      log('search fpr ${event.queryMulti}');
      emit(const SearchState(
        searchResultList: [],
        idleList: [],
        isLoading: true,
        isError: false,
      ));
      final result =
          await searchSerice.searchMulti(queryMulti: event.queryMulti);
      final state = result.fold((MainFailures f) {
        return const SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: false,
          isError: true,
        );
      }, (SearchResponse r) {
        return SearchState(
          searchResultList: r.results,
          idleList: [],
          isLoading: false,
          isError: false,
        );
      });
      emit(state);
    });
  }
}
