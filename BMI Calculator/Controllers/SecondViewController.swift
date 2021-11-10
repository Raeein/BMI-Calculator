// An exmaple of making ViewController progmatically
import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        
        view.backgroundColor = UIColor.red
        super.viewDidLoad()
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}


//This goes in the first ViewController
//let secondVC = SecondViewController()
//secondVC.bmiValue = String(bmi)
//self.present(secondVC, animated: true, completion: nil)
