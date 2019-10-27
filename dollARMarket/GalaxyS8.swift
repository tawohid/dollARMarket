//
//  GalaxyS10.swift
//  dollARMarket
//
//  Created by Khalid Hossain on 10/27/19.
//  Copyright © 2019 Plan A. All rights reserved.
//
import UIKit
import SceneKit
import ARKit


class GalaxyS8: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneView: ARSCNView!
  
    var phoneNode: SCNNode?
    var phoneRNode: SCNNode?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneView.delegate = self
        sceneView.autoenablesDefaultLighting = true
        
       
        let phoneScene = SCNScene(named: "art.scnassets/GalaxyS8ArcticSilver.scn")
        let phoneRScene = SCNScene(named: "art.scnassets/GalaxyS8ArcticSilverR.scn")
        
        phoneNode = phoneScene?.rootNode
        phoneRNode = phoneRScene?.rootNode
    }
    
    
    @IBAction func arcticSilver(_ sender: UIButton) {
        
        resetScene()
        
        let newPhoneScene = SCNScene(named: "art.scnassets/GalaxyS8ArcticSilver.scn")
        let newPhoneRScene = SCNScene(named: "art.scnassets/GalaxyS8ArcticSilverR.scn")
        
        phoneNode = newPhoneScene?.rootNode
        phoneRNode = newPhoneRScene?.rootNode
    }
    
    @IBAction func coralBlue(_ sender: UIButton) {
        resetScene()
        
        let newPhoneScene = SCNScene(named: "art.scnassets/GalaxyS8CoralBlue.scn")
        let newPhoneRScene = SCNScene(named: "art.scnassets/GalaxyS8CoralBlueR.scn")
        
        phoneNode = newPhoneScene?.rootNode
        phoneRNode = newPhoneRScene?.rootNode
    }
    
    @IBAction func midnightBlack(_ sender: UIButton) {
        
        resetScene()
        
        let newPhoneScene = SCNScene(named: "art.scnassets/GalaxyS8MidnightBlack.scn")
        let newPhoneRScene = SCNScene(named: "art.scnassets/GalaxyS8MidnightBlackR.scn")
        
        phoneNode = newPhoneScene?.rootNode
        phoneRNode = newPhoneRScene?.rootNode
    }
    
    
    @IBAction func mapleGold(_ sender: UIButton) {
        resetScene()
        
        let newPhoneScene = SCNScene(named: "art.scnassets/GalaxyS8MapleGold.scn")
        let newPhoneRScene = SCNScene(named: "art.scnassets/GalaxyS8MapleGoldR.scn")
        
        phoneNode = newPhoneScene?.rootNode
        phoneRNode = newPhoneRScene?.rootNode
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let configuration = ARImageTrackingConfiguration()
        
        
        if let trackingImages = ARReferenceImage.referenceImages(inGroupNamed: "dollars", bundle: Bundle.main) {
            configuration.trackingImages = trackingImages
            configuration.maximumNumberOfTrackedImages = 2;
        }
        
        
        
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        sceneView.session.pause()
    }
    
    
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
        
        if let imageAnchor = anchor as? ARImageAnchor {
            var shapeNode: SCNNode?
            if (imageAnchor.referenceImage.name == "dollar" || imageAnchor.referenceImage.name == "5dollar" || imageAnchor.referenceImage.name == "10dollar" || imageAnchor.referenceImage.name == "20dollar" || imageAnchor.referenceImage.name == "50dollar" || imageAnchor.referenceImage.name == "100dollar" ) {
                shapeNode = phoneNode
            }  else {
                shapeNode = phoneRNode
            }
            
            guard let shape = shapeNode else { return nil}
            node.addChildNode(shape)
        }
        
        return node
    }
    
    
    func resetScene() {
        sceneView.session.pause()
        sceneView.scene.rootNode.enumerateChildNodes { (node, _) in
            node.removeFromParentNode()
        }
        
        let configuration = ARImageTrackingConfiguration()
        
        
        if let trackingImages = ARReferenceImage.referenceImages(inGroupNamed: "dollars", bundle: Bundle.main) {
            configuration.trackingImages = trackingImages
            configuration.maximumNumberOfTrackedImages = 2;
        }
        
        sceneView.session.run(configuration, options: [.removeExistingAnchors, .resetTracking])
        
    }
    
    
}
