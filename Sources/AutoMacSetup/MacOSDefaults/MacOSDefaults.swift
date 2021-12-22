struct MacOSDefaults {
  typealias KeyReader = (_ key: Domain.Key) -> String

  let read: KeyReader

  init(reader: @escaping KeyReader) {
    self.read = reader
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
