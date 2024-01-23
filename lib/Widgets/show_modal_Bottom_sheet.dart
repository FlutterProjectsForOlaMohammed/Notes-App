import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/Widgets/add_note_form.dart';
import 'package:notesapp/Widgets/show_alert_dialog.dart';
import 'package:notesapp/cubits/Add%20Note%20Cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/Add%20Note%20Cubit/add_note_states.dart';

class ShowModalBottomSheet extends StatelessWidget {
  const ShowModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNotes>(listener: (context, state) {
      log("State is : $state");
      if (state is AddNoteFailure) {
        Navigator.pop(context);
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return const showAlertDialog(
                  title: "Error",
                  subTitle: "Error Occured , Please Enter The Note again ",
                  backgroundColor: Colors.red);
            });
      }
      if (state is AddNoteSuccess) {
        Navigator.pop(context);
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return const showAlertDialog(
                title: "Done",
                subTitle: "Note Saved Sucessfully",
                backgroundColor: Colors.green,
              );
            });
      }
    }, builder: (context, state) {
      log("State is : $state");

      if (state is AddNoteInitial) {
        return const AddNoteForm();
      } else {
        return ModalProgressHUD(
          inAsyncCall: (state is AddNoteLoading) ? true : false,
          child: const AddNoteForm(),
        );
      }
    });
  }
}
 // SingleChildScrollView --> make Column Shrink its Childern
// so they Not Suitable together
