//
//  CreateScorecardViewController.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/19/20.
//

import UIKit

class CreateScorecardViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var courseNameTextField: UITextField!
    @IBOutlet weak var courseParTextField: UITextField!
    @IBOutlet weak var numberOfHolesTextField: UITextField!
    @IBOutlet weak var totalStrokesTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    @IBAction func finishRoundButtonTapped(_ sender: Any) {
        guard let course = courseNameTextField.text, !course.isEmpty,
              let coursePar = courseParTextField.text, !coursePar.isEmpty,
              let numberOfHoles = numberOfHolesTextField.text, !numberOfHoles.isEmpty,
              let strokes = totalStrokesTextField.text, !strokes.isEmpty else { return }
        let strokesAsInt = Int(strokes) ?? 0
        let courseParAsInt = Int(coursePar) ?? 0
        let numberOfHolesAsInt = Int(numberOfHoles) ?? 0
        
        ScorecardController.shared.createScorecardWith(strokes: strokesAsInt, course: course, coursePar: courseParAsInt, numberOfHoles: numberOfHolesAsInt)
        navigationController?.popViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
