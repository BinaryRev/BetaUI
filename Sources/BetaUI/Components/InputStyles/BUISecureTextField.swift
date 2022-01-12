//
//  BUISecureTextField.swift
//  BetaUI
//
//  Created by Szabolcs Tóth on 2021. 08. 10..
//

import SwiftUI

public struct BUISecureTextField: View {
    
    
    @Binding var password: String
    let placeholder: String
    let keyboardType: UIKeyboardType
    var sfSymbol: String = "key"
    var textLeading: CGFloat = 30
    
    public init(password: Binding<String>, placeholder: String, keyboardType: UIKeyboardType, sfSymbol: String, textLeading: CGFloat) {
        self._password = password
        self.placeholder = placeholder
        self.keyboardType = keyboardType
        self.sfSymbol = sfSymbol
        self.textLeading = textLeading
    }
    
    public var body: some View {
        SecureField(placeholder, text: $password)
            .foregroundColor(.bUISecureTextFieldColor)
            .frame(maxWidth: .infinity, minHeight: 44)
            .padding(.leading, textLeading)
            .keyboardType(keyboardType)
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .background(
                ZStack(alignment: .leading) {
                    if let systemImage = sfSymbol {
                        Image(systemName: systemImage)
                            .foregroundColor(checkIfTextFieldIsEmpty(text: password) ? Color.gray : .bUIInputTextFieldColor)
                            .opacity(checkIfTextFieldIsEmpty(text: password) ? 0.3 : 1)
                            .padding(.horizontal, 5)
                    }
                    BUIInputTextFieldBorder()
                }
            )
    }
}
