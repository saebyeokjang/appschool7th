//
//  FocusStateExample.swift
//  PowerfulSwiftUI
//
//  Created by Saebyeok Jang on 4/3/25.
//

import SwiftUI

struct FocusStateExample: View {
    enum Field: Hashable {
        case username
        case password
    }
    
    @State private var username = ""
    @State private var password = ""
    @FocusState private var focusedField: Field?
    
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .focused($focusedField, equals: .username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .submitLabel(.next)
                .onSubmit {
                    focusedField = .password
                }
            
            SecureField("Password", text: $password)
                .focused($focusedField, equals: .password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .submitLabel(.done)
                .onSubmit {
                    focusedField = nil
                }
            
            VStack(spacing: 20) {
                Button("Focus Username") {
                    focusedField = .username
                }
                .buttonStyle(BorderedProminentButtonStyle())
                
                Button("Focus Password") {
                    focusedField = .password
                }
                .buttonStyle(BorderedProminentButtonStyle())
                
                Button("Dismiss Keyboard") {
                    focusedField = nil
                }
                .buttonStyle(BorderedProminentButtonStyle())
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    FocusStateExample()
}
