import 'package:train_log/models/exercise.model.dart';

class ExerciseSetDetail {
  Exercise exercise;
  List<ExerciseWeightRepDetail> weightRepDetail = [];

  ExerciseSetDetail(this.exercise, this.weightRepDetail);
  ExerciseSetDetail.withEmptySetList(this.exercise);
}

class ExerciseWeightRepDetail {
  int weight;
  int reps;
  ExerciseWeightRepDetail(this.weight, this.reps);
}
