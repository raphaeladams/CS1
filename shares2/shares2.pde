//Given an array a[] of share prices for Shopify, try to figure out which day 
//would have been best to buy and which day would have been bet to sell, 
//to make the maximum profit. Each element in the array represents one day, 
//so a[0] = price on day 1, a[1] = price on day 2 etc...
//Obviously you cannot buy on Day 5 and sell on Day 1, so our constraint is 
//that if we have our answer a[buy] and a[sell], sell > buy

import java.util.Arrays;

int[] maxProfit(float[] sharePrices) {
  if (sharePrices.length < 2) {
    println("Not enough data, we need more days!");
    return null;
  } else {
    int i = 0; //iterator for buying day
    int j = i + 1; //iterator for selling day
    int[] bestDays = {i, j};
    float bestProfit = sharePrices[j] - sharePrices[i];
    
    while (i < sharePrices.length - 1) {
      if (sharePrices[j] - sharePrices[i] > bestProfit) {
        bestDays[0] = i;
        bestDays[1] = j;
        bestProfit = sharePrices[j] - sharePrices[i];
      }
      j++;
      if (j >= sharePrices.length) {
        i++;
        j = i + 1;
      }
    }
    
    if (bestProfit <= 0) {
      println("Don't sell, no profits in it for you!");
      return null;
    } else {
      println("Best profit: $" + bestProfit);
      return bestDays;
    }
  }
}

void setup() {
  //tests!
  float[] shares1 = {550, 600, 850, 450, 650, 700};
  float[] shares2 = {5, 3, 1};
  float[] shares3 = {300};
  float[] shares4 = {};
  float[] shares5 = {550, 100, 850, 450, 950, 700};
  
  println(Arrays.toString(maxProfit(shares1))); //$300, [0, 2]
  println(Arrays.toString(maxProfit(shares2))); //don't sell, null
  println(Arrays.toString(maxProfit(shares3))); //not enough data, null
  println(Arrays.toString(maxProfit(shares4))); //not enough data, null
  println(Arrays.toString(maxProfit(shares5))); //$850, [1, 4]
}
