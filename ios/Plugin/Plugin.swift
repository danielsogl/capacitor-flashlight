import Foundation
import Capacitor

@objc(FlashlightPlugin)
public class FlashlightPlugin: CAPPlugin {    
    @objc func isAvailable(_ call: CAPPluginCall) {        
        call.resolve([
            "value": true
        ])
    }
    
    @objc func switchOn(_ call: CAPPluginCall) {
        let intensity = call.getFloat("intensity") ?? 1.0
         call.success()
    }
    
    @objc func switchOff(_ call: CAPPluginCall) {
        call.success()
    }
    
    @objc func isSwitchedOn(_ call: CAPPluginCall) {
        call.resolve([
            "value": true
        ])
    }
}
