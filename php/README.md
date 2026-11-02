# Lottery Numbers API - PHP Package

Lottery Numbers fetches winning lottery numbers, bonus balls, draw dates, and jackpot amounts for major games. Specify Powerball, Mega Millions, EuroMillions, or Lotto Max to receive draw results with prize totals, and on paid plans the next draw's estimate and number frequency statistics from the last 100 draws.

## Installation

Install via Composer:

```bash
composer require apiverve/lottery
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Lottery\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'numbers' => 'powerball',
    'date' => '2024-01-15',
    'stats' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Lottery\Client;
use APIVerve\Lottery\Exceptions\APIException;
use APIVerve\Lottery\Exceptions\ValidationException;

try {
    $response = $client->execute(['numbers' => 'powerball', 'date' => '2024-01-15', 'stats' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/lottery?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/lottery?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/lottery?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
