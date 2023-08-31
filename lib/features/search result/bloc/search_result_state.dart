part of 'search_result_bloc.dart';

@immutable
abstract class SearchResultState {}

abstract class SearchResulActiontState extends SearchResultState {}

class SearchResultInitial extends SearchResultState {}

class SearchResultLoadingState extends SearchResultState {}

class SearchResultLoadedSuccessState extends SearchResultState {}

class SearchResultErrorState extends SearchResultState {}
