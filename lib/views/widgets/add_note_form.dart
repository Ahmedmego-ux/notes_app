import 'package:flutter/material.dart';
import 'package:flutter_application_5/cubits/add_notes/add_note_cubit.dart';
import 'package:flutter_application_5/models/note_model.dart';
import 'package:flutter_application_5/views/widgets/custome_bottom.dart';
import 'package:flutter_application_5/views/widgets/custome_text_field.dart';
import 'package:flutter_application_5/views/widgets/list_colors_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class addnoteform extends StatefulWidget {
  const addnoteform({
    super.key,
  });

  @override
  State<addnoteform> createState() => _addnoteformState();
}

class _addnoteformState extends State<addnoteform> {
  @override
  String? title, content;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomeTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'tittle',
          ),
          SizedBox(
            height: 15,
          ),
          CustomeTextField(
            onSaved: (value) {
              content = value;
            },
            hintText: 'content',
            maxlines: 5,
          ),
          SizedBox(
            height: 20,
          ),
          listcolorsitem(),
          SizedBox(
            height: 20,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              
              return CustomeBottom(
                isloading:  state is AddNoteLoading?true:false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    var currentdate=DateTime.now();
                    var formatcurrentdate=DateFormat.yMd().format(currentdate);
                    formKey.currentState!.save();
                    var notemodel = NoteModel(
                        title: title!,
                        subtitle: content!,
                        date: formatcurrentdate,
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addnote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}



