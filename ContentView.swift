import SwiftUI

struct ContentView: View {
    @State var number1 = ""
    @State var number2 = ""
    @State var number3 = ""
    @State var number4 = ""
    @State var totalSavings = ""

    var body: some View {
        VStack {
            Circle()
                .stroke(Color.green, lineWidth: 5)
                .frame(width: 150,height: 150)
                .overlay(
                    Text("\(totalSavings)")
                        .font(.title)
                        .foregroundColor(.green))
            
            Image(systemName: "dollarsign.ring")
                .font(.system(size: 80))
                .foregroundColor(.green)
                .padding(.top, 40)

            
            Text("Savings App")
                .font(.largeTitle)
                .foregroundColor(.green)
                .padding(.bottom, 30)

            
            TextField("How much money you have", text: $number1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)


            TextField("How much you spent", text: $number3)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            TextField("How much you added", text: $number4)
                .textFieldStyle(RoundedBorderTextFieldStyle())
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


