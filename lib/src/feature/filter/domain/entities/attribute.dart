import 'package:equatable/equatable.dart';

class Attribute extends Equatable {
  final String id;
  final String attributeName;
  final List<String> values;

  const Attribute({
    required this.id,
    required this.attributeName,
    required this.values,
  });

  @override
  List<Object> get props => [id, attributeName, values];
}
