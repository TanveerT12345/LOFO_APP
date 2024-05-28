//
//  MainViewVM.swift
//  LOFO_APP
//
//  Created by tsthethi on 5/14/24.
//

import Foundation
import FirebaseAuth

class MainViewVM: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedsIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
