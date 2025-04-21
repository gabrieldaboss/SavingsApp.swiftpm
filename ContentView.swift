import SwiftUI

struct ContentView: View {
    @State var number1 = ("")
    @State var number2 = ("")
    @State var number3 = ("")
    
    var body: some View {
        VStack {
            Image(systemName: "dollarsign.ring")
                .padding(.top,-315)
                .font(.largeTitle)
                .foregroundColor(.green)
            Text("Savings App")
                .padding(.top, -360)
                .font(Font.largeTitle)
                
                .foregroundColor(.green)
            
                .foregroundColor(.accentColor)
  
            
            
            
                TextField("Savings",text: $number1)
                
                    .padding(.horizontal,170)
                    .padding(.top, -145)
            
                TextField("Enter your deduction",text: $number2)
            TextField("Add Amount",text: $number3)
        
            
        }
        
    }
       
}
