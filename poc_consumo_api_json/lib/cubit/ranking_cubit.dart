import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poc_consumo_api_json/app/results/network_exceptions.dart';
import 'package:poc_consumo_api_json/repositories/api_repository.dart';

part 'ranking_state.dart';
part 'ranking_cubit.freezed.dart';

class RankingCubit extends Cubit<RankingState> {
  final ApiRepository apiRepository;
  RankingCubit({this.apiRepository})
      : assert(apiRepository != null),
        super(_$Idle());

  Future<void> getHospitalRanking() async {
    emit(Loading());
    final result = await apiRepository.fetchHospitalList();
    result.when(success: (success) {
      emit(Loaded(data: success));
    }, failure: (error) {
      emit(Error(networkExceptions: error));
    });
  }

  Future<void> getUserRanking() async {
    emit(Loading());
    final result = await apiRepository.fetchUserList();
    result.when(success: (success) {
      emit(Loaded(data: success));
    }, failure: (error) {
      emit(Error(networkExceptions: error));
    });
  }
}
