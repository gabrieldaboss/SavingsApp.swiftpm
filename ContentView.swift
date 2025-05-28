import SwiftUI

struct ContentView: View {
    
    @State var number1 = ""
    @State var number3 = ""
    @State var number4 = ""
    @State var totalSavings = ""
    @State var rotation = 0.0
    @State var selectedDate = Date()
    @State var savingsHistory: [SavingsEntry] = []
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
                
                ScrollView{
                    VStack(spacing: 15) {
                        // Navigation Buttons
                        HStack(spacing: 10) {
                            NavigationLink("HowToSave", destination: HowToSave1())
                                .padding(.vertical,8)
                                .padding(.horizontal,12)
                                .background(Color.customGreen)
                                .foregroundColor(.primaryBackground)
                                .cornerRadius(12)
                            
                            NavigationLink("Monthly Savings", destination: MonthlySavings1())
                                .padding(.vertical,8)
                                .padding(.horizontal,12)
                                .background(Color.customGreen)
                                .foregroundColor(.primaryBackground)
                                .cornerRadius(12)
                            
                            NavigationLink("Ideas", destination: Ideas1())
                                .padding(.vertical,8)
                                .padding(.horizontal,12)
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
                            .padding(.bottom, 5)
                        
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
                        .padding(.bottom, 15)
                        
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
                        
                        DatePicker(
                            "Pick a Date",
                            selection: $selectedDate,
                            displayedComponents: [.date]
                        )
                        .datePickerStyle(.graphical)
                        .scaleEffect(0.7)
                        .frame(maxWidth: 220,maxHeight: 200)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 12).fill(Color.white.opacity(0.3)))
                        
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
                        
                        let filteredEntries = savingsHistory.filter {
                            Calendar.current.isDate($0.date, inSameDayAs: selectedDate)
                        }
                        
                        if !filteredEntries.isEmpty {
                            ForEach(filteredEntries) { entry in
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Goal: \(entry.goal, specifier: "%.2f")")
                                    Text("Spent: \(entry.spent, specifier: "%.2f")")
                                    Text("Added: \(entry.added, specifier: "%.2f")")
                                    Text("Total: \(entry.total, specifier: "%.2f")")
                                }
                                .padding()
                                .background(Color.white.opacity(0.3))
                                .cornerRadius(8)
                            }
                        } else {
                            Text("No savings data for this date.")
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                    }
                    .padding()
                }
            }
        }
    }
    
    // Function to calculate and store savings
    func calculateTotal() {
        if let start = Double(number1),
           let spend = Double(number3),
           let add = Double(number4) {
            
            let entry = SavingsEntry(date: selectedDate, goal: start, spent: spend, added: add)
            savingsHistory.append(entry)
            totalSavings = String(format: "%.2f", entry.total)
        } else {
            totalSavings = "Type numbers only!"
        }
    }
}
