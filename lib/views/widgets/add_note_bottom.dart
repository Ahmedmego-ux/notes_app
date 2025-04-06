import 'package:flutter/material.dart';
import 'package:flutter_application_5/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:flutter_application_5/views/widgets/add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Addnotebottomshet extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if(state ==AddNoteSucces){
              Navigator.pop(context);
            }
            if(state== AddNoteFailur){
              print('failed add note try again ');
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading?true:false,
              child: addnoteform());
          },
        ),
      ),
    );
  }
}
