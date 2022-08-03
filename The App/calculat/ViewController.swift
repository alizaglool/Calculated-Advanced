import UIKit

class ViewController: UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
 
    let Redio = Redioclass()
    @IBAction func SideMuneAction(_ sender: UIButton) {
        Redio.OpenAndClass()
    }
   
    @IBOutlet weak var Resultlabel: UILabel!
    
    var Brain : BrainCalculator = BrainCalculator ()

    @IBAction func ButtonsAction(_ sender: UIButton) {
        
        if Resultlabel.text == "0" {
            Resultlabel.text = " "
        }
        Resultlabel.text = Resultlabel.text! + String(sender.tag)
    }
    
    @IBAction func ButtonsOpeatorsAction(_ sender: UIButton) {
        Brain.add(Number: Double(Resultlabel.text!)!, Opeartor: Character((sender.titleLabel?.text!)!))
       
        if  sender.titleLabel?.text! == "=" {
            Resultlabel.text = Brain.Result()
            Brain.Restart()
        }else{
            Resultlabel.text! = "0"}
    }
}

