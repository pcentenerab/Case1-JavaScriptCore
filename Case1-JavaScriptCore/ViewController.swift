//
//  ViewController.swift
//  Case1-JavaScriptCore
//
//  Created by Patricia on 22/04/2020.
//  Copyright © 2020 IWEB. All rights reserved.
//

import UIKit
import JavaScriptCore

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var lessButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    var valor: JSManagedValue!
    var context: JSContext!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let web3ScriptPath = Bundle.main.path(forResource: "packedWeb3", ofType: "js", inDirectory: "JavascriptCode")
        let web3ScriptString = try! String(contentsOfFile: web3ScriptPath!, encoding: .utf8)
        print("Web3 importado")
        
        //let web3ScriptURL = Bundle.main.url(forResource: "packedWeb3", withExtension: "js", subdirectory: "JavascriptCode")
        //print("Web3 importado")
        
        let abiPath = Bundle.main.path(forResource: "contractAbi", ofType: "json", inDirectory: "JavascriptCode")
        let abiString = try! String(contentsOfFile: abiPath!, encoding: .utf8)
        let jsonAbiData = abiString.data(using: .utf8, allowLossyConversion: false)!
        let jsonAbiArray = try! JSONSerialization.jsonObject(with: jsonAbiData, options: .mutableContainers) as! Array<Any>
        print("Abi importado")
        
        let appScriptPath = Bundle.main.path(forResource: "app", ofType: "js", inDirectory: "JavascriptCode")
        let appScriptString = try! String(contentsOfFile: appScriptPath!, encoding: .utf8)
        print("App importada")
        
        self.context = JSContext()
        self.context.exceptionHandler = { context, exception in
            print(exception!.toString() as Any)
        }
        print("ExceptionHandler configurado")
        
 
        //self.context.evaluateScript(try String(contentsOf: web3ScriptURL!), withSourceURL: web3ScriptURL)
        self.context.evaluateScript(web3ScriptString)
        print("Web3 ejecutado")
        self.context.evaluateScript(appScriptString)
        print("App ejecutada")
                
        let getValor = context.objectForKeyedSubscript("getValor")
        let dataValue = JSValue(object: jsonAbiArray, in: context)
        let valor = getValor?.call(withArguments: [dataValue as Any])?.toInt32() // Valor del contador
        print("Valor")
        print(valor! as Any)
        label.text = "\(valor!)"
    
    }
    @IBAction func incr(_ sender: Any) {
        
    }
    
    @IBAction func decr(_ sender: Any) {
        
    }
    
    @IBAction func reset(_ sender: Any) {
        
    }
}

