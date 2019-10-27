import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneView: ARSCNView!
    
    var phoneNode: SCNNode?
    var phoneRNode: SCNNode?
    
    var caseColor = 0;
    var phoneColor = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneView.delegate = self
        sceneView.autoenablesDefaultLighting = true
        
        let phoneScene = SCNScene(named: "art.scnassets/Pixel3XLWhiteCaseRed.scn")
        let phoneRScene = SCNScene(named: "art.scnassets/iPhone6PlusSpaceGrayR.scn")
        
        phoneNode = phoneScene?.rootNode
        phoneRNode = phoneRScene?.rootNode
    }
    
    
    @IBAction func silver(_ sender: UIButton) {
        resetScene()
        
        let newPhoneScene = SCNScene(named: "art.scnassets/iPhone6PlusSilver.scn")
        let newPhoneRScene = SCNScene(named: "art.scnassets/iPhone6PlusSilverR.scn")
        
        phoneNode = newPhoneScene?.rootNode
        phoneRNode = newPhoneRScene?.rootNode
        
    }
    
    
    @IBAction func spacegray(_ sender: UIButton) {
        resetScene()
        
        let newPhoneScene = SCNScene(named: "art.scnassets/iPhone6PlusSpaceGray.scn")
        let newPhoneRScene = SCNScene(named: "art.scnassets/iPhone6PlusSpaceGrayR.scn")
        
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



/*
 
 //iPhone6
 if(phoneColor == 1)
 {
 resetScene()
 
 let newPhoneScene = SCNScene(named: "art.scnassets/iPhone6PlusSpaceGray.scn")
 let newPhoneRScene = SCNScene(named: "art.scnassets/iPhone6PlusSpaceGrayR.scn")
 
 phoneNode = newPhoneScene?.rootNode
 phoneRNode = newPhoneRScene?.rootNode
 }
 
 else if(phoneColor == 2)
 {
 resetScene()
 
 let newPhoneScene = SCNScene(named: "art.scnassets/iPhone6PlusSilver.scn")
 let newPhoneRScene = SCNScene(named: "art.scnassets/iPhone6PlusSilverR.scn")
 
 phoneNode = newPhoneScene?.rootNode
 phoneRNode = newPhoneRScene?.rootNode
 }
 
 
 
 
 //iPhoneX
 if(phoneColor == 1 && caseColor == 0)
 {
 resetScene()
 
 let newPhoneScene = SCNScene(named: "art.scnassets/iPhoneXSpaceGray.scn")
 let newPhoneRScene = SCNScene(named: "art.scnassets/iPhoneXSpaceGrayR.scn")
 
 phoneNode = newPhoneScene?.rootNode
 phoneRNode = newPhoneRScene?.rootNode
 }
 
 else if(phoneColor == 2 && caseColor == 0)
 {
 resetScene()
 
 let newPhoneScene = SCNScene(named: "art.scnassets/iPhoneXSilver.scn")
 let newPhoneRScene = SCNScene(named: "art.scnassets/iPhoneXSilverR.scn")
 
 phoneNode = newPhoneScene?.rootNode
 phoneRNode = newPhoneRScene?.rootNode
 }
 
 else if(phoneColor == 1 && caseColor == 1)
 {
 resetScene()
 
 let newPhoneScene = SCNScene(named: "art.scnassets/iPhoneXSpaceGrayCaseRed.scn")
 let newPhoneRScene = SCNScene(named: "art.scnassets/iPhoneXSpaceGrayCaseRedR.scn")
 
 phoneNode = newPhoneScene?.rootNode
 phoneRNode = newPhoneRScene?.rootNode
 }
 
 else if(phoneColor == 2 && caseColor == 1)
 {
 resetScene()
 
 let newPhoneScene = SCNScene(named: "art.scnassets/iPhoneXSilverCaseRed.scn")
 let newPhoneRScene = SCNScene(named: "art.scnassets/iPhoneXSilverCaseRedR.scn")
 
 phoneNode = newPhoneScene?.rootNode
 phoneRNode = newPhoneRScene?.rootNode
 }
 else if(phoneColor == 1 && caseColor == 2)
 {
 resetScene()
 
 let newPhoneScene = SCNScene(named: "art.scnassets/iPhoneXSpaceGrayCaseBlue.scn")
 let newPhoneRScene = SCNScene(named: "art.scnassets/iPhoneXSpaceGrayCaseBlueR.scn")
 
 phoneNode = newPhoneScene?.rootNode
 phoneRNode = newPhoneRScene?.rootNode
 }
 
 else if(phoneColor == 2 && caseColor == 2)
 {
 resetScene()
 
 let newPhoneScene = SCNScene(named: "art.scnassets/iPhoneXSilverCaseBlue.scn")
 let newPhoneRScene = SCNScene(named: "art.scnassets/iPhoneXSilverCaseBlueR.scn")
 
 phoneNode = newPhoneScene?.rootNode
 phoneRNode = newPhoneRScene?.rootNode
 }
 else if(phoneColor == 1 && caseColor == 3)
 {
 resetScene()
 
 let newPhoneScene = SCNScene(named: "art.scnassets/iPhoneXSpaceGrayCaseGreen.scn")
 let newPhoneRScene = SCNScene(named: "art.scnassets/iPhoneXSpaceGrayCaseGreenR.scn")
 
 phoneNode = newPhoneScene?.rootNode
 phoneRNode = newPhoneRScene?.rootNode
 }
 
 else if(phoneColor == 2 && caseColor == 3)
 {
 resetScene()
 
 let newPhoneScene = SCNScene(named: "art.scnassets/iPhoneXSilverCaseGreen.scn")
 let newPhoneRScene = SCNScene(named: "art.scnassets/iPhoneXSilverCaseGreenR.scn")
 
 phoneNode = newPhoneScene?.rootNode
 phoneRNode = newPhoneRScene?.rootNode
 }
 else if(phoneColor == 1 && caseColor == 4)
 {
 resetScene()
 
 let newPhoneScene = SCNScene(named: "art.scnassets/iPhoneXSpaceGrayCasePink.scn")
 let newPhoneRScene = SCNScene(named: "art.scnassets/iPhoneXSpaceGrayCasePinkR.scn")
 
 phoneNode = newPhoneScene?.rootNode
 phoneRNode = newPhoneRScene?.rootNode
 }
 
 else if(phoneColor == 2 && caseColor == 4)
 {
 resetScene()
 
 let newPhoneScene = SCNScene(named: "art.scnassets/iPhoneXSilverCasePink.scn")
 let newPhoneRScene = SCNScene(named: "art.scnassets/iPhoneXSilverCasePinkR.scn")
 
 phoneNode = newPhoneScene?.rootNode
 phoneRNode = newPhoneRScene?.rootNode
 }
 
 
 
 */

