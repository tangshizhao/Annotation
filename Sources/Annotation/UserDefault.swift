import Foundation

@propertyWrapper
public struct UserDefault<T> {
    
    /// The  'Key' use to get and set value for
    public let key: String
    
    /// Default value if it not exist in UserDefaults
    public let `default`: T
    
    /// Implemention for property wrapper
    public var wrappedValue: T {
        get {
            return (UserDefaults.standard.object(forKey: key) as? T) ?? `default`
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
    
    /// Initializer to create a new UserDefault property
    /// - Parameter key: The  'Key' use to get and set value for
    /// - Parameter default: Default value if it not exist in UserDefaults
    public init(key: String, `default`: T) {
        self.key = key
        self.`default` = `default`
    }
    
    public init(wrappedValue: T, key: String) {
        self.key = key
        self.`default` = wrappedValue
    }
}
