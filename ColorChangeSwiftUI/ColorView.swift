//
//  ColorView.swift
//  ColorChangeSwiftUI
//
//  Created by Vladislav Ryabtsev on 25.01.2022.
//

import SwiftUI

struct ColorView: View {
    
    var redValue: Double
    var greenValue: Double
    var blueValue: Double
    
    var body: some View {
        Color(red: redValue, green: greenValue, blue: blueValue)
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
