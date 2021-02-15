//
//  ViewController.swift
//  Pro AutoLayout
//
//  Created by Hossam on 12/16/19.
//  Copyright © 2019 Hossam. All rights reserved.
//

import UIKit
import SwiftUI
@IBDesignable
class ViewController: UIViewController {
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       

       setupSpaceWithLayoutGuide()
  
    }
    
    
    func setupSpaceWithLayoutGuide() {
        let margins = view.layoutMarginsGuide
        let label1 : UILabel = {
            let label = UILabel()
            label.text = "55"
            label.setContentHuggingPriority(.init(rawValue: 749), for: .horizontal)
            label.backgroundColor = .red
            view.addSubview(label)
            return label
        }()
        
        let label2 : UILabel = {
                   let label = UILabel()
                   label.text = " Grand Big TedfgdfhgdfghfgdfhreLast"
            label.setContentCompressionResistancePriority(.required, for: .horizontal)
            label.backgroundColor = .blue
                   view.addSubview(label)
                   return label
               }()
        
        let guide1 = UILayoutGuide()
        let guide2 = UILayoutGuide()
        let guide3 = UILayoutGuide()
        
        view.addLayoutGuide(guide1)
        view.addLayoutGuide(guide2)
        view.addLayoutGuide(guide3)
        
        guide1.leadingAnchor.constraint(equalTo: view.leadingAnchor).activeWith(priority: nil)
        guide1.centerYAnchor.constraint(equalTo: view.centerYAnchor).activeWith(priority: nil)
        
        label1.leadingAnchor.constraint(equalTo: guide1.trailingAnchor).activeWith(priority: nil)
        label1.centerYAnchor.constraint(equalTo: view.centerYAnchor).activeWith(priority: nil)
        guide2.leadingAnchor.constraint(equalTo: label1.trailingAnchor).activeWith(priority: nil)
        guide2.centerYAnchor.constraint(equalTo: view.centerYAnchor).activeWith(priority: nil)
        
        label2.leadingAnchor.constraint(equalTo: guide2.trailingAnchor).activeWith(priority: nil)
        label2.centerYAnchor.constraint(equalTo: view.centerYAnchor).activeWith(priority: nil)
        guide3.leadingAnchor.constraint(equalTo: label2.trailingAnchor).activeWith(priority: nil)
        
        guide3.centerYAnchor.constraint(equalTo: view.centerYAnchor).activeWith(priority: nil)
        view.trailingAnchor.constraint(equalTo: guide3.trailingAnchor).activeWith(priority: nil)
        
        guide1.widthAnchor.constraint(greaterThanOrEqualToConstant: 20).activeWith(priority: .defaultHigh)
        guide1.widthAnchor.constraint(equalTo: guide2.widthAnchor).activeWith(priority: nil)
        guide1.widthAnchor.constraint(equalTo: guide3.widthAnchor).activeWith(priority: nil)
       
        
        label1.widthAnchor.constraint(equalTo: label2.widthAnchor).activeWith(priority: .defaultHigh)
        
        
        
        label1.constraints.forEach{$0.isActive = false }
        label1.isHidden = true
        label1.updateConstraints()
        
        
        
    }
    
    func maximumBaseline(){
        let margins = view.layoutMarginsGuide
        
         let textF1 : UITextField = {
               let textField = UITextField()
               view.addSubview(textField)
               textField.borderStyle = .roundedRect
               textField.text = "TF1"
               return textField
           }()
           
        let textF2 : UITextField = {
               let textField = UITextField()
               view.addSubview(textField)
               textField.borderStyle = .roundedRect
               textField.text = "TF2"
               return textField
           }()
           
       

        let labelV1: UILabel = {
               let label = UILabel()
               label.setContentHuggingPriority(.required, for: .horizontal)
               view.addSubview(label)
               label.text = "LAL1"
               label.font = .systemFont(ofSize: 100)
               return label
           }()
           
        let labelV2: UILabel = {
               let label = UILabel()
               view.addSubview(label)
               label.text = "LAf2"
               label.font = .systemFont(ofSize: 100)
            label.setContentCompressionResistancePriority(.required, for: .horizontal)
               return label
           }()
           
       
        
        
        
        labelV1.leadingAnchor.constraint(equalToSystemSpacingAfter: margins.leadingAnchor, multiplier: 1).activeWith(priority: nil)
        labelV1.topAnchor.constraint(greaterThanOrEqualTo: margins.topAnchor, constant: 20).activeWith(priority: nil)
        labelV1.topAnchor.constraint(equalTo: margins.topAnchor, constant: 20).activeWith(priority: .defaultLow)
        textF1.leadingAnchor.constraint(equalToSystemSpacingAfter: labelV1.trailingAnchor, multiplier: 1).activeWith(priority: nil)
        
        textF1.topAnchor.constraint(greaterThanOrEqualTo: margins.topAnchor, constant: 20).activeWith(priority: nil)
        textF1.topAnchor.constraint(equalTo: margins.topAnchor, constant: 20).activeWith(priority: .defaultLow)
        textF1.firstBaselineAnchor.constraint(equalTo: labelV1.firstBaselineAnchor, constant: 0).activeWith(priority: nil)
        margins.trailingAnchor.constraint(equalToSystemSpacingAfter: textF1.trailingAnchor, multiplier: 1).activeWith(priority: nil)
        
        labelV2.leadingAnchor.constraint(equalToSystemSpacingAfter: margins.leadingAnchor, multiplier: 1).activeWith(priority: nil)
        labelV2.topAnchor.constraint(greaterThanOrEqualTo: labelV1.bottomAnchor, constant: 20).activeWith(priority: nil)
        labelV2.topAnchor.constraint(equalTo: labelV1.bottomAnchor, constant: 20).activeWith(priority: .defaultLow)
        textF2.leadingAnchor.constraint(equalToSystemSpacingAfter: labelV2.trailingAnchor, multiplier: 1).activeWith(priority: nil)
        
        
        textF2.topAnchor.constraint(greaterThanOrEqualTo: textF1.bottomAnchor, constant: 20).activeWith(priority: nil)
        textF2.topAnchor.constraint(equalTo: textF1.bottomAnchor, constant: 20).activeWith(priority: .defaultLow)
        textF2.firstBaselineAnchor.constraint(equalTo: labelV2.firstBaselineAnchor, constant: 0).activeWith(priority: nil)
        margins.trailingAnchor.constraint(equalToSystemSpacingAfter: textF2.trailingAnchor, multiplier: 1).activeWith(priority: nil)
        
        
        textF1.widthAnchor.constraint(equalTo: textF2.widthAnchor, multiplier: 1).activeWith(priority: nil)
        
        
        
        
        
        
        
    }
    
    func greaterThanOrEqualWidth(){
        let margins = view.layoutMarginsGuide
        let blueView  : UIView = {
            let view = UIView()
            view.backgroundColor = .blue
            self.view.addSubview(view)
            return view
        }()
        
        let redView  : UIView = {
              let view = UIView()
              view.backgroundColor = .red
              self.view.addSubview(view)
              return view
               }()
        blueView.leadingAnchor.constraint(equalToSystemSpacingAfter: margins.leadingAnchor, multiplier: 1).activeWith(priority: nil)
        blueView.topAnchor.constraint(equalToSystemSpacingBelow: margins.topAnchor, multiplier: 1).activeWith(priority: nil)
        margins.bottomAnchor.constraint(equalToSystemSpacingBelow: blueView.bottomAnchor, multiplier: 1).activeWith(priority: nil)
        
        
        redView.leadingAnchor.constraint(equalToSystemSpacingAfter: blueView.trailingAnchor, multiplier: 1).activeWith(priority: nil)
        redView.topAnchor.constraint(equalToSystemSpacingBelow: margins.topAnchor, multiplier: 1).activeWith(priority: nil)
        margins.trailingAnchor.constraint(equalToSystemSpacingAfter: redView.trailingAnchor, multiplier: 1).activeWith(priority: nil)
        margins.bottomAnchor.constraint(equalToSystemSpacingBelow: redView.bottomAnchor, multiplier: 1).activeWith(priority: nil)
        
        blueView.widthAnchor.constraint(greaterThanOrEqualToConstant: 120).activeWith(priority: nil)
        redView.widthAnchor.constraint(equalTo: blueView.widthAnchor, multiplier: 3).activeWith(priority: .defaultLow)
        
        
        
    }
    
    func allignTextFieldsAndLabels(){
        let margins = view.layoutMarginsGuide
        
         let textF1 : UITextField = {
               let textField = UITextField()
               view.addSubview(textField)
               textField.borderStyle = .roundedRect
               textField.text = "TF1"
               return textField
           }()
           
        let textF2 : UITextField = {
               let textField = UITextField()
               view.addSubview(textField)
               textField.borderStyle = .roundedRect
               textField.text = "TF2"
               return textField
           }()
           
        let textF3 : UITextField = {
               let textField = UITextField()
               view.addSubview(textField)
               textField.borderStyle = .roundedRect
               textField.text = "TF3"
               return textField
           }()

        let labelV1: UILabel = {
               let label = UILabel()
               label.setContentHuggingPriority(.required, for: .horizontal)
               view.addSubview(label)
               label.text = "LAL1"
               label.font = .systemFont(ofSize: 20)
               return label
           }()
           
        let labelV2: UILabel = {
               let label = UILabel()
               view.addSubview(label)
               label.text = "LAf2"
               label.font = .systemFont(ofSize: 20)
               return label
           }()
           
        let labelV3: UIButton = {
            let label = UIButton(type: .system)
            
               view.addSubview(label)
            label.setTitle("RTR", for: .normal)
            

               
               
               
               return label
           }()
        
        labelV1.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 20).activeWith(priority: nil)
        labelV2.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 20).activeWith(priority: nil)
        labelV3.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 20).activeWith(priority: nil)
        
        labelV1.firstBaselineAnchor.constraint(equalTo: textF1.firstBaselineAnchor, constant: 0).activeWith(priority: nil)
        labelV2.firstBaselineAnchor.constraint(equalTo: textF2.firstBaselineAnchor, constant: 0).activeWith(priority: nil)
        labelV3.firstBaselineAnchor.constraint(equalTo: textF3.firstBaselineAnchor, constant: 0).activeWith(priority: nil)
        
        
        textF1.leadingAnchor.constraint(equalTo: labelV1.trailingAnchor, constant: 20).activeWith(priority: nil)
        labelV2.trailingAnchor.constraint(equalTo: textF2.leadingAnchor, constant: 20).activeWith(priority: nil)
        labelV3.trailingAnchor.constraint(equalTo: textF3.leadingAnchor, constant: 20).activeWith(priority: nil)
        
        
        margins.trailingAnchor.constraint(equalTo: textF1.trailingAnchor, constant: 20).activeWith(priority: nil)
        margins.trailingAnchor.constraint(equalTo: textF2.trailingAnchor, constant: 20).activeWith(priority: nil)
        margins.trailingAnchor.constraint(equalTo: textF3.trailingAnchor, constant: 20).activeWith(priority: nil)
        
        textF1.widthAnchor.constraint(equalTo: textF2.widthAnchor, multiplier: 1).activeWith(priority: nil)
        textF1.widthAnchor.constraint(equalTo: textF3.widthAnchor, multiplier: 1).activeWith(priority: nil)
        
        textF1.topAnchor.constraint(equalTo: margins.topAnchor, constant: 40).activeWith(priority: nil)
        textF2.topAnchor.constraint(equalTo: textF1.bottomAnchor, constant: 20).activeWith(priority: nil)
        textF3.topAnchor.constraint(equalTo: textF2.bottomAnchor, constant: 20).activeWith(priority: nil)
        

        
        
        
        
        
    }
    
   
    func setupMyBiggestBaselineLayout(){
         let margins = view.layoutMarginsGuide
        let label : UILabel = {
           let lable = UILabel()
            view.addSubview(lable)
            lable.text = "MY N "
            lable.translatesAutoresizingMaskIntoConstraints = false
            lable.leadingAnchor.constraint(equalToSystemSpacingAfter: margins.leadingAnchor, multiplier: 1).activeWith(priority: nil)
            lable.topAnchor.constraint(greaterThanOrEqualToSystemSpacingBelow: margins.topAnchor, multiplier: 1).activeWith(priority: .required)
            lable.topAnchor.constraint(equalToSystemSpacingBelow: margins.topAnchor, multiplier: 1).activeWith(priority: .defaultLow)
            lable.font = UIFont.systemFont(ofSize: 20)
            lable.setContentHuggingPriority(.required, for: .horizontal)
            return lable
            
        }()
        let textField : UITextField = {
            let textField = UITextField()
            textField.borderStyle = .roundedRect
            view.addSubview(textField)
            textField.text = "SOME TEXT"
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 10).activeWith(priority: .required)
            
            
            margins.trailingAnchor.constraint(equalTo: textField.trailingAnchor, constant: 20).activeWith(priority: nil)
            textField.firstBaselineAnchor.constraint(equalTo: label.firstBaselineAnchor, constant: 0).activeWith(priority: nil)
            textField.topAnchor.constraint(equalToSystemSpacingBelow: margins.topAnchor, multiplier: 1).activeWith(priority: .defaultLow)
            
            textField.topAnchor.constraint(greaterThanOrEqualToSystemSpacingBelow: margins.topAnchor, multiplier: 1).activeWith(priority: .required)
            textField.setContentHuggingPriority(.defaultLow, for: .horizontal)
            return textField
        }()
        
    }


}


extension NSLayoutConstraint  {
    func activeWith(priority : UILayoutPriority?){
        self.isActive = true
        
        if let firstItem  = self.firstItem as? UIView {
            firstItem.translatesAutoresizingMaskIntoConstraints = false
            }
        
        if let secondItem  = self.secondItem as? UIView {
        secondItem.translatesAutoresizingMaskIntoConstraints = false
        }
        
        if let p = priority {
            self.priority = p
        }
        
        
    }
}






struct VCPreview : PreviewProvider {
    static var previews: some View {
    VCContainerView()
    }
    struct VCContainerView: UIViewControllerRepresentable {
        func makeUIViewController(context: UIViewControllerRepresentableContext<VCPreview.VCContainerView>) -> UIViewController {
        return ViewController()
        }
        
        func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<VCPreview.VCContainerView>) {
            
        }
        
        
        
    typealias UIViewControllerType = UIViewController
    }
    
}
