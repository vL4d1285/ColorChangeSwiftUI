//
//  ContentView.swift
//  ColorChangeSwiftUI
//
//  Created by Vladislav Ryabtsev on 25.01.2022.
//

import SwiftUI

struct ContentView: View {
   
    @State private var rSliderValue = Double.random(in: 0...255)
    @State private var gSliderValue = Double.random(in: 0...255)
    @State private var bSliderValue = Double.random(in: 0...255)
       
    @FocusState private var inputActive: Bool
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            ColorView(redValue: rSliderValue,
                      greenValue: gSliderValue,
                      blueValue: bSliderValue)
            VStack {
                SliderView(value: $rSliderValue,
                           minTrackTintColor: .red,
                           textColor: .red)
                SliderView(value: $gSliderValue,
                           minTrackTintColor: .green,
                           textColor: .green)
                SliderView(value: $bSliderValue,
                           minTrackTintColor: .blue,
                           textColor: .blue)
            }
            .focused($inputActive)
            .toolbar{
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        inputActive = false
                    }
                }
            }
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ContentView()
        }
    }
}
