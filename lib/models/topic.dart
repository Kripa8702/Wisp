import 'package:equatable/equatable.dart';

class Topic extends Equatable {
  final String title;
  final String description;
  final String imagePath;
  final String initialPrompt;

  const Topic({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.initialPrompt,
  });

  @override
  List<Object?> get props => [title, description, imagePath, initialPrompt];
}