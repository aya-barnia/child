import 'package:bloc/bloc.dart';
import 'package:child_basma/view/Login/login_api.dart';
import 'package:child_basma/view/Login/login_model.dart';
import 'package:child_basma/view/Login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState>{


  LoginCubit():super(LoginInitial());

  static LoginCubit get(context)=>BlocProvider.of(context);

  LoginApi api =LoginApi();


  login(ModelLogin model)async{

print('here bloc');
    emit(LoginLoading());
    print("hi cubit");

    Map<String,dynamic>json=await model.logintojson();
    RESPONSE response=await api.log(json);
    if (response.Success) {

      emit(LoginLoaded(message: response.message));
      
    } else {
      emit(LoginLoadError(message: response.message));
    }

  }

}