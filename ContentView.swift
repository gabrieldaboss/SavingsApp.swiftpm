import SwiftUI

struct ContentView: View {
    @State var number1 = ""
    @State var number3 = ""
    @State var number4 = ""
    @State var totalSavings = ""
    @State var rotation = 0.0
    @State var currentTotal: Double = 0.0
    
    let goalAmount: Double = 1000.0

    var body: some View {
        VStack {
            Image(systemName: "dollarsign.ring")
                .font(.system(size: 80))
                .foregroundColor(.green)
                .padding(.top, 20)

            Text("Savings App")
                .font(.largeTitle)
                .foregroundColor(.green)
                .padding(.bottom, 30)

            ZStack {
                Circle()
                    .stroke(Color.gray.opacity(0.3), lineWidth: 20)
                    .frame(width: 200, height: 200)

                Circle()
                    .trim(from: 0.0, to: CGFloat(min(currentTotal / goalAmount, 1.0)))
                    .stroke(
                        AngularGradient(
                            gradient: Gradient(colors: [.green, .yellow, .red]),
                            center: .center
                        ),
                        style: StrokeStyle(lineWidth: 20, lineCap: .round)
                    )
                    .rotationEffect(.degrees(-90))
                    .frame(width: 200, height: 200)
                    .animation(.easeInOut(duration: 0.6), value: currentTotal)

                VStack {
                    Text("💰")
                        .font(.system(size: 50))
                    Text("$\(String(format: "%.2f", currentTotal))")
                        .font(.title2)
                        .bold()
                }
            }
            .padding(.bottom, 20)

            TextField("How much money you have", text: $number1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding(.horizontal)

            TextField("How much you spent", text: $number3)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding(.horizontal)

            TextField("How much you added", text: $number4)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding(.horizontal)

            Button("Add it up!") {
                calculateTotal()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.top, 20)

            Text("Total Savings: \(totalSavings)")
                .font(.title)
                .padding(.top, 20)

            Spacer()
        }
        .padding()
    }

    func calculateTotal() {
        if let start = Double(number1),
           let spend = Double(number3),
           let add = Double(number4) {
            let total = start - spend + add
            totalSavings = String(format: "%.2f", total)
            currentTotal = total
        } else {
            totalSavings = "Type numbers only!"
        }
    }
}

