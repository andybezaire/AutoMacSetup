struct MacOSDefaults {
    static let shared = MacOSDefaults()

    let execute: ShellAccess.Execution

    init(execute: @escaping ShellAccess.Execution = ShellAccess.execute(_:)) {
        self.execute = execute
    }

    func read(_ key: Domain.Key) -> String {
        return execute(["defaults", "read", "\(key.domain)", "\(key)"])
    }
    
    func write(_ value: String, for key: Domain.Key) throws {
        
    }
}

extension MacOSDefaults {
    struct Domain {
        let path: String
    }
}

extension MacOSDefaults.Domain {
    struct Key {
        let name: String
        let domain: MacOSDefaults.Domain
    }
}

extension MacOSDefaults.Domain: CustomStringConvertible {
    var description: String { path }
}

extension MacOSDefaults.Domain.Key: CustomStringConvertible {
    var description: String { name }
}
