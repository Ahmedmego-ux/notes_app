import 'package:bloc/bloc.dart';
import 'package:flutter_application_5/constant.dart';
import 'package:flutter_application_5/models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:meta/meta.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  List <NoteModel> ?notes;
  NotesCubit() : super(NotesInitial());
 fetchNotes() {
  var notesBox = Hive.box<NoteModel>(knotesbox);
  notes = notesBox.values.toList();
  emit(NotesSuccess()); 
}

  }

