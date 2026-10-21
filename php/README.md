# Lottery Numbers API - PHP Package

Lottery Numbers fetches winning lottery numbers, bonus balls, draw dates, and jackpot amounts for major games. Specify Powerball, Mega Millions, EuroMillions, or Lotto Max to receive draw results with prize totals.

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
    'date' => '2024-01-15'
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
    $response = $client->execute(['numbers' => 'powerball', 'date' => '2024-01-15']);
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
    "lotteryType": "megamillions",
    "drawDate": "2026-02-04",
    "numbers": [
      10,
      50,
      55,
      58,
      59,
      5
    ],
    "megaBall": 5,
    "jackpot": "$70 Million",
    "jackpotValue": 70000000,
    "jackpotFormatted": "$70 Million",
    "nextDraw": {
      "drawDate": "2026-02-07",
      "jackpot": "$82 Million",
      "jackpotValue": 82000000,
      "cashValue": "$37.2 Million",
      "cashValueValue": 37200000
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
