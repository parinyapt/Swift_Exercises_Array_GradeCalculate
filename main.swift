import Foundation

let config_stdnumber = 12
var name:[String] = []
var score1:[Float] = []
var score2:[Float] = []
var score3:[Float] = []
var total:[Float] = []
var grade:[String] = []

var temp_count:Int = 0
var temp_status:Bool = false
var temp_input:String = ""

var max_str:Int = 5

while(temp_count < config_stdnumber) {
  print("---- Student \(temp_count+1) ----")

  repeat {
    temp_status = false
    print("Enter Student \(temp_count+1) Name : ",terminator: "")
    temp_input = readLine()!
    if Int(temp_input) == nil && Float(temp_input) == nil && temp_input != "" {
      name.append(String(temp_input))
      temp_status = true
    }
  }while(temp_status == false)

  if name[temp_count].count > max_str {
    max_str = name[temp_count].count
  }

  repeat {
    temp_status = false
    print("Enter Student \(temp_count+1) Test Score 1 : ",terminator: "")
    temp_input = readLine()!
    if Float(temp_input) != nil && Float(temp_input)! >= 0 && Float(temp_input)! <= 100 {
      score1.append(Float(temp_input)!)
      temp_status = true
    }
  }while(temp_status == false)
  
  repeat {
    temp_status = false
    print("Enter Student \(temp_count+1) Test Score 2 : ",terminator: "")
    temp_input = readLine()!
    if Float(temp_input) != nil && Float(temp_input)! >= 0 && Float(temp_input)! <= 100 {
      score2.append(Float(temp_input)!)
      temp_status = true
    }
  }while(temp_status == false)
  
  repeat {
    temp_status = false
    print("Enter Student \(temp_count+1) Test Score 3 : ",terminator: "")
    temp_input = readLine()!
    if Float(temp_input) != nil && Float(temp_input)! >= 0 && Float(temp_input)! <= 100 {
      score3.append(Float(temp_input)!)
      temp_status = true
    }
  }while(temp_status == false)

  total.append(((score1[temp_count]*25)/100) + ((score2[temp_count]*25)/100) + ((score3[temp_count]*50)/100))

  if total[temp_count] >= 85 {
    grade.append("A")
  }else if total[temp_count] >= 70 {
    grade.append("B")
  }else if total[temp_count] >= 50 {
    grade.append("C")
  }else if total[temp_count] >= 40 {
    grade.append("D")
  }else {
    grade.append("E")
  }

  temp_count += 1
}

temp_count = 0
print("\nNo. | \("Name".withCString { String(format: "%-"+String(max_str)+"s", $0) }) | Test1 | Test2 | Test3 | Total | Grade")
while(temp_count < config_stdnumber) {
 print("\(String(format: "%2d", (temp_count+1))) \t  \(name[temp_count].withCString { String(format: "%-"+String(max_str)+"s", $0) })  \(String(format: "%6.2f", score1[temp_count])) \(String(format: "%7.2f", score2[temp_count])) \(String(format: "%7.2f", score3[temp_count])) \(String(format: "%7.2f", total[temp_count])) \t\(grade[temp_count])")
  temp_count += 1
}

  
  // print("Enter Student \(temp_count+1) Name : ",terminator: "")
  // name.append(String(readLine()!))