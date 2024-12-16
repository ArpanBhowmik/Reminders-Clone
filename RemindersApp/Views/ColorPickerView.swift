//
//  ColorPickerView.swift
//  RemindersApp
//
//  Created by Arpan Bhowmik on 16/12/24.
//

import SwiftUI

struct ColorPickerView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .yellow, .purple]
    @Binding var selectedColor: Color
    
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Circle().fill()
                    .foregroundColor(color)
                    .padding(2)
                Circle()
                    .strokeBorder(selectedColor == color ? .gray : .clear)
            }
        }
    }
}

#Preview {
    ColorPickerView(selectedColor: .constant(.red))
}
