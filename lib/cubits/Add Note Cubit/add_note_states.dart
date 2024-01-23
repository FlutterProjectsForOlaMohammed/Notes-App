class AddNotes {}

class AddNoteInitial extends AddNotes {}

class AddNoteLoading extends AddNotes {}

class AddNoteSuccess extends AddNotes {}

class AddNoteFailure extends AddNotes {
  final String errMessage;

  AddNoteFailure({required this.errMessage});
}
