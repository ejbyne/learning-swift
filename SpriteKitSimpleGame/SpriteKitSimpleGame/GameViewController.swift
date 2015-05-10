//
//  GameViewController.swift
//  SpriteKitSimpleGame
//
//  Created by Edward Byne on 08/05/2015.
//  Copyright (c) 2015 Edward Byne. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let scene = GameScene(size: view.bounds.size)
    let skView = view as! SKView
    skView.showsFPS = true
    skView.showsNodeCount = true
    skView.ignoresSiblingOrder = true
    scene.scaleMode = .ResizeFill
    skView.presentScene(scene)
  }
  
  override func prefersStatusBarHidden() -> Bool {
    return true
  }
  
}
