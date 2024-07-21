class OnbordingState {}

class OnbordingInitial extends OnbordingState {}

class ChangedView extends OnbordingState {
  final int initialPage;

  ChangedView({required this.initialPage});
}
