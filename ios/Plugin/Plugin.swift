import Foundation
import Capacitor
import AVFoundation

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(FlashlightPlugin)
public class FlashlightPlugin: CAPPlugin {
    let device = AVCaptureDevice.default(for: AVMediaType.video)
    
    @objc func isAvailable(_ call: CAPPluginCall) {
        let result = device?.hasTorch
        
        call.success([
            "value": result ?? false
        ])
    }
    
    @objc func switchOn(_ call: CAPPluginCall) {
        let intensity = call.getFloat("intensity") ?? 1.0

        do {
            try device?.setTorchModeOn(level: intensity)
            call.success()
        } catch {
            call.error("Flaslight could not be turned on")
        }
    }
    
    @objc func switchOff(_ call: CAPPluginCall) {
        call.success()
    }
    
    @objc func isSwitchedOn(_ call: CAPPluginCall) {
        let result = device?.isTorchActive;
        
        call.success([
            "value": result ?? false
        ])
    }
}
