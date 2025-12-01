import SwiftUI

struct CpuSettingsView: View {
    @State private var cpuBackend: CpuBackends = .hypervisor
    
    private enum CpuBackends: Hashable {
        case hypervisor, dynarmic
    }
    
    var body: some View {
        VStack {
            Picker("CPU backend", selection: $cpuBackend) {
                Text("Apple Hypervisor (recommended)")
                    .tag(CpuBackends.hypervisor)
                Text("dynarmic")
                    .tag(CpuBackends.dynarmic)
            }
        }
    }
}
