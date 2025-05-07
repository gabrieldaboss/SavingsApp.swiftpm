import SwiftUI
struct HowToSave1: View {
    var body: some View {
        VStack{
            Text("Best Way To Save In 7 Steps")
                .padding(.top,-270)
                .font(.largeTitle)
            VStack(alignment: .leading , spacing: nil, content:{
                Text("1. Track your spending. One of the greatest contributors to overspending is a credit card ")
                           Text("2. Establish a budget")
                           Text("3. Set up savings goals")
                           Text("4. Use an automated tool")
                           Text("5. Prepare for grocery shopping in advance")
                           Text("6. Bring your lunch to work")
                           Text("7. Stop paying for cable television")
                    
                           
                          
           

            })
            .padding(.top, -200)
            .font(.title2)

            
           
            Text("Be Smart Save Better ")
                .padding(.top, 100)
                .font(.largeTitle)
        
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [.white,.green.opacity(0.4)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            
            
            VStack{
                
                
                
                
                Text("Best Way To Save In 7 Steps")
                    .padding(.top,-270)
                    .font(.largeTitle)
                VStack(alignment: .leading , spacing: nil, content:{
                    Text("1. Track your spending. One of the greatest contributors to overspending is a credit card ")
                    Text("2. Establish a budget")
                    Text("3. Set up savings goals")
                    Text("4. Use an automated tool")
                    Text("5. Prepare for grocery shopping in advance")
                    Text("6. Bring your lunch to work")
                    Text("7. Stop paying for cable television")
                    
                    
                    
                    
                    
                    
                    
                })
                .padding(.top, -200)
                .font(.title2)
                
                
                
                Text("Be Smart Save Better ")
                    .padding(.top, 100)
                    .font(.largeTitle)
                
                
                
            }
        }
        .fontWeight(.bold)
        .foregroundStyle(.green)
    }
}
    
    #Preview{
        HowToSave1()
        
    }

