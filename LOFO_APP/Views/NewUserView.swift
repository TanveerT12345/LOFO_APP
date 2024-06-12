//
//  NewUserView.swift
//  LOFO_APP
//
//  Created by tsthethi on 5/14/24.
//

import SwiftUI

struct NewUserView: View {
    
    @StateObject var viewModel = NewUserViewVM()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Make Your Account", angle: -15, background: .orange)
            
            
            Form {
                
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundStyle(Color.red)
                }
                
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                ButtonView(title: "Create Account", background: .orange) { //Attempt registration
                    viewModel.register()
                }
                .padding()
                .foregroundColor(.black)
            }
            .offset(y: -50)
            Spacer()
            
            
        }
    }
}

#Preview {
    NewUserView()
}
