import 'package:flutter/material.dart';
import 'package:flutter_application_5/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:flutter_application_5/views/widgets/add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Addnotebottomshet extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
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
