func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
  var sum = 0
  for i in birdsPerDay {
    sum += i
  }
  return sum
  //return birdsPerDay.reduce(0, +)
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
  var sum = 0
  let start = 7*(weekNumber - 1)
  let end = start + 6
  let birds = birdsPerDay[start...end]
  
  for i in birds{
    sum += i
  }
  return sum
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
  var fixed = birdsPerDay
  for i in stride (from: 0, to: fixed.count, by: 2) {
    fixed[i] += 1
  }
  return fixed
}
