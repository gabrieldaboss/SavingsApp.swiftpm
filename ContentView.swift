import SwiftUI

struct ContentView: View {
    @State var number1 = ""
    @State var number3 = ""
    @State var number4 = ""
    @State var totalSavings = ""
    @State var rotation = 0.0
    
    var body: some View {
        NavigationStack{
            ZStack{
                
                LinearGradient(
                    gradient: Gradient(colors: [.white,.green.opacity(0.4)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                VStack(spacing:20) {
                    Spacer()
                    HStack{
                        NavigationLink("HowToSave",destination: HowToSave1())
                            .padding()
                            .background(Color.customGreen)
                            .foregroundColor(.primaryBackground)
                            .cornerRadius(12)
                            .padding(.bottom,-7)
                        
                            
                        
                        
                        NavigationLink("Monthly Savings",destination: MonthlySavings1())
                        
                            .padding()
                            .background(Color.customGreen)
                            .foregroundColor(.primaryBackground)
                            .cornerRadius(12)
                            .padding(.bottom,-7)
                        NavigationLink("Ideas",destination: Ideas1())
                        
                            .padding()
                            .background(Color.customGreen)
                            .foregroundColor(.primaryBackground)
                            .cornerRadius(12)
                            .padding(.bottom,-7)
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    Text("SaveBetter")
                        .frame(width: 200,height: 200)
                        .titleStyle()
                        .padding(.bottom,30)
                        .font(.custom("Baskerville-semiBold", size: 25))
                    
                    ZStack{
                        Circle()
                            .fill(Color.green.opacity(0.1))
                            .frame(width: 150, height: 150)
                            .shadow(radius: 5)
                        Circle()
                            .stroke(Color.green, lineWidth: 5)
                            .frame(width: 150, height: 150)

                        Text(totalSavings)
                            .font(.custom("Baskerville-semiBold", size: 25))
                            .padding(.top, 20)
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
            }
        }
        
        

    }
    func calculateTotal() {
        if let start = Double(number1),
           let spend = Double(number3),
           let add = Double(number4) {
            let total = start - spend + add
            totalSavings = String(format: "%.2f", total)
        } else {
            totalSavings = "Type numbers only!"
        }
    }
}

