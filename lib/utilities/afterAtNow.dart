String fromAtNow(DateTime date) {
  final Duration difference = DateTime.now().difference(date);
  final int sec = difference.inSeconds;

  // 年
  if (sec >= 31536000) {
    final int year = (sec / 31536000).floor();
    final int month = ((sec % 31536000) / 2592000).floor();
    final int day = (((sec % 31536000) % 2592000) / 86400).floor();
    if (month == 0) {
      if (day == 0) {
        return "$year年";
      } else {
        return "$year年$day日";
      }
    } else {
      return "$year年$monthヶ月$day日";
    }
  }
  // 月
  else if (sec >= 2592000) {
    final int month = (sec / 2592000).floor();
    final int day = ((sec % 2592000) / 86400).floor();
    if (day == 0) {
      return "$monthヶ月";
    } else {
      return "$monthヶ月$day日";
    }
  }
  // 日
  else if (sec >= 86400) {
    final int day = (sec / 86400).floor();
    final int hour = ((sec % 86400) / 3600).floor();
    if (hour == 0) {
      return "$day日";
    } else {
      return "$day日$hour時間";
    }
  } else {
    return "取得エラー";
  }
}

// 何年何ヶ月何日後かを取得
String afterAtNow(DateTime date) {
  final Duration difference = date.difference(DateTime.now());
  final int sec = difference.inSeconds;

  // 年
  if (sec >= 31536000) {
    final int year = (sec / 31536000).floor();
    final int month = ((sec % 31536000) / 2592000).floor();
    final int day = (((sec % 31536000) % 2592000) / 86400).floor();
    if (month == 0) {
      if (day == 0) {
        return "$year年";
      } else {
        return "$year年$day日";
      }
    } else {
      return "$year年$monthヶ月$day日";
    }
  }
  // 月
  else if (sec >= 2592000) {
    final int month = (sec / 2592000).floor();
    final int day = ((sec % 2592000) / 86400).floor();
    if (day == 0) {
      return "$monthヶ月";
    } else {
      return "$monthヶ月$day日";
    }
  }
  // 日
  else if (sec >= 86400) {
    final int day = (sec / 86400).floor();
    final int hour = ((sec % 86400) / 3600).floor();
    if (hour == 0) {
      return "$day日後";
    } else {
      return "$day日$hour時間";
    }
  } else {
    return "取得エラー";
  }
}
