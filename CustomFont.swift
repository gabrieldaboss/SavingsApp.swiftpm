import SwiftUI

struct CustomFont: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.largeTitle)
        .foregroundColor(.customGreen)
        .kerning(1.2)
        .shadow(color: .black.opacity(0.2), radius: 3, x: 0, y: 3)
        .multilineTextAlignment(.center)
        .padding(.horizontal)
  }
}
extension View {
    func titleStyle() -> some View {
        self.modifier(CustomFont())
    }
}
