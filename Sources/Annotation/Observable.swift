import Foundation

@propertyWrapper
public struct Observable<Value> {
    public var value: Value {
        willSet {
            willSet?(newValue)
        }
        didSet {
            didSet?(oldValue)
        }
    }
    public var didSet: ((Value) -> Void)?
    public var willSet: ((Value) -> Void)?
    
    
    public var wrappedValue: Value {
        get {
           return value
        }
        set {
            value = newValue
        }
    }
    
    public init(wrappedValue: Value, willSet: ((Value) -> Void)? = nil, didSet: ((Value) -> Void)? = nil) {
        self.value = wrappedValue
        self.willSet = willSet
        self.didSet = didSet
    }
}
