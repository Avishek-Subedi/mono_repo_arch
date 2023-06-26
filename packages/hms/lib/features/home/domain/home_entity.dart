// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'package:hms_core/hms_core.dart';

class HomeEntity extends Entity {
  const HomeEntity({
    this.isLoading = false,
    this.text = '',
  });

  final bool isLoading;
  final String text;

  @override
  List<Object> get props => [isLoading, text];

  @override
  HomeEntity copyWith({
    bool? isLoading,
    String? text,
  }) {
    return HomeEntity(
      isLoading: isLoading ?? this.isLoading,
      text: text ?? this.text,
    );
  }
}
