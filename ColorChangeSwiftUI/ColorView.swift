//
//  ColorView.swift
//  ColorChangeSwiftUI
//
//  Created by Vladislav Ryabtsev on 25.01.2022.
//

import SwiftUI

struct ColorView: View {
    
    let redValue: Double
    let greenValue: Double
    let blueValue: Double
    
    var body: some View {
        Color(
            red: redValue / 255,
            green: greenValue / 255,
            blue: blueValue / 255
        )
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.gray, lineWidth: 0.4))
            .padding()
            .frame(height: 200)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redValue: 0.5, greenValue: 0.5, blueValue: 0.5)
    }
}


