import SwiftUI

struct GraphicsSettingsView: View {
    @State private var gpuRenderer: HydraGpuRenderer = .metal
    @State private var shaderBackend: HydraShaderBackend = .msl
    @State private var displayResolution: HydraResolution = .auto
    
    private enum HydraGpuRenderer: Hashable {
        case metal
    }
    
    private enum HydraShaderBackend: Hashable {
        case msl, air
    }
    
    private enum HydraResolution: Hashable {
        case auto, p720, p1080, p1440, p2160, p4320, autoExact, custom
    }

    var body: some View {
        VStack {
            Picker("Gpu renderer", selection: $gpuRenderer) {
                Text("Metal (recommended)")
                    .tag(HydraGpuRenderer.metal)
            }
          
            Picker("Shader backend", selection: $shaderBackend) {
                Text("MSL (recommended)").tag(HydraShaderBackend.msl)
                Text("AIR (broken)").tag(HydraShaderBackend.air)
            }
        
            Picker("Display resolution", selection: $displayResolution) {
                Text("Auto (recommended)")
                    .tag(HydraResolution.auto)
                Text("720p")
                    .tag(HydraResolution.p720)
                Text("1080p")
                    .tag(HydraResolution.p1080)
                Text("1440p")
                    .tag(HydraResolution.p1440)
                Text("2160p")
                    .tag(HydraResolution.p2160)
                Text("4320p")
                    .tag(HydraResolution.p4320)
                Text("Auto exact (not recommended)")
                    .tag(HydraResolution.autoExact)
                Text("Custom (not recommended)")
                    .tag(HydraResolution.custom)
            }
           
        }

    }
}
