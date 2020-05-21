//
//  TextView.swift
//  AlternativeModifiers
//
//  Created by ramil on 21.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct TextView: UIViewRepresentable {
    @Binding var text: String
    
    var font: UIFont?
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.delegate = context.coordinator
        textView.font = font
        return textView
    }
    
    func updateUIView(_ uiTextView: UITextView, context: Context) {
        uiTextView.text = text
    }
    
    class Coordinator: NSObject, UITextViewDelegate {
        
        var parent: TextView
        
        init(_ textView: TextView) {
            parent = textView
        }
        
        func textViewDidChange(_ textView: UITextView) {
            parent.text = textView.text
        }
    }
}
