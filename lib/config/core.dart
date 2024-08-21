// ignore_for_file: directives_ordering

library core;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:equatable/equatable.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_settings.dart';
import 'package:talker_flutter/talker_flutter.dart';

export 'package:either_dart/either.dart';
export 'package:equatable/equatable.dart';
export 'package:injectable/injectable.dart';

part 'dependencies/module.dart';
part 'utils/failures/failures.dart';
part 'utils/logger/logger.dart';
part 'utils/base/base_repository.dart';
part 'utils/base/base_usecase.dart';
