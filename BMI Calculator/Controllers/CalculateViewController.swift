import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSliderValue: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        let heightLabelValue = String(format: "%.2f", sender.value)
        heightLabel.text = "\(heightLabelValue)m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weightLabelValue = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weightLabelValue)kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSliderValue.value
        let weight = weightSliderValue.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
        }
    }
    
}

