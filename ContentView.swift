import SwiftUI

struct ContentView: View {
    @State var number1 = ""
    @State var number3 = ""
    @State var number4 = ""
    @State var totalSavings = ""
    @State var rotation = 0.0
    
    var body: some View {
        NavigationStack{
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
            
            ZStack{
                LinearGradient(
                    gradient: Gradient(colors: [.white,.green.opacity(0.4)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                VStack {
                  
                       
                    
                        
                    
                    
                    
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
                        
                        Spacer()
                    }
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

struct OriginView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("📖 The Origin Story")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding(.bottom, 10)
                
                Text("One sunny afternoon, while sipping on a caramel iced latte at a local café, a group of friends realized they had no idea where their money was going. One had saved $500, another had lost track of spending, and someone else kept adding cash to a jar. An idea sparked: what if there was a simple, beautiful app that could track savings, spending, and additions — all in one place?")
                
                Text("And just like that, the Savings App was born. A little tool to help you stay on top of your money, one dollar at a time 💵.")
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Origin")
    }
}

