import SwiftUI

struct ContentView: View {
    @StateObject var messagesManager = MessagesManager()
    
    var body: some View {
        VStack {
            VStack {
                AppBar()
                ScrollViewReader { proxy in
                    ScrollView {
                        ForEach(messagesManager.messages, id: \.id) { msg in
                            MessageBubble(message: msg)
                        }
                    }
                    .padding(.top, 10)
                    .background(Color.white)
                    .onChange(of: messagesManager.lastMessageId) { id in
                        withAnimation {
                            proxy.scrollTo(id, anchor: .bottom)
                        }
                    }
                }
            }
            .background(Color.blue)
            
            MessageField()
                .environmentObject(messagesManager)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
