import SwiftUI
import VLStringKit

public extension LocalizedStringKey
{
 /// Returns the pluralized form of the string based on the given count.
 ///
 /// - Parameter count: The count to determine the pluralization form.
 /// - Returns: A string that reflects the appropriate pluralization for the given count.
 func pluralized(count: Double) -> String
 {
  self.stringValue.pluralized(count: count)
 }

 /// Returns the pluralized form of the string based on the given count.
 ///
 /// - Parameter count: The count to determine the pluralization form.
 /// - Returns: A string that reflects the appropriate pluralization for the given count.
 func pluralized(count: Int) -> String
 {
  self.stringValue.pluralized(count: count)
 }
}
