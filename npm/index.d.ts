declare module '@apiverve/lottery' {
  export interface lotteryOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface lotteryResponse {
    status: string;
    error: string | null;
    data: LotteryNumbersData;
    code?: number;
  }


  interface LotteryNumbersData {
      drawDate:    Date;
      jackpot:     string;
      numbers:     number[];
      lotteryType: string;
  }

  export default class lotteryWrapper {
    constructor(options: lotteryOptions);

    execute(callback: (error: any, data: lotteryResponse | null) => void): Promise<lotteryResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: lotteryResponse | null) => void): Promise<lotteryResponse>;
    execute(query?: Record<string, any>): Promise<lotteryResponse>;
  }
}
