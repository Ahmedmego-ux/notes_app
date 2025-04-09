import 'package:flutter/material.dart';
import 'package:flutter_application_5/cubits/add_notes/add_note_cubit.dart';
import 'package:flutter_application_5/views/widgets/add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Addnotebottomshet extends StatelessWidget {
  
  Widget build(BuildContext context) {
    
    return BlocProvider(
      create: (context) =>AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(left: 16,right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom
        ),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteSucces) {
              Navigator.pop(context);
            }
            if (state is AddNoteFailur) {
              print('failed ${state.errormessage} ');
            }
          },
          builder: (context, state) {
            return 
            AbsorbPointer(
              absorbing: state is AddNoteLoading ? true:false,
              child: SingleChildScrollView(child: addnoteform()));
          },
        ),
      ),
    );
  }
}
