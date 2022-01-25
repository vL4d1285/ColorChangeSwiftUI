//
//  SliderView.swift
//  ColorChangeSwiftUI
//
//  Created by Vladislav Ryabtsev on 25.01.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    @Binding var textField: String
    
//    @FocusState.Binding var inputActive: Bool

    let minTrackTintColor: Color
    let textColor: Color
    
    var body: some View {
        HStack{
            Text("\(lround(value * 255.0))")
                .foregroundColor(textColor)
                .frame(width: 35)
            
            Slider(value: $value)
                .accentColor(minTrackTintColor)
                                
            TextField("\(lround(value * 255.0))", text: $textField)
                .frame(width: 45).textFieldStyle(.roundedBorder)
                .onChange(of: value) { newValue in
                    textField = String(lround(newValue * 255.0))
                }
                .keyboardType(.decimalPad)
//                .focused($inputActive)
//                .toolbar {
//                    ToolbarItemGroup(placement: .keyboard) {
//                        Spacer()
//                        Button("Done") {
//                            inputActive = false
//                        }
//                    }
//                }
//        }
            
    }
        .padding(.horizontal)
}
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(0.5),
                   textField: .constant(""),
                   minTrackTintColor: .red,
                   textColor: .red)
    }
}
