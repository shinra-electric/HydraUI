import SwiftUI

struct AudioSettingsView: View {
    @State private var audioBackend: AudioBackends = .cubeb
    
    private enum AudioBackends: Hashable {
        case none, cubeb
    }
    

    var body: some View {
        VStack {
            Picker("Audio backend", selection: $audioBackend) {
                Text("Null (recommended)")
                    .tag(AudioBackends.none)
                Text("Cubeb (experimental)")
                    .tag(AudioBackends.cubeb)
            }
        }
       
    }
}
