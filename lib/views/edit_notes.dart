import 'package:flutter/material.dart';
import 'package:flutter_application_5/models/note_model.dart';
import 'package:flutter_application_5/views/widgets/custome_appbar.dart';
import 'package:flutter_application_5/views/widgets/custome_text_field.dart';
import 'package:flutter_application_5/views/widgets/edit_note_view_body.dart';

class EditNotes extends StatelessWidget{
   @override
   final NoteModel note;

  const EditNotes({super.key, required this.note});
  Widget build(BuildContext context) {
    return EditNotesviewbody(note: note,);
  }
}
