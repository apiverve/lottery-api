# Lottery Numbers API - Ruby Gem

Lottery Numbers fetches winning lottery numbers, bonus balls, draw dates, and jackpot amounts for major games. Specify Powerball, Mega Millions, EuroMillions, or Lotto Max to receive draw results with prize totals.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_lottery'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_lottery
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_lottery'

# Initialize the client
client = APIVerve::Lottery::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  numbers: "powerball",
  date: "2024-01-15"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ numbers: "powerball", date: "2024-01-15" })
  puts response["data"]
rescue APIVerve::Lottery::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Lottery::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Lottery::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/lottery?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/lottery?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/lottery?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
