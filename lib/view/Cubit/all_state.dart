

abstract class AllPostsState{}

class InitialState extends AllPostsState{}

class LoadingState extends AllPostsState{}

class PickImageState extends AllPostsState{}

class PickImageNullState extends AllPostsState{}

class SuccessAddPost extends AllPostsState{

 String message;

SuccessAddPost(this.message);
}
