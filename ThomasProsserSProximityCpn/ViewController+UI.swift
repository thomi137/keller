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
        
        let tempLabel = UILabel()
        tempLabel.translatesAutoresizingMaskIntoConstraints = false
        tempLabel.backgroundColor = UIColor.colorForEstimoteColor(.blueberryPie)
        tempLabel.textAlignment = .center
        tempLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
        tempLabel.textColor = UIColor.white
        tempLabel.text = "Temperature is \(tempInfo) C"
        self.view.addSubview(tempLabel)

        self.stackView.addArrangedSubview(tempLabel)
        
        self.tempView["temp"] = tempLabel
        
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

