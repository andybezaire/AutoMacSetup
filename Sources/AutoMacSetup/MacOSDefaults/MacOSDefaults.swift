struct MacOSDefaults {
    static let shared = MacOSDefaults()

    let execute: ShellAccess.Execution

    init(execute: @escaping ShellAccess.Execution = ShellAccess.execute(_:)) {
        self.execute = execute
    }

    func read(_ key: Domain.Key) -> String {
        return ""//execute("defaults", "read", "\(key.domain)", "\(key")
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
