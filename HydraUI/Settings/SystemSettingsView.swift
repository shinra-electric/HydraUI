import SwiftUI

struct SystemSettingsView: View {
    @State var firmwarePath: String = ""
    @State var sdCardPath: String = ""
    @State var savePath: String = ""
    @State var sysmodulesPath: String = ""

    var body: some View {
        VStack {
            // TODO: use file importers
            HStack {
                Text("Firmware Path:")
                TextField("Firmware Path", text: $firmwarePath)
            }
            HStack {
                Text("SD Card Path:")
                TextField("SD Card Path", text: $sdCardPath)
            }
            HStack {
                Text("Save Path:")
                TextField("Save Path", text: $savePath)
            }
            HStack {
                Text("Sysmodules Path:")
                TextField("Sysmodules Path", text: $sysmodulesPath)
            }
        }
    
    }
}
