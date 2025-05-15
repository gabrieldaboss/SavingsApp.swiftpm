import SwiftUI

struct Ideas1: View {
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.white, .green.opacity(0.4)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            Text("")
        }
    }
}
    #Preview {
        Ideas1()
    }
    

