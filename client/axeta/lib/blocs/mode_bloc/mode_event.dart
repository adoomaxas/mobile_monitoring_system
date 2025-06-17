import 'package:axeta/blocs/mode_bloc/mode_state.dart';

abstract class ModeEvent {}

class ModeInitEvent implements ModeEvent {}

class ModeChangedEvent implements ModeEvent {
  ModeChangedEvent({required this.newMode});

  final AppMode newMode;
}
