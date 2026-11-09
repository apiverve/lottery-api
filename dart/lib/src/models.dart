/// Response models for the Lottery Numbers API.

/// API Response wrapper.
class LotteryResponse {
  final String status;
  final dynamic error;
  final LotteryData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  LotteryResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory LotteryResponse.fromJson(Map<String, dynamic> json) => LotteryResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? LotteryData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Lottery Numbers API.

class LotteryData {
  String? drawDate;
  List<num>? numbers;
  num? powerball;
  String? jackpot;
  num? jackpotValue;
  String? jackpotFormatted;
  String? lotteryType;
  LotteryDataNextdraw? nextDraw;
  LotteryDataStats? stats;

  LotteryData({
    this.drawDate,
    this.numbers,
    this.powerball,
    this.jackpot,
    this.jackpotValue,
    this.jackpotFormatted,
    this.lotteryType,
    this.nextDraw,
    this.stats,
  });

  factory LotteryData.fromJson(Map<String, dynamic> json) => LotteryData(
      drawDate: json['drawDate'],
      numbers: (json['numbers'] as List?)?.cast<num>(),
      powerball: json['powerball'],
      jackpot: json['jackpot'],
      jackpotValue: json['jackpotValue'],
      jackpotFormatted: json['jackpotFormatted'],
      lotteryType: json['lotteryType'],
      nextDraw: json['nextDraw'] != null ? LotteryDataNextdraw.fromJson(json['nextDraw']) : null,
      stats: json['stats'] != null ? LotteryDataStats.fromJson(json['stats']) : null,
    );
}

class LotteryDataNextdraw {
  String? drawDate;
  String? jackpot;
  num? jackpotValue;
  String? jackpotFormatted;
  String? cashValue;
  num? cashValueValue;

  LotteryDataNextdraw({
    this.drawDate,
    this.jackpot,
    this.jackpotValue,
    this.jackpotFormatted,
    this.cashValue,
    this.cashValueValue,
  });

  factory LotteryDataNextdraw.fromJson(Map<String, dynamic> json) => LotteryDataNextdraw(
      drawDate: json['drawDate'],
      jackpot: json['jackpot'],
      jackpotValue: json['jackpotValue'],
      jackpotFormatted: json['jackpotFormatted'],
      cashValue: json['cashValue'],
      cashValueValue: json['cashValueValue'],
    );
}

class LotteryDataStats {
  num? drawsAnalyzed;
  String? since;
  List<LotteryDataStatsHotnumbersItem>? hotNumbers;
  List<LotteryDataStatsColdnumbersItem>? coldNumbers;
  List<LotteryDataStatsHotbonusnumbersItem>? hotBonusNumbers;
  List<LotteryDataStatsDrawnumbersItem>? drawNumbers;

  LotteryDataStats({
    this.drawsAnalyzed,
    this.since,
    this.hotNumbers,
    this.coldNumbers,
    this.hotBonusNumbers,
    this.drawNumbers,
  });

  factory LotteryDataStats.fromJson(Map<String, dynamic> json) => LotteryDataStats(
      drawsAnalyzed: json['drawsAnalyzed'],
      since: json['since'],
      hotNumbers: (json['hotNumbers'] as List?)?.map((e) => LotteryDataStatsHotnumbersItem.fromJson(e)).toList(),
      coldNumbers: (json['coldNumbers'] as List?)?.map((e) => LotteryDataStatsColdnumbersItem.fromJson(e)).toList(),
      hotBonusNumbers: (json['hotBonusNumbers'] as List?)?.map((e) => LotteryDataStatsHotbonusnumbersItem.fromJson(e)).toList(),
      drawNumbers: (json['drawNumbers'] as List?)?.map((e) => LotteryDataStatsDrawnumbersItem.fromJson(e)).toList(),
    );
}

class LotteryDataStatsHotnumbersItem {
  num? number;
  num? timesDrawn;

  LotteryDataStatsHotnumbersItem({
    this.number,
    this.timesDrawn,
  });

  factory LotteryDataStatsHotnumbersItem.fromJson(Map<String, dynamic> json) => LotteryDataStatsHotnumbersItem(
      number: json['number'],
      timesDrawn: json['timesDrawn'],
    );
}

class LotteryDataStatsColdnumbersItem {
  num? number;
  num? timesDrawn;

  LotteryDataStatsColdnumbersItem({
    this.number,
    this.timesDrawn,
  });

  factory LotteryDataStatsColdnumbersItem.fromJson(Map<String, dynamic> json) => LotteryDataStatsColdnumbersItem(
      number: json['number'],
      timesDrawn: json['timesDrawn'],
    );
}

class LotteryDataStatsHotbonusnumbersItem {
  num? number;
  num? timesDrawn;

  LotteryDataStatsHotbonusnumbersItem({
    this.number,
    this.timesDrawn,
  });

  factory LotteryDataStatsHotbonusnumbersItem.fromJson(Map<String, dynamic> json) => LotteryDataStatsHotbonusnumbersItem(
      number: json['number'],
      timesDrawn: json['timesDrawn'],
    );
}

class LotteryDataStatsDrawnumbersItem {
  num? number;
  num? timesDrawn;
  num? drawsSinceLast;

  LotteryDataStatsDrawnumbersItem({
    this.number,
    this.timesDrawn,
    this.drawsSinceLast,
  });

  factory LotteryDataStatsDrawnumbersItem.fromJson(Map<String, dynamic> json) => LotteryDataStatsDrawnumbersItem(
      number: json['number'],
      timesDrawn: json['timesDrawn'],
      drawsSinceLast: json['drawsSinceLast'],
    );
}

class LotteryRequest {
  String numbers;
  String? date;
  bool? stats;

  LotteryRequest({
    required this.numbers,
    this.date,
    this.stats,
  });

  Map<String, dynamic> toJson() => {
      'numbers': numbers,
      if (date != null) 'date': date,
      if (stats != null) 'stats': stats,
    };
}
