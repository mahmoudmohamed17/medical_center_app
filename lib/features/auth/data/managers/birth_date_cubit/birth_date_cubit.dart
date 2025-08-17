import 'package:bloc/bloc.dart';

class BirthDateCubit extends Cubit<String?> {
  BirthDateCubit() : super(null);

  String? birthDate;

  void updateDate(String date) => emit(date);
}
