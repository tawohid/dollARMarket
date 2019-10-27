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


class Pixel3XL: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneView: ARSCNView!
  
    
    var phoneNode: SCNNode?
    var phoneRNode: SCNNode?
    var phoneColor = 0;
    var caseColor = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneView.delegate = self
        sceneView.autoenablesDefaultLighting = true
        
        
        let phoneScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaseless.scn")
        let phoneRScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaselessR.scn")
        
        phoneNode = phoneScene?.rootNode
        phoneRNode = phoneRScene?.rootNode
    }
    
    
    @IBAction func black(_ sender: UIButton) {
        resetScene()
        phoneColor = 0
        if(caseColor == 0)
        {
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaseless.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaselessR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
        if(caseColor == 1)
        {
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaseBlue.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaseBlueR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
        if(caseColor == 2)
        {
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaseGreen.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaseGreenR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
        if(caseColor == 3)
        {
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCasePink.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCasePinkR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
        if(caseColor == 4)
        {
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaseRed.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaseRedR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
        
    }
    
    @IBAction func white(_ sender: UIButton) {
        resetScene()
        phoneColor = 1
        if(caseColor == 0)
        {
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaseless.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaselessR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
        if(caseColor == 1)
        {
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaseBlue.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaseBlueR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
        if(caseColor == 2)
        {
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaseGreen.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaseGreenR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
        if(caseColor == 3)
        {
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCasePink.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCasePinkR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
        if(caseColor == 4)
        {
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaseRed.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaseRedR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
        
        
    }
    
    @IBAction func caseless(_ sender: Any) {
        resetScene()
        caseColor = 0
        if(phoneColor == 0){
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaseless.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaselessR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
        else if(phoneColor == 1){
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaseless.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaselessR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
    }
    
    @IBAction func blue(_ sender: Any) {
        resetScene()
        caseColor = 1
        if(phoneColor == 0){
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaseBlue.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaseBlueR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
        else if(phoneColor == 1){
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaseBlue.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaseBlueR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
    }
    
    @IBAction func green(_ sender: Any) {
        resetScene()
        caseColor = 2
        if(phoneColor == 0){
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaseGreen.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaseGreenR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
        else if(phoneColor == 1){
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaseGreen.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaseGreenR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
    }
    
    @IBAction func pink(_ sender: Any) {
        resetScene()
        caseColor = 3
        if(phoneColor == 0){
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCasePink.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCasePinkR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
        else if(phoneColor == 1){
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCasePink.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCasePinkR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
    }
    
    @IBAction func red(_ sender: Any) {
        resetScene()
        caseColor = 4
        if(phoneColor == 0){
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaseRed.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLBlackCaseRedR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
        else if(phoneColor == 1){
            let newPhoneScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaseRed.scn")
            let newPhoneRScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaseRedR.scn")
            phoneNode = newPhoneScene?.rootNode
            phoneRNode = newPhoneRScene?.rootNode
        }
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
