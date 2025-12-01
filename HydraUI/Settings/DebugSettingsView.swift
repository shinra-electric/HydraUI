import SwiftUI

struct DebugSettingsView: View {
//    @State var logOutput: HydraLogOutput = HYDRA_LOG_OUTPUT_INVALID
    @State var logFsAccess = false
    @State var debugLogging = false
    // TODO: process args
    @State var gdbEnabled = false
    @State var gdbPort: UInt16 = 0
    @State var gdbWaitForClient = false
    
    @State private var logOutput: DebugLogOutput = .file
    private enum DebugLogOutput: Hashable {
        case none, stdout, file
    }

    var body: some View {
        VStack {
            Picker("Log output", selection: $logOutput) {
                Text("none (not recommended)")
                    .tag(DebugLogOutput.none)
                Text("stdout")
                    .tag(DebugLogOutput.stdout)
                Text("file (default)").tag(DebugLogOutput.file)
            }

            Toggle("Log filesystem access", isOn: self.$logFsAccess)
           
            Toggle("Debug logging", isOn: self.$debugLogging)
  
            // TODO: process arguments

            Text("GDB")
            Toggle("Enabled", isOn: self.$gdbEnabled)
              
            TextField("Port", value: self.$gdbPort, formatter: NumberFormatter())
              
            Toggle("Wait for client", isOn: self.$gdbWaitForClient)
                
        }
    }
}
