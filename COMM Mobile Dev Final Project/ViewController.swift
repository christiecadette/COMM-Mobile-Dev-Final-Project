//
//  ViewController.swift
//  COMM Mobile Dev Final Project
//
//  Created by  Scholar on 7/19/21.
//

import UIKit

class ViewController: UIViewController {

    extension UIImageView{
    var imageWithFade:UIImage?{
        get{
            return self.image
        }
        set{
            UIView.transition(with: self,
                              duration: 5, options: .transitionCrossDissolve, animations: {
                                self.image = newValue
            }, completion: nil)
        }
    }
    }

    let img1 = UIImage.init(named: "activism1")
    let img2 = UIImage.init(named: "activism2")
    let img3 = UIImage.init(named: "activism3")

    let array = [img1,img2,img3]

     repeatAnimateImagesChanges(images: array as NSArray, imageView: self.imgView)
    
// MISSING W BELOW
//ww.hackingwithswift.com/quick-start/swiftui/how-to-adjust-the-opacity-of-a-view
 
//    Image("li-an-lim-ycW4YxhrWHM-unsplash")
//        .padding()
//        .background(Color.red)
//        .opacity(0.3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstImage: UIImage? = UIImage(named: "activism1");
        let secondImage: UIImage? = UIImage(named: "activism2");
        let thirdImage: UIImage? = UIImage(named: "activism3");

            imgView.imageWithFade = secondImage
        // Do any additional setup after loading the view.
    }
    
    

// -------NOTES-------
// Colorful Overlay Image - Lorena
// Logo (except on Welcome Page) color? Black or Colorful? Yellow or Purple?
// Border around screen (Welcome page)?

}
