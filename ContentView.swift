import SwiftUI

struct ContentView: View {
    @State var number1 = ("")
    @State var number2 = ("")
    @State var number3 = ("")
    @State var number4 = ("")
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
  
            
            
            HStack{

                TextField("Savings",text: $number1)
            
            
                TextField("Enter det",text: $number2)
                
            TextField("spending $",text: $number3)
                
                TextField("adding $",text: $number4)
        
            

            }
        }
        
    }
       
}
