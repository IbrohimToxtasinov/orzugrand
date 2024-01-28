part of 'app_language_bloc.dart';

abstract class AppLanguageEvent extends Equatable {
  const AppLanguageEvent();
}

class UpdateAppLanguage extends AppLanguageEvent {
  final String languageType;

  const UpdateAppLanguage({required this.languageType});

  @override
  List<Object?> get props => [languageType];
}

class GetAppLanguage extends AppLanguageEvent {
  @override
  List<Object?> get props => [];
}
