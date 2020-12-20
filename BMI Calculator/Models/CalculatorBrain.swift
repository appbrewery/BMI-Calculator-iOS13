import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
           // print("Underweight")
            bmi = BMI(value: bmiValue, advice: "Eat More Pies", color: #colorLiteral(red: 0.2884203767, green: 0.749411387, blue: 1, alpha: 1))

        } else if bmiValue < 24.9 {
            print("Normal")
            bmi = BMI(value: bmiValue, advice: "You are fit", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))

        } else {
            print("Overweight")
            bmi = BMI(value: bmiValue, advice: "Eat Less Pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
                
    }
    
    func getBMIValue() -> String {
        let BMIValue = bmi?.value
        
        return String(format: "%.1f", BMIValue ?? "0.0")
    }
    
    func getAdvice () -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor () -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
