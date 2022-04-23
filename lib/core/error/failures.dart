import 'package:clone_done_it/import.dart';

abstract class Failure extends Equatable{

  final List properties = const <dynamic>[];

  const Failure([properties]);

  @override
  // TODO: implement props
  List<dynamic> get props => properties;
}