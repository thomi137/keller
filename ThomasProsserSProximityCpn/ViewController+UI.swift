//
// Please report any problems with this app template to contact@estimote.com
//

import Foundation
import UIKit

// Adds UI-related methods to ViewController class.
extension ViewController {
    func updateTempView(tempInfo: NSNumber) {
        UIView.animate(withDuration: 0.2) {
  
        }
    }
    
    func hideViewIfNeeded(view: UIView, shouldBeHidden hidden: Bool) {
        if view.isHidden != hidden {
            view.isHidden = hidden
        }
    }
    
    func addBeaconTempView( tempInfo: NSNumber){

        self.tempLabel.text = String(format:
            NSLocalizedString("Temperature is %.1f °C", tableName: nil, bundle: Bundle.main, value:"" , comment: ""), tempInfo.doubleValue)
        
    }
    
    func addBeaconPressureView(pressureInfo: NSNumber){
        self.pressureView.text = String(format:
            NSLocalizedString("Pressure is %.1f hPa", tableName: nil, bundle: Bundle.main, value:"" , comment: ""), pressureInfo.doubleValue/100)
        
    }
    
    func presentFetchingColorsFailedAlert() {
        let alert = UIAlertController(title: "Fetching colors failed", message: "Check your internet connection, App ID and App Token.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func presentMonitoringFailedAlert() {
        let alert = UIAlertController(title: "Monitoring failed", message: "Make sure bluetooth is on and the app has permission to use it.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

