//
// Please report any problems with this app template to contact@estimote.com
//

import UIKit

class ViewController: UIViewController {
    
    let beaconIdentifiers = ["2bf6fd22d71320eb3ac948cf245cc007",
                             "038a9a8ec42b7c617a22a0f9a55b1e10",
                             "55c20936191746a602f41792d92c9326"]
    let shortIdentifiers = ["2bf6fd22d71320eb"]
    let cloudManager = CloudManager()
    let proximityManager = ProximityManager()
    let deviceManager = ESTDeviceManager()
    
    var tempView = [String: UIView]()
    
    @IBOutlet weak var noBeaconsView: UIView!
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        let tempNotification = ESTTelemetryNotificationTemperature { (tempInfo) in
            
            if(self.shortIdentifiers.contains(tempInfo.shortIdentifier)){
            
            print("beacon ID: \(tempInfo.shortIdentifier), "
                + "temperature: \(tempInfo.temperatureInCelsius) °C")
            self.addBeaconTempView(tempInfo: tempInfo.temperatureInCelsius)
           }
        }
        
        self.deviceManager.register(forTelemetryNotification: tempNotification)
        
    }
}

extension ViewController: ProximityManagerDelegate {
    
    func proximityManager(_ proximityManager: ProximityManager, didUpdateBeaconsInRange identifiers: Set<String>) {
        
        // Step 3: Update UI dependant on which beacons are in range
        //self.updateBeaconZoneViews(beaconIdentifiersInRange: identifiers)
    }

    func proximityManager(_ proximityManager: ProximityManager, didFailWithError: Error) {
        self.presentMonitoringFailedAlert()
    }
}

