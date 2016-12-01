// Project Euler

// A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
// Find the largest palindrome made from the product of two 3-digit numbers.

import Foundation

func maxPalindrom() -> Int {
    
    var result = 999999
    var i = 9
    var j = 9
    var k = 9
    
    while true {
    
        while true {
            
            
            while true {
                print("in K loop: \(result) k = \(k)")
                
                if isDivisible(number: result) {
                   return result
                }
                if k <= 0 {
                    k = 9
                    result += 9900
                    break
                }
                result -= 1100
                k -= 1
            }
            

            print("in J loop: \(result)")
            if isDivisible(number: result) {
                return result
            }
            if j < 0 {
                j = 9
                result += 90090
                break
            }
            result -= 10010
            j -= 1
        }
        
        
        print("in I loop: \(result)")
        if isDivisible(number: result) {
            return result
        }
        if i < 0 {
            break
        }
        result -= 100001
        i -= 1
    }
    
    
    if result == 100001 {
        return -1
    }
    
    return -1
}


func isDivisible(number: Int) -> Bool {
    
    //print("dividing: \(number)")
    
    var i = 999
    
    while true {
    
        if number % i == 0 && number / i < 999 {
            
            return true
        }
        
        if i < 500 {
            return false
        }
        
        i -= 1
    }

}


let start = NSDate()
print(maxPalindrom())       // 906609
let end = NSDate()

print("executio time: \(end.timeIntervalSince(start as Date)) sec") // ~ executio time: 2.75409698486328 sec


//in K loop: 999999 k = 9
//in K loop: 998899 k = 8
//in K loop: 997799 k = 7
//in K loop: 996699 k = 6
//in K loop: 995599 k = 5
//in K loop: 994499 k = 4
//in K loop: 993399 k = 3
//in K loop: 992299 k = 2
//in K loop: 991199 k = 1
//in K loop: 990099 k = 0
//in J loop: 999999
//in K loop: 989989 k = 9
//in K loop: 988889 k = 8
//in K loop: 987789 k = 7
//in K loop: 986689 k = 6
//in K loop: 985589 k = 5
//in K loop: 984489 k = 4
//in K loop: 983389 k = 3
//in K loop: 982289 k = 2
//in K loop: 981189 k = 1
//in K loop: 980089 k = 0
//in J loop: 989989
//in K loop: 979979 k = 9
//in K loop: 978879 k = 8
//in K loop: 977779 k = 7
//in K loop: 976679 k = 6
//in K loop: 975579 k = 5
//in K loop: 974479 k = 4
//in K loop: 973379 k = 3
//in K loop: 972279 k = 2
//in K loop: 971179 k = 1
//in K loop: 970079 k = 0
//in J loop: 979979
//in K loop: 969969 k = 9
//in K loop: 968869 k = 8
//in K loop: 967769 k = 7
//in K loop: 966669 k = 6
//in K loop: 965569 k = 5
//in K loop: 964469 k = 4
//in K loop: 963369 k = 3
//in K loop: 962269 k = 2
//in K loop: 961169 k = 1
//in K loop: 960069 k = 0
//in J loop: 969969
//in K loop: 959959 k = 9
//in K loop: 958859 k = 8
//in K loop: 957759 k = 7
//in K loop: 956659 k = 6
//in K loop: 955559 k = 5
//in K loop: 954459 k = 4
//in K loop: 953359 k = 3
//in K loop: 952259 k = 2
//in K loop: 951159 k = 1
//in K loop: 950059 k = 0
//in J loop: 959959
//in K loop: 949949 k = 9
//in K loop: 948849 k = 8
//in K loop: 947749 k = 7
//in K loop: 946649 k = 6
//in K loop: 945549 k = 5
//in K loop: 944449 k = 4
//in K loop: 943349 k = 3
//in K loop: 942249 k = 2
//in K loop: 941149 k = 1
//in K loop: 940049 k = 0
//in J loop: 949949
//in K loop: 939939 k = 9
//in K loop: 938839 k = 8
//in K loop: 937739 k = 7
//in K loop: 936639 k = 6
//in K loop: 935539 k = 5
//in K loop: 934439 k = 4
//in K loop: 933339 k = 3
//in K loop: 932239 k = 2
//in K loop: 931139 k = 1
//in K loop: 930039 k = 0
//in J loop: 939939
//in K loop: 929929 k = 9
//in K loop: 928829 k = 8
//in K loop: 927729 k = 7
//in K loop: 926629 k = 6
//in K loop: 925529 k = 5
//in K loop: 924429 k = 4
//in K loop: 923329 k = 3
//in K loop: 922229 k = 2
//in K loop: 921129 k = 1
//in K loop: 920029 k = 0
//in J loop: 929929
//in K loop: 919919 k = 9
//in K loop: 918819 k = 8
//in K loop: 917719 k = 7
//in K loop: 916619 k = 6
//in K loop: 915519 k = 5
//in K loop: 914419 k = 4
//in K loop: 913319 k = 3
//in K loop: 912219 k = 2
//in K loop: 911119 k = 1
//in K loop: 910019 k = 0
//in J loop: 919919
//in K loop: 909909 k = 9
//in K loop: 908809 k = 8
//in K loop: 907709 k = 7
//in K loop: 906609 k = 6

