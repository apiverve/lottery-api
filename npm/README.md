# Lottery Numbers API

Lottery Numbers fetches winning lottery numbers, bonus balls, draw dates, and jackpot amounts for major games. Specify Powerball, Mega Millions, EuroMillions, or Lotto Max to receive draw results with prize totals, and on paid plans the next draw's estimate and number frequency statistics from the last 100 draws.

[![npm version](https://img.shields.io/npm/v/@apiverve/lottery.svg)](https://www.npmjs.com/package/@apiverve/lottery)

This is a JavaScript wrapper for the [Lottery Numbers API](https://apiverve.com/marketplace/lottery?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/lottery
```

Using yarn:
```shell
yarn add @apiverve/lottery
```

---

## Configuration

Before using the Lottery Numbers API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Lottery Numbers API documentation is found here: [https://docs.apiverve.com/ref/lottery](https://docs.apiverve.com/ref/lottery?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const lotteryAPI = require('@apiverve/lottery');
const api = new lotteryAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  numbers: "powerball",
  date: "2024-01-15",
  stats: false
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  numbers: "powerball",
  date: "2024-01-15",
  stats: false
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  numbers: "powerball",
  date: "2024-01-15",
  stats: false
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
