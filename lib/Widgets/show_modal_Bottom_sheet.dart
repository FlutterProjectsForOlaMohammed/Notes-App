import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Widgets/add_note_form.dart';
import 'package:notesapp/Widgets/show_alert_dialog.dart';
import 'package:notesapp/cubits/Add%20Note%20Cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/Add%20Note%20Cubit/add_note_states.dart';
import 'package:notesapp/cubits/Show%20Notes%20Cubit/show_notes_cubit.dart';

class ShowModalBottomSheet extends StatelessWidget {
  const ShowModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNotes>(listener: (context, state) {
        if (state is AddNoteFailure) {
          Navigator.pop(context);
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return const showAlertDialog(
                    title: "Error",
                    subTitle: "Error Occured , Please Enter The Note again ",
                    pressedText: "Ok",
                    backgroundColor: Colors.red);
              });
        }
        if (state is AddNoteSuccess) {
          BlocProvider.of<ShowNotesCubit>(context).showAllNotes();
          Navigator.pop(context);
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return const showAlertDialog(
                  pressedText: "Ok",
                  title: "Done",
                  subTitle: "Note Saved Sucessfully",
                  backgroundColor: Colors.green,
                );
              });
        }
      }, builder: (context, state) {
        return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: const AddNoteForm());
      }),
    );
  }
}
 // SingleChildScrollView --> make Column Shrink its Childern
// so they Not Suitable together
