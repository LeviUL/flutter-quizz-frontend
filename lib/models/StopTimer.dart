import 'dart:ui';

import 'package:stop_watch_timer/stop_watch_timer.dart';

class StopTimer {
  final StopWatchTimer _stopWatchTimer;

  StopTimer(VoidCallback onEndedCallback)
      : this._stopWatchTimer = StopWatchTimer(
          mode: StopWatchMode.countDown,
          presetMillisecond: StopWatchTimer.getMilliSecFromSecond(20),
          onEnded: () {
            onEndedCallback();
          },
        );

  void reset() {
    _stopWatchTimer.onResetTimer();
  }

  void start() {
    reset();
    _stopWatchTimer.onStartTimer();
  }

  void stop() {
    _stopWatchTimer.onStopTimer();
  }

  StopWatchTimer getTimer() {
    return _stopWatchTimer;
  }
}
