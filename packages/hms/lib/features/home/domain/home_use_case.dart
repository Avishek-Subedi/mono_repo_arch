// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'package:hms/features/home/data/home_repository.dart';
import 'package:hms_core/hms_core.dart';

class HomeUseCase extends UseCase {
  HomeUseCase(super.ref);

  Future<String> fetchText() {
    return ref.read(homeRepositoryProvider).fetchText();
  }
}

final homeUseCaseProvider = UseCaseProvider<HomeUseCase>(HomeUseCase.new);
