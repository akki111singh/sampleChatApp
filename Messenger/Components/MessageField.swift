import SwiftUI

struct MessageField: View {
    @EnvironmentObject var messageManager : MessagesManager
    @State private var Inputmessage = ""
    var body: some View {
        HStack {
            CustomInputTextField(placeholder: Text("Enter Message"), text: $Inputmessage)
                .frame(height: 42)
    
            Button {
                messageManager.sendMessage(text: Inputmessage)
                Inputmessage = ""
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(12)
                    .background(Color("Peach"))
                    .cornerRadius(40)
            }
        }
        .padding(.vertical, 10)
        .padding(.horizontal)
        .cornerRadius(50)
        .background(Color("Gray"))
        .padding()
    }
}

struct MessageField_Previews: PreviewProvider {
    static var previews: some View {
        MessageField()
            .environmentObject(MessagesManager())
    }
}

struct CustomInputTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }

    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                .opacity(0.4)
            }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}
