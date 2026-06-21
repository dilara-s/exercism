func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func checkSecret(_ enteredPassword: String) -> String{
    if enteredPassword == password {
      return secret
    } else {
      return "Sorry. No hidden secrets here."
    }
  }
  return checkSecret
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  var firstNumber = f(room)
  var secondNumber = f(firstNumber)
  var thirdNumber = f(secondNumber)
  return (firstNumber, secondNumber, thirdNumber)
}
