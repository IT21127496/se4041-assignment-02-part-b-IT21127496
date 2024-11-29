//
//  WorkoutView.swift
//  HomeFitApp
//
//  Created by Devthini Jayawardana on 2024-11-28.
//

import SwiftUI

struct WorkoutView: View {
    var body: some View {
        VStack {
            Text("Welcome to the Workout Tracker!")
                .font(.largeTitle)
                .padding()

            // Add your workout-related UI here
            Text("Track your calories and workout duration here.")
                .padding()

            NavigationLink(destination: ProgressView()) {
                Text("View Your Progress")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
