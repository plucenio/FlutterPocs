part of 'ranking_cubit.dart';

@freezed
abstract class RankingState<T> with _$RankingState {
  const factory RankingState.idle() = Idle<T>;

  const factory RankingState.loading() = Loading<T>;

  const factory RankingState.loaded({@required T data}) = Loaded<T>;

  const factory RankingState.error(
      {@required NetworkExceptions networkExceptions}) = Error<T>;
}
