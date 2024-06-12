//
//  ForgotPasswordViewVM.swift
//  LOFO_APP
//
//  Created by tsthethi on 6/11/24.
//

import Foundation
import FirebaseAuth

class ForgotPasswordViewVM: ObservableObject {
    
    init() {}
    
    @Published var email = ""
    @Published var errorMessage = ""
    
    func resetPassword() {
        guard validate() else {
            return
        }
        Auth.auth().sendPasswordReset(withEmail: email)
    }
    
    
    private func validate() -> Bool {
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please enter an email."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email."
            return false
        }
        return true
    }
}
