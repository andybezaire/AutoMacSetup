import Foundation

struct ShellAccess {
    typealias Execution = (_ arguments: [String]) -> String
    static func execute(_ arguments: [String]) -> String {
        let task = Process()
        let pipe = Pipe()
        
        task.standardOutput = pipe
        task.standardError = pipe
        task.launchPath = "/usr/bin/env"
        task.arguments = arguments
        task.launch()
        task.waitUntilExit()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: .utf8)!
            .trimmingCharacters(in: .whitespacesAndNewlines)
        
        return output
    }
}
