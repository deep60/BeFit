//
//  ChartViewModel.swift
//  BeFit
//
//  Created by P Deepanshu on 05/04/25.
//

import Foundation

class ChartViewModel: ObservableObject {
    var mockWeekChartData = [
        DailyStepModel(date: Date(), count: 234),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -1, to: Date()) ?? Date(), count: 986),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -2, to: Date()) ?? Date(), count: 876),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -3, to: Date()) ?? Date(), count: 87),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -4, to: Date()) ?? Date(), count: 976),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -5, to: Date()) ?? Date(), count: 86),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -6, to: Date()) ?? Date(), count: 876)
    ]
    
    var mockChartYTData = [
        MonthlyStepModel(date: Date(), count: 5678),
        MonthlyStepModel(date: Calendar.current.date(byAdding: .month, value: -1, to: Date()) ?? Date(), count: 12456),
        MonthlyStepModel(date: Calendar.current.date(byAdding: .month, value: -2, to: Date()) ?? Date(), count: 8432),
        MonthlyStepModel(date: Calendar.current.date(byAdding: .month, value: -3, to: Date()) ?? Date(), count: 6789),
        MonthlyStepModel(date: Calendar.current.date(byAdding: .month, value: -4, to: Date()) ?? Date(), count: 6789),
        MonthlyStepModel(date: Calendar.current.date(byAdding: .month, value: -5, to: Date()) ?? Date(), count: 6789),
        MonthlyStepModel(date: Calendar.current.date(byAdding: .month, value: -6, to: Date()) ?? Date(), count: 6789),
        MonthlyStepModel(date: Calendar.current.date(byAdding: .month, value: -7, to: Date()) ?? Date(), count: 6789),
    ]
    
    @Published var mockChartOneMonthData = [DailyStepModel]()
    @Published var mockChartThreeMonthData = [DailyStepModel]()
    
    @Published var oneWeekAverage = 0
    @Published var oneWeekTotal = 0
    
    @Published var mockOneMonthData = [DailyStepModel]()
    @Published var oneMonthAverage = 1200
    @Published var oneMonthTotal = 900
    
    @Published var mockThreeMonthData = [DailyStepModel]()
    @Published var threeMonthAverage = 0
    @Published var threeMonthTotal = 0
    
    @Published var ytdAverage = 0
    @Published var ytdTotal = 0
    
    @Published var oneYearAverage = 0
    @Published var oneYearTotal = 0
    
    init() {
        var mockOneMonth = self.mockDataForDays(days: 30)
        var mockThreeMonths = self.mockDataForDays(days: 90)
        DispatchQueue.main.async {
            self.mockChartOneMonthData = mockOneMonth
            self.mockChartThreeMonthData = mockThreeMonths
        }
    }
    
    func mockDataForDays(days: Int) -> [DailyStepModel] {
        var mockData = [DailyStepModel]()
        for day in 0..<days {
            let currentDate = Calendar.current.date(byAdding: .day, value: -day, to: Date()) ?? Date()
            let randomStepCount = Int.random(in: 500...15000)
            let dailyStepData = DailyStepModel(date: currentDate, count: randomStepCount)
            mockData.append(dailyStepData)
        }
        
        return mockData
    }
}
