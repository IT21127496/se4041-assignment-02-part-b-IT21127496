//
//  ContentView.swift
//  HomeFitApp
//
//  Created by Devthini Jayawardana on 2024-11-28.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var authVM = FirebaseAuthViewModel()

    var body: some View {
        NavigationView {
            VStack {
                if authVM.isAuthenticated {
                    // Show workout view if authenticated
                    Text("Welcome, \(authVM.email)") // Display email of the user
                        .font(.title)
                        .padding()

                    WorkoutView() // Replace with your actual workout view

                    Button("Sign Out") {
                        authVM.signOut()
                    }
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                } else {
                    // Display error message, if any
                    if let errorMessage = authVM.errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                            .padding()
                    }

                    // Sign In Form
                    TextField("Email", text: $authVM.email)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)

                    SecureField("Password", text: $authVM.password)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))

                    HStack {
                        Button("Sign In") {
                            authVM.signIn()
                        }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)

                        Button("Sign Up") {
                            authVM.signUp()
                        }
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    }
                    .padding()
                }
            }
            .navigationBarHidden(true) // Hide the navigation bar on the main view
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
