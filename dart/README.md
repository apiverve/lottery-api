# Lottery Numbers API - Dart/Flutter Client

Lottery Numbers fetches winning lottery numbers, bonus balls, draw dates, and jackpot amounts for major games. Specify Powerball, Mega Millions, EuroMillions, or Lotto Max to receive draw results with prize totals, and on paid plans the next draw's estimate and number frequency statistics from the last 100 draws.

[![pub package](https://img.shields.io/pub/v/apiverve_lottery.svg)](https://pub.dev/packages/apiverve_lottery)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Lottery Numbers API](https://apiverve.com/marketplace/lottery?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_lottery: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_lottery/apiverve_lottery.dart';

void main() async {
  final client = LotteryClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'numbers': 'powerball',
      'date': '2024-01-15',
      'stats': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "drawDate": "2026-10-26",
    "numbers": [
      18,
      26,
      49,
      50,
      54,
      1
    ],
    "powerball": 1,
    "jackpot": "$691 Million",
    "jackpotValue": 691000000,
    "jackpotFormatted": "$691 Million",
    "lotteryType": "powerball",
    "nextDraw": {
      "drawDate": "2026-10-28",
      "jackpot": "$716 Million",
      "jackpotValue": 716000000,
      "jackpotFormatted": "$716 Million",
      "cashValue": "$307.2 Million",
      "cashValueValue": 307200000
    },
    "stats": {
      "drawsAnalyzed": 100,
      "since": "2026-03-09",
      "hotNumbers": [
        {
          "number": 42,
          "timesDrawn": 13
        },
        {
          "number": 3,
          "timesDrawn": 12
        },
        {
          "number": 64,
          "timesDrawn": 12
        },
        {
          "number": 4,
          "timesDrawn": 11
        },
        {
          "number": 14,
          "timesDrawn": 11
        }
      ],
      "coldNumbers": [
        {
          "number": 1,
          "timesDrawn": 3
        },
        {
          "number": 34,
          "timesDrawn": 3
        },
        {
          "number": 39,
          "timesDrawn": 3
        },
        {
          "number": 62,
          "timesDrawn": 3
        },
        {
          "number": 20,
          "timesDrawn": 4
        }
      ],
      "hotBonusNumbers": [
        {
          "number": 3,
          "timesDrawn": 8
        },
        {
          "number": 14,
          "timesDrawn": 7
        },
        {
          "number": 1,
          "timesDrawn": 6
        }
      ],
      "drawNumbers": [
        {
          "number": 18,
          "timesDrawn": 8,
          "drawsSinceLast": 16
        },
        {
          "number": 26,
          "timesDrawn": 6,
          "drawsSinceLast": 14
        },
        {
          "number": 49,
          "timesDrawn": 8,
          "drawsSinceLast": 12
        },
        {
          "number": 50,
          "timesDrawn": 10,
          "drawsSinceLast": 2
        },
        {
          "number": 54,
          "timesDrawn": 7,
          "drawsSinceLast": 9
        }
      ]
    }
  }
}
```

## API Reference

- **API Home:** [Lottery Numbers API](https://apiverve.com/marketplace/lottery?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/lottery](https://docs.apiverve.com/ref/lottery?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
