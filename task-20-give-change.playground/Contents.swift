// naive fast approach

func change(mta: Int, cost: Int) -> [String: Int] {

    var dict: [String: Int] = [:]
    var bill: Int = mta
    
    bill -= cost
    
    let dollors: Int = bill / 100
    dict["dollar"] = dollors
    bill -= dollors * 100
    
    let quaters: Int = bill / 25
    dict["quater"] = quaters
    bill -= quaters * 25
    
    let dims: Int = bill / 10
    dict["dime"] = dims
    bill -= dims * 10
    
    let nics: Int = bill / 5
    dict["nickel"] = nics
    bill -= nics * 5
    
    dict["penny"] = bill
    
    return dict
}

print(change(mta: 500, cost: 109))
// ["nickel": 1, "dollar": 3, "penny": 1, "quater": 3, "dime": 1]

print(change(mta: 500, cost: 103))
// ["nickel": 0, "dollar": 3, "penny": 2, "quater": 3, "dime": 2]
