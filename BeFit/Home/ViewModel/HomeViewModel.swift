//
//  HomeViewModel.swift
//  BeFit
//
//  Created by P Deepanshu on 30/03/25.
//

import Foundation

class HomeViewModel: ObservableObject {
    let healthManager = HealthManager.shared
    
    @Published var calories: Int = 0
    @Published var exercise: Int = 24
    @Published var stand: Int = 0
    
    var mockActivites = [
        Activity(id: 0, title: "Today Steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9812"),
        Activity(id: 1, title: "Today", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .red, amount: "9812"),
        Activity(id: 2, title: "Today Steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "9812"),
        Activity(id: 3, title: "Today Steps", subtitle: "Goal 12,000", image: "figure.run", tintColor: .purple, amount: "9812")
    ]
    
    var mockWorkouts = [
        Workout(id: 0, title: "Running", image: "figure.run", tintColor: .cyan, duration: "51 mins", date: "Aug 3", calories: "341 kcal"),
        Workout(id: 1, title: "Strength Running", image: "figure.run", tintColor: .red, duration: "51 mins", date: "Aug 13", calories: "341 kcal"),
        Workout(id: 2, title: "Running", image: "figure.run", tintColor: .purple, duration: "51 mins", date: "Aug 31", calories: "341 kcal"),
        Workout(id: 3, title: "Running", image: "figure.run", tintColor: .cyan, duration: "51 mins", date: "Aug 3", calories: "341 kcal")
    ]
    
    init() {
        Task {
            do {
                try await healthManager.requestHealthKitAccess()
                fetchTodayCalories()
                fetchTodayExerciseTime()
                fetchTodayStandHour()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func fetchTodayCalories() {
        healthManager.fetchTodayCalorieBurned { result in
            switch result {
            case .success(let calories):
                DispatchQueue.main.async {
                    self.calories = Int(calories)
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    func fetchTodayExerciseTime() {
        healthManager.fetchTodayExerciseTime { result in
            switch result {
            case .success(let exercise):
                DispatchQueue.main.async {
                    self.exercise = Int(exercise)
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    func fetchTodayStandHour() {
        healthManager.fetchTodayStandHour { result in
            switch result {
            case .success(let hours):
                DispatchQueue.main.async {
                    self.stand = hours
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
}
