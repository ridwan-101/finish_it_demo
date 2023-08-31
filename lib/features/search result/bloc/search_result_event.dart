part of 'search_result_bloc.dart';

@immutable
abstract class SearchResultEvent {}

class FavoriteRecepieButttonClickedEvent extends SearchResultEvent {}

class FavoriteRecepieButttonNavigateEvent extends SearchResultEvent {}

class RefreshResultsClickedEvent extends SearchResultEvent {}

class ViewRecepieClickedEvent extends SearchResultEvent {}

class ViewRecepieUnClickedEvent extends SearchResultEvent {}
