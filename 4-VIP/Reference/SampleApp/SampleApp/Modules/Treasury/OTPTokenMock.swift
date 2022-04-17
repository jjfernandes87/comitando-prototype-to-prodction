import Foundation
import XPToken
import TOTPGenerator
import XPFacialBiometricsInterface

final class OTPTokenMock: OTPCode, OTPGetterProtocol {
    
    func getOTPCode() -> String {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate,
              let auth = appDelegate.auth else {
            return ""
        }
        
        return auth.generateOTP() ?? ""
    }
    
    func otpClient(_ accountID: String, deviceID: String) -> String? {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate,
              let auth = appDelegate.auth else {
            return nil
        }
        
        return auth.generateOTP()
    }
    
    func calculateMissingSeconds(deviceID: String) -> Int {
        return 30
    }
    
    func lastCurrentTime() -> Int {
        return 30
    }
    
}
