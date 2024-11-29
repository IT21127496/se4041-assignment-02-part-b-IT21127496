//
//  ProgressView.swift
//  HomeFitApp
//
//  Created by Devthini Jayawardana on 2024-11-28.
//

import SwiftUI

struct ProgressView: View {
    @State private var progressData: [String: Any] = [:]

    var body: some View {
        VStack {
            Text("Your Workout Progress")
                .font(.largeTitle)
                .padding()

            if let calories = progressData["caloriesBurned"] as? Int,
               let duration = progressData["duration"] as? Int {
                Text("Calories Burned: \(calories)")
                Text("Duration: \(duration) minutes")
            } else {
                Text("No workout data found")
            }
        }
        .onAppear {
            loadProgress()
        }
    }

    private func loadProgress() {
        // For now, you can provide mock data or use your local storage
        progressData = ["caloriesBurned": 150, "duration": 30]
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
