func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  guard let d = diameter, let s = slices else {return nil}
  if d < 0 || s < 1 {
    return nil
  } else {
    let radius = d / 2.0
    return (Double.pi * radius * radius) / Double(s)
  }
}
 
func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {

 let areaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
 let areaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
  
  switch(areaA, areaB) {
    case (nil, nil): return "Neither slice is bigger"
    case (_, nil): return "Slice A is bigger"
    case(nil, _): return "Slice B is bigger"
    case (let a?, let b?):
      if a > b{
        return "Slice A is bigger"
      } else if a < b {
        return "Slice B is bigger"
      } else {
        return "Neither slice is bigger"
      }
  }


}
