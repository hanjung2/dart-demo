import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/exercise_set_detail.model.dart';

class NewExerciseCubit extends Cubit<List<ExerciseSetDetail>> {
  NewExerciseCubit() : super([]);

  void add(exercise) => emit([...state, exercise]);
}
