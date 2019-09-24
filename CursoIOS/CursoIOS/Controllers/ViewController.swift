//
//  ViewController.swift
//  CursoIOS
//
//  Created by Dev2 on 19/09/2019.
//  Copyright © 2019 iZatasi. All rights reserved.
//
// By: Paulo Galeano

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelDemo: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBAction func onButton1Pressed(_ sender: UIButton) {
        print("Button 1 pressed")
        labelDemo.text = "Pulling up the courtains... hold on..."
    }

    @IBAction func onButton2Pressed(_ sender: UIButton) {
        print("Button 2 pressed")
            labelDemo.text = "Pulling down the courtains... hold on..."
        }

    @IBAction func onButton3Pressed(_ sender: UIButton) {
        print("Button 3 pressed")
        
         labelDemo.text = "Turning on all lights at your home"
    }
    
    @IBAction func onButton4Pressed(_ sender: UIButton) {
        print("Button 4 pressed")
        labelDemo.text = "Turning off all lights at your home"
    }
    
    @IBAction func onSegmentControlChange(_ sender: UISegmentedControl) {
        print("Se ha seleccionado el button")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button1.setTitle("Pulling up all courtains in the house", for: .selected)
        print("**********************Se ha entrado en viewDidLoad")

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
        print("**********************Se ha entrado en viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("**********************Se ha entrado en viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("**********************Se ha entrado en viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("**********************Se ha entrado en viewDidDisappear")

    }
}

