import SwiftUI

struct AppBar: View {
    var name: String
    
    init(name: String = "User") {
        self.name = name
    }
    
    var body: some View {
        HStack(spacing: 20) {
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title)
                    .bold()
            }
            .frame(maxWidth: .infinity)
        }
        .padding()
    }
}

struct AppBar_Previews: PreviewProvider {
    static var previews: some View {
        AppBar()
            .background(Color.gray)
    }
}
