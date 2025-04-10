import 'package:flutter/material.dart';
import 'package:flutter_application_5/cubits/notes/notes_cubit.dart';
import 'package:flutter_application_5/models/note_model.dart';
import 'package:flutter_application_5/views/widgets/custome_appbar.dart';
import 'package:flutter_application_5/views/widgets/custome_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditNotesviewbody extends StatefulWidget{
  final NoteModel note;

  const EditNotesviewbody({super.key, required this.note});

  @override
  State<EditNotesviewbody> createState() => _EditNotesviewbodyState();
}

class _EditNotesviewbodyState extends State<EditNotesviewbody> {
 String? title,content;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
      children: [
        SizedBox(height: 40,),
        CustomeAppbar(
          onPressed: () {
            widget.note.title=title??widget.note.title;
            widget.note.subtitle=content??widget.note.subtitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchNotes();
            Navigator.pop(context);
          },
          namebar: 'EditNotes'
        ,icon: Icons.check,),
        SizedBox(height: 30,),

        CustomeTextField(
          onChanged: (value){
            title=value;
          },
          hintText: widget.note.title),

        SizedBox(height: 15,)

        ,CustomeTextField(
          onChanged: (value){
            content=value;
          },
          hintText: widget.note.subtitle,

        maxlines: 5,)

      ],
    )));
  }
}