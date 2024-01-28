import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:orzugrand/data/repositories/app_language.dart';

part 'app_language_event.dart';

part 'app_language_state.dart';

class AppLanguageBloc extends Bloc<AppLanguageEvent, AppLanguageState> {
  AppLanguageBloc(this._appLanguageRepository)
      : super(const AppLanguageState(languageType: "russian")) {
    on<GetAppLanguage>(_getAppLanguage);
    on<UpdateAppLanguage>(_updateAppLanguage);
    add(GetAppLanguage());
  }

  final AppLanguageRepository _appLanguageRepository;

  Future<void> _getAppLanguage(GetAppLanguage event, Emitter<AppLanguageState> emit) async {
    String appLanguage = await _appLanguageRepository.getCurrentLanguage();
    emit(state.copyWith(languageType: appLanguage));
  }

  Future<void> _updateAppLanguage(UpdateAppLanguage event, Emitter<AppLanguageState> emit) async {
    await _appLanguageRepository.updateLanguage(value: event.languageType);
    emit(state.copyWith(languageType: event.languageType));
  }
}
