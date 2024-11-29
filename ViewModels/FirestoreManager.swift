//
//  FirestoreManager.swift
//  HomeFitApp
//
//  Created by Devthini Jayawardana on 2024-11-28.
//

import FirebaseFirestore

class FirestoreManager: ObservableObject {
    private var db = Firestore.firestore()

    // Save workout data
    func saveWorkoutProgress(userID: String, workoutData: [String: Any]) {
        db.collection("workouts").document(userID).setData(workoutData) { error in
            if let error = error {
                print("Error saving workout data: \(error.localizedDescription)")
            } else {
                print("Workout saved")
            }
        }
    }

    // Retrieve workout data
    func getWorkoutProgress(userID: String, completion: @escaping ([String: Any]?) -> Void) {
        db.collection("workouts").document(userID).getDocument { snapshot, error in
            if let error = error {
                print("Error fetching workout data: \(error.localizedDescription)")
                completion(nil)
            } else if let data = snapshot?.data() {
                completion(data)
            }
        }
    }
}
