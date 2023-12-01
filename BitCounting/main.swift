//
//  main.swift
//  Convert a Number to a String!
//
//  Created by 김민성 on 2023/12/01.
//

import Foundation

// 10진수를 2진수로 바꾸고 이진수에서 1의 개수가 몇 개가 되는지 알아내는 함수를 만들어야함.

/*:
 의사코드
 --------------십진수를 이진수로 표현하는 과정이다.---------------
 1. 이진수로 표현하고 싶은 십진수를 2로 나눈다. (반복문을 써야겠지)
 2. 2로 나누었을 때의 몫과 나머지를 저장해야한다. (몫은 변수로 나머지는 배열을 이용해서 저장해야 할 듯)
 3. 이후에 몫을 계속해서 나누어주고 나머지를 배열의 요소에 추가시킨다.
 4. 만약 2로 계속해서 나누어 가면서 몫이 0이 되는 순간에 모아놨던 나머지가 십진수의 이진수 표현이 된다.
    (배열은 거꾸로 읽어야하며, 반복문의 조건은 몫이 0이 될 때 까지가 될 것이다.)
 ---------------이진수에 1이 몇 개 있는지 알아내는 과정이다.---------------
 5. 배열을 반복문을 통해 순차탐색 하면서 1을 찾을 때 마다 count 변수를 1증가시킨다.
 */

var position : Int = 0
var decimal : Int = 0
var count = 0
var reminder_list = [Int]()

func countBits(n: Int) -> Int {
    while(true) {
        decimal = n
        reminder_list.insert(decimal%2, at: position) // 나머지를 reminder_list에 모아놓음
        decimal = decimal/2 // 몫이 됨.
        
        if decimal == 0 {
            break
        }
    }
    
    for i in reminder_list {
        if i == 1 {
            count += 1
        }
    }
    
    return count
}



