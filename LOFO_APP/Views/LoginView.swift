//
//  LoginView.swift
//  LOFO_APP
//
//  Created by tsthethi on 5/14/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewVM()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "LoFo", subtitle: "Find Missing Things", angle: 15, background: .mint)
                
                // Login Form
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    ButtonView(title: "Log In", background: .mint) {
                        viewModel.login()
                        
                    }
                    .padding()
                }
                .offset(y:-50)
                // Create Account
                VStack {
                    Text("Dont Have An Account?")
                    NavigationLink("Create An Account", destination: NewUserView())
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
