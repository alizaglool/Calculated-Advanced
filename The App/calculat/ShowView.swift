import UIKit

class ShowView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
            
        self.layer.shadowColor =
            UIColor.blue.withAlphaComponent(0.4).cgColor
        self.layer.shadowRadius = 3
        self.layer.shadowOffset = CGSize(width: -3, height: -3)
        self.layer.opacity = 1
        
        let layer : CAGradientLayer = CAGradientLayer()
        
        layer.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
        let firstcolor = UIColor.init(red: 169/255, green: 169/255, blue: 169/255, alpha: 1).cgColor
        let scoundtcolor = UIColor.init(red: 66/255, green: 66/255, blue: 66/255, alpha: 1).cgColor
        
        layer.startPoint = CGPoint(x: 0, y: 0.1)
        layer.endPoint = CGPoint(x: 0, y: 0.7)
        
        layer.colors = [firstcolor,scoundtcolor]
        layer.zPosition = -1
        self.layer.addSublayer(layer)
        }
    
    }


