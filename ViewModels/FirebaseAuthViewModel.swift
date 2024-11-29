//
//  FirebaseAuthViewModel.swift
//  HomeFitApp
//
//  Created by Devthini Jayawardana on 2024-11-28.
//

import Foundation

class FirebaseAuthViewModel: ObservableObject {
    @Published var isAuthenticated: Bool = false
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String?
    
    // Mock user data
    private let mockUser = (email: "testuser@example.com", password: "password123")

    init() {
        checkAuthStatus()
    }

    // Check if the user is already authenticated (in this case, we'll use mock data)
    func checkAuthStatus() {
        if isAuthenticated {
            self.errorMessage = nil
        }
    }

    // Mock sign-up function
    func signUp() {
        if email.isEmpty || password.isEmpty {
            errorMessage = "Email or password cannot be empty."
            return
        }
        
        if email == mockUser.email {
            errorMessage = "User already exists."
        } else {
            isAuthenticated = true
            errorMessage = nil
        }
    }

    // Mock sign-in function
    func signIn() {
        if email == mockUser.email && password == mockUser.password {
            isAuthenticated = true
            errorMessage = nil
        } else {
            errorMessage = "Invalid credentials."
        }
    }

    // Mock sign-out function
    func signOut() {
        isAuthenticated = false
        email = ""
        password = ""
        errorMessage = nil
    }
}
