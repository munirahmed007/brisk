public extension Dictionary where Key == String {
    func onlyStrings() -> [String: String] {
        var newDictionary = [String: String]()
        for (key, value) in self {
            newDictionary[key] = value as? String
        }

        return newDictionary
    }
}

public extension Dictionary where Key == String, Value == String {
    func filterEmpty() -> [String: String] {
        var newDictionary = [String: String]()
        for (key, value) in self where !value.isEmpty {
            newDictionary[key] = value
        }

        return newDictionary
    }
}
