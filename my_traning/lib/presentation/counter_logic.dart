class CounterLogic{
  static int counter = 0;

  static void counterStatus({required String sign}){
    if (sign =='+'){
      counter++;
    }
    if (sign =='-'){
      counter--;
    }
    }
}