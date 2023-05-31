import 'package:logger/logger.dart';

class Log {
  static final Logger logger = Logger(
    printer: PrettyPrinter(),
  );

  static void setLevel(Level level) {
    Logger.level = level;
  }

  static void v(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.v(message, error, stackTrace);
  }

  static void d(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.d(message, error, stackTrace);
  }

  static void i(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.i(message, error, stackTrace);
  }

  static void w(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.w(message, error, stackTrace);
  }

  static void e(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.e(message, error, stackTrace);
  }

  static void log(Level level, dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.log(level, message, error, stackTrace);
  }
}
