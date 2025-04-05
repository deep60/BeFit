//
//  DailyStepModel.swift
//  BeFit
//
//  Created by P Deepanshu on 05/04/25.
//

import Foundation

struct DailyStepModel: Identifiable {
    let id = UUID()
    let date: Date
    let count: Int
}
