import 'package:flutter/material.dart';
import 'package:flutter_application_5/views/widgets/custome_bottom.dart';
import 'package:flutter_application_5/views/widgets/custome_text_field.dart';

class Addnotebottomshet extends StatelessWidget{
    Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: addnoteform(),
      ),
    );
}}

class addnoteform extends StatefulWidget {
  const addnoteform({
    super.key,
  });

  @override
  State<addnoteform> createState() => _addnoteformState();
}

class _addnoteformState extends State<addnoteform> {
  @override
  String?title,content;
  final GlobalKey<FormState> formKey =GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: 30,),
          CustomeTextField(
            onSaved: (value){
              title=value;
            },
            hintText: 'tittle',
          ),
          SizedBox(height: 15,),
          CustomeTextField(
            onSaved: (value){
              content=value;
            },
            hintText: 'content',
          maxlines: 5,),
           SizedBox(height: 50,),
          CustomeBottom(
            onTap: () {
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
           SizedBox(height: 30,),
        ],
      ),
    );
  }
}
