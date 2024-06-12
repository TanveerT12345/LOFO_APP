//
//  ForgotPasswordView.swift
//  LOFO_APP
//
//  Created by tsthethi on 6/11/24.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @StateObject var viewModel = ForgotPasswordViewVM()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Password Reset", subtitle: "", angle: 0, background: .gray)
            
            
            Form {
                
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundStyle(Color.red)
                }
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                ButtonView(title: "Send Email", background: .gray) { //Attempt password reset
                    viewModel.resetPassword()
                }
                .padding()
                .foregroundStyle(Color.black)
            }
            .offset(y: -50)
        }
    }
    
}

#Preview {
    ForgotPasswordView()
}
