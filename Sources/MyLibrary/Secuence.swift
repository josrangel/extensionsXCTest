public extension Sequence{
    var first: Element? {
        first{ _ in true }
    }
}

public extension Sequence where Element : AdditiveArithmetic{
    var suma: Element? {
        guard let first = first else {
            return nil
        }
        return dropFirst().reduce(first,+)
        
    }
    
}
/*public extension Sequence where Element : AdditiveArithmetic{
    var suma: Element {
        reduce(.zero, +)
    }
}*/
/*public extension Sequence where Element == Int{
    var suma: Element {
        reduce(0, +)
    }
}

public extension Sequence where Element == Double{
    var suma: Element {
        reduce(0, +)
    }
}*/
