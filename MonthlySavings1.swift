import SwiftUI

struct MonthlySavings1: View {
    @State private var monthlyTotal: String = ""
    @State private var dailyGoal: Double = 0.0
    @State private var weeklyGoal: Double = 0.0
    
    var body: some View {
       
        
        ZStack{
            
            LinearGradient(
                gradient: Gradient(colors: [.white,.green.opacity(0.4)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            
            
            
            
            
            
            VStack(spacing: 20) {
                Text("Monthly Savings Calculator")
                    .font(.custom("Baskerville-semiBold", size: 25))
                    .fontWeight(.bold)
                
                TextField("Enter Monthly Total", text: $monthlyTotal)
                    .keyboardType(.decimalPad)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                Button("Calculate") {
                    calculateGoals()
                }
                .font(.headline)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(12)
                .padding(.horizontal)
                
                Text("Daily Goal (÷ 28): $\(dailyGoal, specifier: "%.2f")")
                Text("Weekly Goal (÷ 4): $\(weeklyGoal, specifier: "%.2f")")
                
                Spacer()
            }
            .padding()
        }
      
        }
    

func calculateGoals() {
    guard let total = Double(monthlyTotal) else {
        dailyGoal = 0.0
        weeklyGoal = 0.0
        return
    }
    dailyGoal = total / 28
    weeklyGoal = total / 4
}
}

    
    #Preview {
        MonthlySavings1()
    }
    

