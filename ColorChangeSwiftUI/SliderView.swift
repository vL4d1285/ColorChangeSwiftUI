//
//  SliderView.swift
//  ColorChangeSwiftUI
//
//  Created by Vladislav Ryabtsev on 25.01.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    @State private var textField = ""
    @State private var showAlert = false
    
    let minTrackTintColor: Color
    let textColor: Color
        
    var body: some View {
        HStack{
            
            // Slider Value label
            Text("\(lround(value))")
                .foregroundColor(textColor)
                .frame(width: 35)
            
            // Slider
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(minTrackTintColor)
                .onChange(of: value) { newValue in
                    textField = String(lround(newValue))
                }
            
            // Slider Value TextField
            TextField("", text: $textField) { _ in
                checkValue()
            }
            .frame(width: 45).textFieldStyle(.roundedBorder)
            .keyboardType(.decimalPad)
            .alert("Wrong fotmat", isPresented: $showAlert, actions: {}) {
                Text("Please enter value from 0 to 255")
            }
        }
        .onAppear{
            textField = "\(lround(value))"
        }
        .padding(.horizontal)
    }
}

extension SliderView {
    private func checkValue() {
        if let value = Int(textField), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0
        textField = "0"
        
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(0.5),
                   minTrackTintColor: .red,
                   textColor: .red)
    }
}
