import SwiftUI

extension LocalizedStringKey: @retroactive Hashable
{
 public func hash(into hasher: inout Hasher)
 {
  hasher.combine(self.hashValue)
  hasher.combine(self.stringValue)
 }
}
