import UIKit

class Person{
    var name: String
    var document: String
    var taxPercentage: Double
    
    init(name: String, document:String, taxPercentage: Double){
        self.document = document
        self.name = name
        self.taxPercentage = taxPercentage
    }
    
    func calculateTaxSell(value: Double) -> Double {
        return taxPercentage * value
    }
}


class Juridic : Person{
    var isMei: Bool
    init(name: String, document: String, taxPercentage: Double, isMei: Bool) {
         self.isMei = isMei
        super.init(name: name, document: document, taxPercentage: taxPercentage)
    }
    override func calculateTaxSell(value: Double) -> Double {
        return isMei ? (value * 0.10) : super.calculateTaxSell(value: value)
    }
}
class Fisic : Person{
    var nameFather: String
    var nameMother: String
    init(name: String, document: String, taxPercentage: Double, nameMother: String, nameFather:String) {
        self.nameFather = nameFather
        self.nameMother = nameMother
        super.init(name: name, document: document, taxPercentage: taxPercentage)
    }
    override func calculateTaxSell(value: Double) -> Double {
        return value * 0.07
    }
}
