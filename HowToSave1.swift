import SwiftUI

struct HowToSave1: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.white, .green.opacity(0.3)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("💰 7 Smart Save Hacks 💰")
                    .font(.system(size: 40, weight: .bold))
                    .padding(.top, -200)
                
                VStack(spacing: 20) {
                    HStack {
                        Image(systemName: "creditcard.fill")
                        Text("Track Spending")
                    }
                    HStack {
                        Image(systemName: "chart.bar.fill")
                        Text("Set a Budget")
                    }
                    HStack {
                        Image(systemName: "target")
                        Text("Goal It!")
                    }
                    HStack {
                        Image(systemName: "gearshape.fill")
                        Text("Auto-Save")
                    }
                    HStack {
                        Image(systemName: "cart.fill")
                        Text("Plan Groceries")
                    }
                    HStack {
                        Image(systemName: "bag.fill")
                        Text("Pack Lunch")
                    }
                    HStack {
                        Image(systemName: "tv.slash.fill")
                        Text("Cut Cable")
                    }
                }
                .font(.title2)
                .padding(.top, -150)
                
                Text("✨ Be Smart. Save Better! ✨")
                    .font(.title)
                    .padding(.top, 50)
            }
            .foregroundStyle(.green)
        }
    }
}

#Preview {
    HowToSave1()
}

