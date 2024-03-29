import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';  

class HomePageEvent extends Equatable {
  HomePageEvent([List tmp = const []]): super(tmp);
}

class HomePageEventSearch extends HomePageEvent {
  final String query; // Aqui o filtro vai ser passado pra query
  HomePageEventSearch({
    @required this.query
  });

  @override
  String toString() => "HomePageEventSearch";
}