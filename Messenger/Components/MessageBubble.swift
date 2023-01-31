//
//  MessageBubble.swift
//  Messenger
//
//  Created by Akhil1 Singh on 31/01/23.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    var body: some View {
        VStack(alignment: message.received ?.leading : .trailing) {
            HStack{
                Text(message.text)
                    .padding()
                    .background(message.received ? Color("Gray") : Color("Blue"))
                    .cornerRadius(30)
            } .frame(maxWidth: 250, alignment: message.received ?.leading : .trailing)
            
        } .frame(maxWidth: .infinity, alignment: message.received ?.leading : .trailing)
            .padding(message.received ?.leading : .trailing)
            .padding(.horizontal, 10)
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "1", text: "temp", received: false, timestamp: Date()))
    }
}
