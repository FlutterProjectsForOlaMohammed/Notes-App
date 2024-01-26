import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Constants.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/Views/notes_app_view.dart';
import 'package:notesapp/cubits/Show%20Notes%20Cubit/show_notes_cubit.dart';
import 'package:notesapp/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox(kNotesBox);
  Bloc.observer = SimpleBlocObserver();
  // here we determined Objects that can be Storeed in Database
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowNotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Poppins",
          brightness: Brightness.dark,
        ),
        home: const NotesAppView(),
      ),
    );
  }
}
