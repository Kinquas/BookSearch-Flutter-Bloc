import 'package:appteste/models.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';  

class HomePageState extends Equatable{
  HomePageState([List tmp = const []]): super(tmp);

}

class HomePageStateLoading extends HomePageState {

  @override
  String toString() => "HomePageState";
}

class HomePageStateSucesso extends HomePageState {
  final List<Livros> livros;
  HomePageStateSucesso({
    @required this.livros
  }); 

  @override
  String toString() => "HomePageStateSucesso";
}

class HomePageStateError extends HomePageState {
  final String message;

  HomePageStateError({
    @required this.message
  });

   @override
   String toString() => "HomePageStateError";
}