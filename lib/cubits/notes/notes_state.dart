part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}
final class NotesLoading extends NotesState {}
final class NotesSucces extends NotesState {
  final List <NoteModel> notes;

  NotesSucces(this.notes);
}
final class NoteseFailur extends NotesState {
  final String errormessage;

  NoteseFailur(this.errormessage);

  
}
