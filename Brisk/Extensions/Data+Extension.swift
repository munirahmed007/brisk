import Foundation

public extension Data {
    func toJSONDictionary() -> [String: Any]? {
        return (try? JSONSerialization.jsonObject(with: self, options: [])) as? [String: Any]
    }
}
