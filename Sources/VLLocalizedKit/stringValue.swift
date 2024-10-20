import SwiftUI

public extension LocalizedStringKey
{
 /// Converts the localized string key to its corresponding string representation.
 ///
 /// - Returns: A string representation of the localized string key.
 var stringValue: String
 {
  let mirror = Mirror(reflecting: self)
  if let str = mirror.children.first(where: { $0.label == "key" })?.value as? String
  {
   return NSLocalizedString(str, comment: "")
  }

  return ""
 }

 @available(*, deprecated, renamed: "stringValue", message: "Replaced by .stringValue property")
 func toString() -> String
 {
  self.stringValue
 }
}
