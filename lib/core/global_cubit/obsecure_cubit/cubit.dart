import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_store_task/core/global_cubit/obsecure_cubit/states.dart';

class ObSecureBloc extends Cubit<ObSecure> {
  ObSecureBloc() : super(ObSecureChanged());

  bool secure = true;
  static ObSecureBloc get(context) => BlocProvider.of(context);

  bool changeSecure() {
    if (secure) {
      secure = !secure;
      emit(ObSecureChanged());
    } else {
      secure = !secure;
      emit(ObSecureChangedAgain());
    }
    return secure;
  }
}
