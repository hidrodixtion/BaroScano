//
//  ViewController.swift
//  BarScan
//
//  Created by Adi Nugroho on 2/3/17.
//  Copyright © 2017 Lonely Box. All rights reserved.
//

import UIKit
//import BarcodeScanner

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onBtnScanClicked(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "BarcodeScanner", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "BarcodeScannerViewControllerScene") as! BarcodeScannerViewController
        controller.barcodeScanned = { [unowned self] code in
            self.lblResult.text = code
            self.navigationController?.popViewController(animated: true)
        }
        
        navigationController?.pushViewController(controller, animated: true)
//        let controller = BarcodeScannerController()
//        controller.codeDelegate = self
//        controller.errorDelegate = self
//        controller.dismissalDelegate = self
//        
//        present(controller, animated: true, completion: nil)
        
    }

}
