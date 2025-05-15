import SwiftUI

struct Ideas1: View {
    @State private var ideaText: String = ""
    @State private var ideasList: [String] = []
    @State private var showAlert: Bool = false

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.white, .green.opacity(0.4)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("Share your ideas!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 50)

                TextField("Type your idea here...", text: $ideaText)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 2)
                    )
                    .padding(.horizontal, 40)
                    .font(.title2)

                Button(action: {
                    if !ideaText.isEmpty {
                        ideasList.append(ideaText)
                        showAlert = true
                        ideaText = ""
                    }
                }) {
                    Text("Submit")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: 200)
                        .background(Color.green.opacity(0.8))
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .shadow(radius: 5)
                }

                List {
                    ForEach(ideasList, id: \.self) { idea in
                        Text(idea)
                    }
                }
                .frame(height: 300)
                .cornerRadius(12)
                .padding(.horizontal, 20)

                Spacer()
            }
            .padding()
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Thank you!"), message: Text("Your idea was saved."), dismissButton: .default(Text("OK")))
        }
    }
}

#Preview {
    Ideas1()
}

