import Foundation
struct SavingsEntry: Identifiable{
    let id = UUID()
    let date: Date
    let goal: Double
    let spent: Double
    let added: Double
    
    var total: Double{
        goal - spent + added
    }
}
