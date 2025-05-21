import SwiftUI

struct ContentView: View {
    @State var number1 = ""
    @State var number3 = ""
    @State var number4 = ""
    @State var totalSavings = ""
    @State var rotation = 0.0

    var body: some View {
        NavigationStack {
            ZStack {
                // Background Gradient
                LinearGradient(
                    gradient: Gradient(colors: [.white, .green.opacity(0.4)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                VStack(spacing: 20) {
                    // Navigation Buttons
                    HStack {
                        NavigationLink("HowToSave", destination: HowToSave1())
                            .padding()
                            .background(Color.customGreen)
                            .foregroundColor(.primaryBackground)
                            .cornerRadius(12)

                        NavigationLink("Monthly Savings", destination: MonthlySavings1())
                            .padding()
                            .background(Color.customGreen)
                            .foregroundColor(.primaryBackground)
                            .cornerRadius(12)

                        NavigationLink("Ideas", destination: Ideas1())
                            .padding()
                            .background(Color.customGreen)
                            .foregroundColor(.primaryBackground)
                            .cornerRadius(12)
                    }
                    .padding(.top)

                    Spacer()

                    // Title
                    Text("SaveBetter")
                        .frame(width: 200, height: 50)
                        .titleStyle()
                        .padding(.bottom, 10)

                    // Circle Savings Display
                    ZStack {
                        Circle()
                            .fill(Color.green.opacity(0.1))
                            .frame(width: 150, height: 150)
                            .shadow(radius: 5)
                        Circle()
                            .stroke(Color.green, lineWidth: 5)
                            .frame(width: 150, height: 150)

                        Text(totalSavings)
                            .font(.title)
                    }
                    .padding(.bottom, 20)

                    // TextFields
                    TextField("Savings Goal", text: $number1)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                        .padding(.horizontal)

                    TextField("Amount spent", text: $number3)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                        .padding(.horizontal)

                    TextField("How much you added", text: $number4)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                        .padding(.horizontal)

                    // Button
                    Button("Add it up!") {
                        calculateTotal()
                    }
                    .padding()
                    .background(Color.customGreen)
                    .foregroundColor(.primaryBackground)
                    .cornerRadius(10)

                    // Result Text
                    Text("Total Savings: \(totalSavings)")
                        .font(.title)
                        .padding(.top, 10)

                    Spacer()
                }
                .padding()
            }
        }
    }

    // Calculate Savings Function
    func calculateTotal() {
        if let start = Double(number1),
           let spend = Double(number3),
           let add = Double(number4) {
            let total = start - spend + add
            totalSavings = String(total)
        } else {
            totalSavings = "Type numbers only!"
        }
    }
}
