# Lottery Numbers API - PHP Package

Lottery Numbers is a simple tool for looking up winning lottery numbers. It returns the winning lottery numbers based on the lottery name provided. Supports Powerball, Mega Millions, EuroMillions, and Canada Lotto Max with historical data lookup.

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
    "jackpot": "$70 Million"
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/lottery?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://lottery.apiverve.com?utm_source=php&utm_medium=readme](https://lottery.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
