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
                    HStack{
                        NavigationLink("HowToSave",destination: HowToSave1())
                            .padding()
                            .background(Color.customGreen)
                            .foregroundColor(.primaryBackground)
                            .cornerRadius(12)
                        
                        
                        NavigationLink("Monthly Savings",destination: MonthlySavings1())
                        
                            .padding()
                            .background(Color.customGreen)
                            .foregroundColor(.primaryBackground)
                            .cornerRadius(12)
                        NavigationLink("Ideas",destination: Ideas1())
                        
                            .padding()
                            .background(Color.customGreen)
                            .foregroundColor(.primaryBackground)
                            .cornerRadius(12)
                    }
                    
                    
                    
                    
                    
                    
                    
                    Text("SaveBetter")
                        .frame(width: 200,height: 200)
                        .titleStyle()
                    ZStack{
                        Circle()
                            .fill(Color.green.opacity(0.1))
                            .frame(width: 150,height: 150)
                            .shadow(radius: 5)
                        Circle()
                            .stroke(Color.green,lineWidth: 5)
                            .frame(width: 150,height: 150)
                        
                        Text(totalSavings)
                            .font(.title)
                            .padding(.top, 20)
                    }
                    .padding(.vertical,20)
                    
                    
                    
                    
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
                    .background(Color.customGreen)
                    .foregroundColor(.primaryBackground)
                    .cornerRadius(10)
                    .padding(.top, 20)
                    
                    Text("Total Savings: \(totalSavings)")
                        .font(.title)
                        .padding(.top, 20)
                    
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
            totalSavings = String(total)
        } else {
            totalSavings = "Type numbers only!"
        }
    }
}




