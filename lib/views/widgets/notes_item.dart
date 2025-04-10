import 'package:flutter/material.dart';
import 'package:flutter_application_5/cubits/notes/notes_cubit.dart';
import 'package:flutter_application_5/models/note_model.dart';
import 'package:flutter_application_5/views/edit_notes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class notesitem extends StatelessWidget{
  final NoteModel note;

  const notesitem({super.key, required this.note});
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNotes(
            note: note,
          );
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16,top: 24,bottom: 24),
        
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:Color(note.color)
      
      ),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
         children: [
       ListTile(
        title: Text(note.title,style: TextStyle(color: Colors.black,
        fontSize: 26
        ),),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 16),
          child: Text(note.subtitle,style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 18)),
        ),
        trailing: IconButton(onPressed: (){
          note.delete();
         BlocProvider.of<NotesCubit>(context).fetchNotes();
        },
         icon: Icon(FontAwesomeIcons.trash,color: (Colors.black),size: 27,)),
         
       
       ),
       Padding(
         padding: const EdgeInsets.only(right: 24,top: 24),
         child: Text(note.date,style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 16),),
       )
         ],
       ),
      ),
    );
  }
}