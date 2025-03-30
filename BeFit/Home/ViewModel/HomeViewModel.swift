//
//  HomeViewModel.swift
//  BeFit
//
//  Created by P Deepanshu on 30/03/25.
//

import Foundation

class HomeViewModel: ObservableObject {
    var calories: Int = 123
    var active: Int = 8
    var stand: Int = 8
    
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
}
