extension MacOSDefaults.Domain.Key {
  static let orientation = Self(name: "orientation", domain: .dock)
}

extension MacOSDefaults.Domain {
  static let dock = Self(path: "com.apple.dock")
}
