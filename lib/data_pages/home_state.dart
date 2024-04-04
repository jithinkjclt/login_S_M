part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
class viewall extends HomeState {
  final MethodeData data;

  viewall({required this.data});
}
