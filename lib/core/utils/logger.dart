import 'package:logger/logger.dart';

final prettyLog = Logger(
  printer: PrettyPrinter(
    methodCount: 1, // number of method calls to be displayed
    errorMethodCount: 8, // number of method calls if stacktrace is provided
    lineLength: 120, // width of the output
    colors: true, // Colorful log messages
    printEmojis: true, // Print an emoji for each log message
    dateTimeFormat:
        DateTimeFormat.onlyTimeAndSinceStart, // Should each log print
  ),
);

final wLog = prettyLog.w;
final tLog = prettyLog.t;
final dLog = prettyLog.d;
final iLog = prettyLog.i;
final eLog = prettyLog.e;
final fLog = prettyLog.f;
