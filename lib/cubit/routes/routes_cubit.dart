// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'routes_state.dart';

class RoutesCubit extends Cubit<RoutesState> {
  RoutesCubit() : super(RoutesSplashScreenPage());
  Stream<RoutesState> mapEventToState(RoutesState state) async* {
    if (state is RoutesSplashScreenPage) {
      emit(RoutesSplashScreenPage());
    } else if (state is RoutesLoginPage) {
      emit(RoutesLoginPage());
    } else if (state is RoutesDashboardPage) {
      emit(RoutesDashboardPage());
    }
  }
}
