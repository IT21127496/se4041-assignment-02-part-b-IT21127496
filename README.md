# HomeFit App
Please go under edit and edit this file as needed for your project.  There is no seperate documentation needed.

# Project Name - HomeFit
# Student Id - IT21127496
# Student Name - Jayawardana D.N.

## 01. Brief Description of Project

**HomeFit** is a mobile app designed to help users track their fitness progress with ease. The app allows users to sign in anonymously, track their workout data (such as calories burned and workout duration), and view their workout progress. By storing workout data in Firebase Firestore, users can keep a record of their activities over time and improve their fitness journey.

The app is simple and easy to use, with an intuitive interface that allows users to focus on their workouts. It also leverages Firebase for secure user authentication and data storage, making it perfect for anyone looking to track their fitness goals without needing to create an account or remember passwords.

## 02. Users of the System

The app is designed for anyone who wants to track their fitness progress. Key users include:

- **Fitness Enthusiasts**: Users who regularly work out and want to track their performance.
- **Beginners**: People who are just starting their fitness journey and need a simple way to log their progress.
- **Casual Users**: Anyone looking to get motivated by tracking their workout activities like calories burned or workout duration.

## 03. What is Unique About Your Solution

**HomeFit** stands out due to its simplicity and ease of use. Some unique aspects of the app include:

- **Anonymous Sign-In**: Users don’t need to create an account or remember a password. They can get started right away with anonymous sign-in via Firebase Authentication.
- **Firestore Integration**: Workout data is saved securely on Firebase Firestore, so users can keep track of their fitness journey over time.
- **Simple and Focused UI**: The app focuses purely on helping users log their workouts and track progress, with no unnecessary distractions or complex features.

This simplicity, combined with Firebase integration, makes the app perfect for people who want to track their fitness without complicated processes or creating an account.

## 04. Briefly Document the Functionality of the Screens

Here’s a breakdown of the main screens and their functionality:

#### **1. Sign-In Screen**
- **Functionality**: The user can sign in anonymously using Firebase Authentication. Once signed in, the user is taken to the main workout screen.
- **Action**: The button "Sign In" triggers anonymous login and leads to the next screen.

#### **2. Workout Tracking Screen**
- **Functionality**: This screen allows users to start a workout, track calories burned, and workout duration.
  - Users can simulate a workout by clicking "Start Workout," which generates random data for calories burned and workout duration.
  - After finishing a workout, users can click "Save Workout" to store the data in Firebase Firestore.
- **Action**: The workout data is saved and the screen displays a confirmation message.

#### **3. Progress View**
- **Functionality**: This screen shows the user's workout progress. It retrieves the saved workout data from Firebase Firestore and displays it (e.g., calories burned, duration).
- **Action**: The user can see their progress, and if no data is found, it shows a default message.



## 05. Give Examples of Best Practices Used When Writing Code

Here are some best practices used in the development of the **HomeFit** app:

1. **Modular Code**: The code is divided into different classes such as `FirebaseAuthViewModel`, `FirestoreManager`, and individual SwiftUI views (e.g., `WorkoutView`, `ProgressView`). This makes it easier to maintain and debug.
   
2. **State Management with `@StateObject` and `@Published`**: The app uses SwiftUI’s `@StateObject` for managing state in view models and `@Published` to notify views of changes in data.

3. **Error Handling**: Firebase interactions (e.g., saving data, retrieving progress) are wrapped in completion handlers with error handling. This helps the app to handle issues gracefully, like network errors.

4. **User Defaults for Persistent Data**: The app uses `UserDefaults` to store the user’s unique ID, allowing users to stay signed in across sessions.

5. **Separation of Concerns**: The app separates UI code (in SwiftUI Views) from the business logic (in ViewModels and Managers), following the MVVM pattern for clear separation between the user interface and app logic.

## 06. UI Components Used

Here are the key UI components used in **HomeFit**:

- **Buttons**: Used to trigger actions like signing in, starting a workout, and saving progress.
- **Text Views**: Display information such as workout details (calories burned, workout duration).
- **VStack**: Used to arrange components vertically.
- **State Variables**: Manage dynamic content like workout data (e.g., calories burned, workout duration).
- **Navigation Views**: Manage the flow between different views (Sign-In, Workout, Progress).


## 07. Documentation

#### **(a) Design Choices**

The design of **HomeFit** was kept simple and focused on ease of use. The goal was to create an app that any user could start using without a steep learning curve.

- **Minimalistic Interface**: The app only contains three main screens (Sign-In, Workout, Progress), and it doesn't overload users with too many options or screens.
- **Use of SwiftUI**: The app was built using SwiftUI, ensuring that the UI is responsive and easy to update as new features are added.

#### **(b) Implementation**

- **Firebase Authentication**: Firebase was used for user authentication to allow anonymous sign-in.
- **Firestore**: Firebase Firestore stores workout data (calories burned, workout duration) for each user.
- **State Management**: SwiftUI’s `@StateObject` and `@Published` were used to bind the app’s data to the UI and ensure that changes in the data are reflected in the interface.
- **Simple UI**: SwiftUI’s layout tools (e.g., `VStack`, `Button`, `Text`) were used to create a clear, functional user interface.

## 08. Reflection

**HomeFit** was designed to meet the assignment requirements while keeping the user experience simple and straightforward. Here are some reflections on the project:

- **Strengths**:
   - The app is easy to use, and users can start tracking their fitness progress immediately without the need for a complicated sign-in process.
   - Firebase integration is seamless, ensuring that user data is saved and can be retrieved without any hassle.

- **Challenges**:
   - One challenge was deciding on the level of complexity to introduce. The app could be expanded with features like personalized workout plans, social sharing, or advanced progress tracking, but keeping it simple was key for this assignment.
   - Testing was primarily focused on making sure data was saved correctly to Firestore and that the UI updated properly when data changed.

- **Future Improvements**:
   - Adding more workout tracking features, such as tracking different types of workouts (e.g., running, strength training).
   - Implementing a more advanced workout tracking system with visual feedback using the device’s camera or accelerometer.
   - Adding user profiles, so users can customize their goals, track their progress over time, and even connect with others for challenges.
