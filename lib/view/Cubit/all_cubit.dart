

import 'package:bloc/bloc.dart';
import 'package:child_basma/view/Api/api_posts.dart';
import 'package:child_basma/view/Cubit/all_state.dart';
import 'package:child_basma/view/Model/model_posts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllPostsCubit extends Cubit<AllPostsState>{

AllPostsCubit() :super(InitialState());


static AllPostsCubit get(context) => BlocProvider.of(context);


ApiPosts apiPosts = ApiPosts();

List<PostsModel> postModel =[];


addPostsCubit(PostsModel post)async{

  print('hi ');
  print(post.toString());

  emit(LoadingState());

Map<String, dynamic> json = await post.allPostsTojson();
print('hi again');
print(json);

List<Map<String,dynamic>> res = await apiPosts.addPost(json);

this.postModel = res.map((e) => PostsModel.fromJson(e)).toList();

print('in line 35');

print(res);

if(res.isNotEmpty){
  print('ppp');
  print(postModel.toString());
  emit(SuccessAddPost('add successfuly'));

}










}


}