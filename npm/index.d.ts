declare module '@apiverve/lottery' {
  export interface lotteryOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface lotteryResponse {
    status: string;
    error: string | null;
    data: LotteryNumbersData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface LotteryNumbersData {
      drawDate:         Date | null;
      numbers:          (number | null)[];
      powerball:        number | null;
      jackpot:          null | string;
      jackpotValue:     number | null;
      jackpotFormatted: null | string;
      lotteryType:      null | string;
      nextDraw:         NextDraw;
      stats:            Stats;
  }
  
  interface NextDraw {
      drawDate:         Date | null;
      jackpot:          null | string;
      jackpotValue:     number | null;
      jackpotFormatted: null | string;
      cashValue:        null | string;
      cashValueValue:   number | null;
  }
  
  interface Stats {
      drawsAnalyzed:   number | null;
      since:           Date | null;
      hotNumbers:      Number[];
      coldNumbers:     Number[];
      hotBonusNumbers: Number[];
      drawNumbers:     DrawNumber[];
  }
  
  interface Number {
      number:     number | null;
      timesDrawn: number | null;
  }
  
  interface DrawNumber {
      number:         number | null;
      timesDrawn:     number | null;
      drawsSinceLast: number | null;
  }

  export default class lotteryWrapper {
    constructor(options: lotteryOptions);

    execute(callback: (error: any, data: lotteryResponse | null) => void): Promise<lotteryResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: lotteryResponse | null) => void): Promise<lotteryResponse>;
    execute(query?: Record<string, any>): Promise<lotteryResponse>;
  }
}
