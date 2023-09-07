import Foundation

let arr = [3, 1, 2, 5, 4]

let arr2 = arr.sorted(by: >)	// 내림차순
let arr3 = arr.sorted()			// 오름차순

struct Student {
    let name: String
    let age: Int
}

let studentArray = [Student(name: "Kim", age: 28), Student(name: "Park", age: 27), 
Student(name: "kang", age: 25)]

// 나이 오름차순 정렬
let sortedStudentArray = studentArray.sorted(by: {$0.age < $1.age})



//  다중 조건 

("a", "1") < ("b", "1") → 첫 번째 원소부터 비교. a < b 이므로 두 번째 원소는 관심 x.
("a", "1") < ("a", "2") → 첫 번째 원소 비교했으나 같음. 두 번째 원소로 판단.
let arr = [["a", "2"], ["a", "1"], ["b", "1"], ["b", "3"], ["b", "2"], ["c", "4"]]

print(arr.sorted(by: { ($0[0], $0[1]) < ($1[0], $1[1]) }))
// [["a", "1"], ["a", "2"], ["b", "1"], ["b", "2"], ["b", "3"], ["c", "4"]]

print(arr.sorted { $0[0] == $1[0] ? $0[1] > $1[1] : $0[0] < $1[0] })
// [["a", "2"], ["a", "1"], ["b", "3"], ["b", "2"], ["b", "1"], ["c", "4"]]