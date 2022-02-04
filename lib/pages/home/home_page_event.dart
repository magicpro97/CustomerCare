part of 'home_page_bloc.dart';

abstract class HomePageEvent extends Equatable {
  const HomePageEvent();
}

class HomePageLoadMoreEvent extends HomePageEvent {
  final int currentPage;

  const HomePageLoadMoreEvent(this.currentPage);

  @override
  List<Object> get props => [currentPage];
}
