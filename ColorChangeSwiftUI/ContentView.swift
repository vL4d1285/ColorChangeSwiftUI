//
//  ContentView.swift
//  ColorChangeSwiftUI
//
//  Created by Vladislav Ryabtsev on 25.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rSliderValue = Double.random(in: 0...1)
    @State private var gSliderValue = Double.random(in: 0...1)
    @State private var bSliderValue = Double.random(in: 0...1)
    
    @State private var redTextField = ""
    @State private var greenTextField = ""
    @State private var blueTextField = ""
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            ColorView(redValue: rSliderValue,
                      greenValue: gSliderValue,
                      blueValue: bSliderValue)
            VStack {
                SliderView(value: $rSliderValue,
                           textField: $redTextField,
                           minTrackTintColor: .red,
                           textColor: .red)
                SliderView(value: $gSliderValue,
                           textField: $greenTextField,
                           minTrackTintColor: .green,
                           textColor: .green)
                SliderView(value: $bSliderValue,
                           textField: $blueTextField,
                           minTrackTintColor: .blue,
                           textColor: .blue)
            }
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
