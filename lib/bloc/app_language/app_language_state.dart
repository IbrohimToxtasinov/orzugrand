part of 'app_language_bloc.dart';

class AppLanguageState extends Equatable {
  final String languageType;

  const AppLanguageState({required this.languageType});

  AppLanguageState copyWith({String? languageType}) =>
      AppLanguageState(languageType: languageType ?? this.languageType);

  @override
  List<Object?> get props => [languageType];
}
