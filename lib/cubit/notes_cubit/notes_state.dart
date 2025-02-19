  part of 'notes_cubit.dart';

  @immutable
  sealed class NotesState {}

  final class NotesInitial extends NotesState {}

  final class NotesLoading extends NotesState {}

  final class NotesLoaded extends NotesState {
     final List<NoteModel> notes;
     NotesLoaded(this.notes);

  }

  final class NotesFailure extends NotesState {
     final String message;
     NotesFailure(this.message);

  }
