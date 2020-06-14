import 'package:flutter/material.dart';

class CheckWorkedTimeUseCase {
  String checkWorkedTime({@required int value}) =>
      '${_checkWorkedHours(value: value)}:${_checkWorkedMinutes(value: value)}:${_checkWorkedSeconds(value: value)}';

  String _checkWorkedHours({@required int value}) =>
      (value / 3600).floor().toString().padLeft(2, '0');

  String _checkWorkedMinutes({@required int value}) =>
      ((value / 60) % 60).floor().toString().padLeft(2, '0');

  String _checkWorkedSeconds({@required int value}) =>
      (value % 60).floor().toString().padLeft(2, '0');
}
