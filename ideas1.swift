import SwiftUI

struct Ideas1: View {
    @State private var ideaText: String = ""
    @State private var ideasList: [String] = []

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.white, .green.opacity(0.4)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack {
                Text("Share your ideas")
                    .font(.custom("Baskerville-semiBold", size: 25))
                    .padding()

                TextField("Type here...", text: $ideaText)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)

                Button("Submit") {
                    if !ideaText.isEmpty {
                        ideasList.append(ideaText)
                        ideaText = ""
                    }
                }
                .padding()
                .background(Color.green.opacity(0.7))
                .foregroundColor(.white)
                .cornerRadius(8)

                List(ideasList, id: \.self) { idea in
                    Text(idea)
                }
                .padding(.top)
            }
            .padding()
        }
    }
}

#Preview {
    Ideas1()
}

