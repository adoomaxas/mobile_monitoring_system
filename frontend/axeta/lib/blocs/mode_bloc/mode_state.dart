import 'package:equatable/equatable.dart';

class ModeState extends Equatable {
  const ModeState({this.mode});

  const ModeState.initial() : mode = null;

  final AppMode? mode;

  @override
  List<Object?> get props => [mode];
}

enum AppMode { client, server }
