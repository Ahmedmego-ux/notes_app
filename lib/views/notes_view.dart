import 'package:flutter/material.dart';
import 'package:flutter_application_5/cubits/notes/notes_cubit.dart';
import 'package:flutter_application_5/views/widgets/add_note_bottom.dart';
import 'package:flutter_application_5/views/widgets/notesapp_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesView extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return Addnotebottomshet();
                });
          },
          child: Icon(Icons.add),
        ),
        body: NotesappBody(),
      ),
    );
  }
}
