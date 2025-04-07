import 'package:bloc/bloc.dart';
import 'package:flutter_application_5/constant.dart';
import 'package:flutter_application_5/models/note_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addnote(NoteModel note){
    try {
      emit(AddNoteLoading());
  var notesbox =Hive.box<NoteModel>(knotesbox);
 
  notesbox.add(note);
   emit(AddNoteSucces());
}  catch (e) {
  emit(AddNoteFailur(e.toString()) );
}
    
  }
}
