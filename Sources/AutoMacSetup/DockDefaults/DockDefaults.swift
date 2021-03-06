class DockDefaults {
    
    static let shared = DockDefaults()
    
    func read(_ key: MacOSDefaults.Domain.Key) -> String {
        let response = ShellAccess.execute(["defaults", "read", "\(key.domain.path)", "\(key.name)"])
        return response
    }
}
