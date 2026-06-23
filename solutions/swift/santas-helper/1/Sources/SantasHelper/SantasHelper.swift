func getName(_ item: (name: String, amount: Int)) -> String {
  return item.0
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  return (name, amount)
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) ->  [(name: String, amount: Int)] {
  var updated = items
  for i in 0..<updated.count{
    if updated[i].name == toy {
        updated[i].amount = amount
    }
  }
  return updated
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
  var updated: [(name: String, amount: Int, category: String)] = []
  for i in items {
    updated.append((i.name, i.amount, category))
  }
  return updated
}