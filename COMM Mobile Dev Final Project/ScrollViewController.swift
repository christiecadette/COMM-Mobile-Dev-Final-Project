//
//  ScrollViewController.swift
//  COMMMobileDevFinalProject
//
//  Created by Mandy Yuan on 7/21/21.
//

import UIKit

class ScrollViewController: UIViewController {

   
    
    @IBOutlet weak var hyperlink1: UITextView!
    
    @IBOutlet weak var hyperlink2: UITextView!
    
    @IBOutlet weak var hyperlink3: UITextView!
    
    @IBOutlet weak var hyperlink4: UITextView!
    
    @IBOutlet weak var hyperlink5: UITextView!
    
    @IBOutlet weak var hyperlink6: UITextView!
    
    @IBOutlet weak var hyperlink7: UITextView!
    
    @IBOutlet weak var hyperlink8: UITextView!
    
    
    
    func updateTextView () {
        let path = "https://medium.com/periodmovement/womanism-or-feminism-b5449909c8b0"
        let text = hyperlink1.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink (for: path, in: text, as: "Womanism or  Feminism?")
        hyperlink1.attributedText = attributedString
        
    }
        
    func updateTextView2 () {
        let path = "https://wusfnews.wusf.usf.edu/health-news-florida/2021-04-26/florida-house-oks-bill-to-ban-abortions-based-on-disability"
        let text = hyperlink2.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink (for: path, in: text, as: "Florida Houses OKs Bill to Ban...")
        hyperlink2.attributedText = attributedString
    }

    func updateTextView3 () {
        let path = "https://www.opendemocracy.net/en/can-europe-make-it/why-mutual-aid-social-solidarity-not-charity/"
        let text = hyperlink3.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink (for: path, in: text, as: "Why 'Mutual Aid'? – social solidarity...")
        hyperlink3.attributedText = attributedString
    }
    
    func updateTextView4 () {
        let path = "https://www.msn.com/en-us/health/medical/covid-19-breakthrough-infections-are-preventable-but-its-going-to-take-a-big-effort-to-stop-them/ar-AAMkzg1?ocid=uxbndlbing"
        let text = hyperlink4.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink (for: path, in: text, as: "Covid-19 breakthrough...")
        hyperlink4.attributedText = attributedString
    }
    
    func updateTextView5 () {
        let path = "https://hoodcommunist.org/2021/07/15/cuba-fighting-corona-and-blockade-simultaneously/"
        let text = hyperlink5.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink (for: path, in: text, as: "Cuba: Fighting Corona and...")
        hyperlink5.attributedText = attributedString
    }
    
    func updateTextView6 () {
        let path = "https://criticalrace.org/what-is-critical-race-theory/"
        let text = hyperlink6.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink (for: path, in: text, as: "What is Critical Race Theory?")
        hyperlink6.attributedText = attributedString
    }
    
    func updateTextView7 () {
        let path = "https://hoodcommunist.org/2021/07/08/the-struggle-for-palestine-is-our-struggle/"
        let text = hyperlink7.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink (for: path, in: text, as: "The Struggle for Palestine is Our...")
        hyperlink7.attributedText = attributedString
    }
    
    func updateTextView8 () {
        let path = "https://www.nytimes.com/2021/07/14/us/miami-condo-collapse-911-calls.html"
        let text = hyperlink8.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink (for: path, in: text, as: "'We Can't Get Out': 911 Calls...")
        hyperlink8.attributedText = attributedString
    }
    
    

        func repeatAnimateImagesChanges(images:NSArray, imageView:UIImageView) {

        if(images.count == 3) {
            return
        }

        var newImage = images.firstObject as! UIImage

        if(imageView.image != nil) {
            for i in 0..<images.count {
                newImage = images.object(at: i) as! UIImage
                if(imageView.image?.isEqual(newImage))! {
                    newImage = i == images.count - 1 ? images.firstObject as! UIImage : images.object(at: i + 1) as! UIImage
                }
            }
        }

        imageView.imageWithFade = newImage

        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.repeatAnimateImagesChanges(images: images, imageView: imageView)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTextView()
        updateTextView2()
        updateTextView3()
        updateTextView4()
        updateTextView5()
        updateTextView6()
        updateTextView7()
        updateTextView8()
        
        hyperlink1.font = UIFont(name: "Hiragino Sans W7", size: 13)
        
        hyperlink2.font = UIFont(name: "Hiragino Sans W7", size: 13)
        
        hyperlink3.font = UIFont(name: "Hiragino Sans W7", size: 13)
        
        hyperlink4.font = UIFont(name: "Hiragino Sans W7", size: 13)
        
        hyperlink5.font = UIFont(name: "Hiragino Sans W7", size: 13)
        
        hyperlink6.font = UIFont(name: "Hiragino Sans W7", size: 13)
        
        hyperlink7.font = UIFont(name: "Hiragino Sans W7", size: 13)
        
        hyperlink8.font = UIFont(name: "Hiragino Sans W7", size: 13)
        
        let firstImage: UIImage? = UIImage(named: "activism1");
        let secondImage: UIImage? = UIImage(named: "activism2");
        let thirdImage: UIImage? = UIImage(named: "activism3");

        imgView.imageWithFade = secondImage

        repeatAnimateImagesChanges(images: <#T##NSArray#>, imageView: <#T##UIImageView#>)
        }
        
    }
    

   
    
    
    //        let attributedString = NSMutableAttributedString (string: "Blog Post Title")
//      attributedString.addAttribute(.link, value: "https://www.opendemocracy.net/en/can-europe-make-it/why-mutual-aid-social-solidarity-not-charity/", range: NSRange(location: 19, length: 55))
//
//        blogLink.attributedText = attributedString}
//
//        
//        // Do any additional setup after loading the view.
// func blogLink(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
//    UIApplication.shared.open(URL)
//       return false
//   }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



