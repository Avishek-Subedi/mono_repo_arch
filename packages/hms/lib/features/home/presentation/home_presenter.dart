// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'package:hms/features/home/domain/home_entity.dart';
import 'package:hms/features/home/domain/home_use_case.dart';
import 'package:hms_core/hms_core.dart';

class HomePresenter extends Presenter<HomeEntity> {
  HomePresenter({required this.useCase}) : super(const HomeEntity()) {
    fetchText();
  }

  final HomeUseCase useCase;

  Future<void> fetchText() async {
    entity = entity.copyWith(isLoading: true);

    final text = await useCase.fetchText();

    entity = entity.copyWith(text: text, isLoading: false);
  }
}

final homePresenterProvider = PresenterProvider<HomePresenter, HomeEntity>(
  (ref) => HomePresenter(useCase: ref.read(homeUseCaseProvider)),
);
