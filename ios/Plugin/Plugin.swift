import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(FlashlightPlugin)
public class FlashlightPlugin: CAPPlugin {
    
    @objc func isAvailable(_ call: CAPPluginCall) {
        call.success([
            "value": true
        ])
    }
    
    @objc func switchOn(_ call: CAPPluginCall) {
        let intensity = call.getDouble("intensity") ?? 1.0
        call.success()
    }
    
    @objc func switchOff(_ call: CAPPluginCall) {
        call.success()
    }
    
    @objc func isSwitchedOn(_ call: CAPPluginCall) {
        call.success([
            "value": true
        ])
    }
}
