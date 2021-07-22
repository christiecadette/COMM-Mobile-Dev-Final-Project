//
//  ScrollViewController.swift
//  COMMMobileDevFinalProject
//
//  Created by Mandy Yuan on 7/21/21.
//

import UIKit

class ScrollViewController: UIViewController {

    
    @IBOutlet weak var blogLink: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let attributedString = NSMutableAttributedString (string: "Want to learn iOS? You should visit the best source of free iOS tutorials!")
        attributedString.addAttribute(.link, value: "https://www.opendemocracy.net/en/can-europe-make-it/why-mutual-aid-social-solidarity-not-charity/", range: NSRange(location: 19, length: 55))

        blogLink.attributedText = attributedString
        // Do any additional setup after loading the view.
    }
    
    func blogLink(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        UIApplication.shared.open(URL)
        return false
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
