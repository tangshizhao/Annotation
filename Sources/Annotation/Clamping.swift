import Foundation

@propertyWrapper
public struct Clamping<T: Comparable> {
    public var value: T
    public let min: T
    public let max: T
    
    public var wrappedValue: T {
        get {
            return value
        }
        set {
            value = Swift.max(Swift.min(newValue, max), min)
        }
    }
    
    public init(wrappedValue: T, min: T, max: T) {
        self.value = wrappedValue
        self.min = min
        self.max = max
        assert(value >= min && value <= max)
    }
    
    public init(wrappedValue: T, range: ClosedRange<T>) {
        self.value = wrappedValue
        self.min = range.lowerBound
        self.max = range.upperBound
        assert(value >= range.lowerBound && value <= range.upperBound)
    }
}
