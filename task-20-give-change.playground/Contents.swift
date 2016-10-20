// naive fast approach

func change(mta: Int, cost: Int) -> [String: Int] {

    var dict: [String: Int] = [:]
    var bill: Int = mta
    
    bill -= cost
    
    let dollors: Int = bill / 100
    dict["dollor"] = dollors
    bill -= dollors * 100
    
    let quaters: Int = bill / 25
    dict["quater"] = quaters
    bill -= quaters * 25
    
    let dims: Int = bill / 10
    dict["dims"] = dims
    bill -= dims * 10
    
    let nics: Int = bill / 5
    dict["nics"] = nics
    bill -= nics * 5
    
    dict["pens"] = bill
    
    return dict
}

print(change(mta: 500, cost: 109))
// ["nics": 1, "dollor": 3, "dims": 1, "quater": 3, "pens": 1]

print(change(mta: 500, cost: 103))
// ["nics": 0, "dollor": 3, "dims": 2, "quater": 3, "pens": 2]