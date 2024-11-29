//
//  Untitled.swift
//  HomeFitApp
//
//  Created by Devthini Jayawardana on 2024-11-29.
//

import Foundation
import FirebaseFirestore

class FirestoreManager: ObservableObject {
    private var db = Firestore.firestore()

    func saveWorkoutProgress(userID: String, workoutData: [String: Any]) {
        db.collection("workouts").document(userID).setData(workoutData, merge: true) { error in
            if let error = error {
                print("Error saving workout data: \(error.localizedDescription)")
            } else {
                print("Workout data saved successfully.")
            }
        }
    }

    func getWorkoutProgress(userID: String, completion: @escaping ([String: Any]?) -> Void) {
        db.collection("workouts").document(userID).getDocument { document, error in
            if let error = error {
                print("Error fetching workout data: \(error.localizedDescription)")
                completion(nil)
            } else {
                if let document = document, document.exists {
                    completion(document.data())
                } else {
                    print("No workout data found.")
                    completion(nil)
                }
            }
        }
    }
}

