//
//  ContentView.swift
//  finalproject
//
//  Created by rtc02 on 2023/5/30.
//

import SwiftUI

struct StartView: View {
    @State private var height: String = ""
    @State private var weight: String = ""
    @State private var isHeightValid: Bool = false
    @State private var isWeightValid: Bool = false
    
        var body: some View {
            VStack {
                if isHeightValid && isWeightValid{
                    Image("avatar")
                        .resizable()
                }
                VStack {
                    Text("身高")
                        .bold()
                        .foregroundColor(Color.orange)
                    TextField("身高（公分）", text: $height,onEditingChanged: {isEditing in
                        if !isEditing {
                            validateHeight()
                        }
                    })
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    Text("體重")
                    TextField("體重（公斤）", text: $weight,onEditingChanged: {isEditing in
                        if !isEditing {
                            validateWeight()
                        }
                    })
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    Text("BMI: \(calculateBMI())")
                        .padding()
                }
            }
        }
        func validateHeight() {
            if let heightValue = Double(height), heightValue > 0 {
                isHeightValid = true
            } else {
                isHeightValid = false
            }
        }
        func validateWeight() {
            if let weightValue = Double(weight), weightValue > 0 {
                isWeightValid = true
            } else {
                isWeightValid = false
            }
        }
        func calculateBMI() -> Double {
            if let height = Double(height), let weight = Double(weight) {
                let bmi = weight / ((height / 100) * (height / 100))
                return bmi
            }
            
            return 0.0
        }
    }

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
