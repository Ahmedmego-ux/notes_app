import 'package:flutter/material.dart';
import 'package:flutter_application_5/cubits/notes/notes_cubit.dart';
import 'package:flutter_application_5/models/note_model.dart';
import 'package:flutter_application_5/views/widgets/notes_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class listnotesitem extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {

    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
       List<NoteModel> notes =BlocProvider.of<NotesCubit>(context).notes??[];
        return Padding(
          
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: notesitem(),
                );
              }),
        );
      },
    );
  }
}
