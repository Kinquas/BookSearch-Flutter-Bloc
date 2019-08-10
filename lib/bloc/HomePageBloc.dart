import 'package:appteste/bloc/HomePageEvent.dart';
import 'package:appteste/bloc/HomePageState.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:appteste/repositorioFake.dart';


class HomePageBloc extends Bloc<HomePageEvent, HomePageState>{
  
  final repositorioFake repository; 

  HomePageBloc({
    @required this.repository
  });

  @override 
  HomePageState get initialState => HomePageStateLoading();

  @override
  Stream<HomePageState> mapEventToState(HomePageEvent event) async* {
    if(event is HomePageEventSearch){
      yield HomePageStateLoading();

      var query = event.query;
      var livrosResult = await repository.getLivros(query);
      yield livrosResult;
    }
  }
}
