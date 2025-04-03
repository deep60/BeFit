//
//  DataView.swift
//  BeFit
//
//  Created by P Deepanshu on 29/03/25.
//

import SwiftUI
import Charts

struct DailyStepModel: Identifiable {
    let id = UUID()
    let date: Date
    let count: Double
}

enum ChartOptions: String, CaseIterable {
    case oneWeek = "1W"
    case oneMonth = "1M"
    case threeMonth = "3M"
    case yearToDate = "YTD"
    case oneYear = "1Y"
}

class ChartViewModel: ObservableObject {
    var mockChartData = [
        DailyStepModel(date: Date(), count: 234),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -1, to: Date()) ?? Date(), count: 986),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -2, to: Date()) ?? Date(), count: 876),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -3, to: Date()) ?? Date(), count: 87),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -4, to: Date()) ?? Date(), count: 976),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -5, to: Date()) ?? Date(), count: 86),
        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -6, to: Date()) ?? Date(), count: 876)
    ]
    
//    var mockChartOneMonthData = [
//        DailyStepModel(date: Date(), count: 5678),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -1, to: Date()) ?? Date(), count: 12456),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -2, to: Date()) ?? Date(), count: 8432),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -3, to: Date()) ?? Date(), count: 6789),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -4, to: Date()) ?? Date(), count: 10345),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -5, to: Date()) ?? Date(), count: 9234),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -6, to: Date()) ?? Date(), count: 7543),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -7, to: Date()) ?? Date(), count: 13211),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -8, to: Date()) ?? Date(), count: 8423),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -9, to: Date()) ?? Date(), count: 9786),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -10, to: Date()) ?? Date(), count: 11432),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -11, to: Date()) ?? Date(), count: 8756),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -12, to: Date()) ?? Date(), count: 9543),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -13, to: Date()) ?? Date(), count: 7234),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -14, to: Date()) ?? Date(), count: 11987),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -15, to: Date()) ?? Date(), count: 6789),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -16, to: Date()) ?? Date(), count: 9543),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -17, to: Date()) ?? Date(), count: 8345),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -18, to: Date()) ?? Date(), count: 10234),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -19, to: Date()) ?? Date(), count: 9211),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -20, to: Date()) ?? Date(), count: 8765),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -21, to: Date()) ?? Date(), count: 11342),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -22, to: Date()) ?? Date(), count: 7321),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -23, to: Date()) ?? Date(), count: 12456),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -24, to: Date()) ?? Date(), count: 8453),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -25, to: Date()) ?? Date(), count: 9234),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -26, to: Date()) ?? Date(), count: 10321),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -27, to: Date()) ?? Date(), count: 7543),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -28, to: Date()) ?? Date(), count: 13211),
//        DailyStepModel(date: Calendar.current.date(byAdding: .day, value: -29, to: Date()) ?? Date(), count: 8423)
//    ]
    
    @Published var mockChartOneMonthData = [DailyStepModel]()
    @Published var mockChartThreeMonthData = [DailyStepModel]()
    
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
            let dailyStepData = DailyStepModel(date: currentDate, count: Double(randomStepCount))
            mockData.append(dailyStepData)
        }
        
        return mockData
    }
}

struct ChartView: View {
    @StateObject var viewModel = ChartViewModel()
    @State var selectedChart: ChartOptions = .oneMonth
    var body: some View {
        VStack {
            Text("Charts")
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            ZStack {
                switch selectedChart {
                case .oneWeek:
                    Chart {
                        ForEach(viewModel.mockChartData) { data in
                            BarMark(x: .value(data.date.formatted(), data.date, unit: .day), y: .value("Steps", data.count))
                        }
                    }
                case .oneMonth:
                    Chart {
                        ForEach(viewModel.mockChartOneMonthData) { data in
                            BarMark(x: .value(data.date.formatted(), data.date, unit: .day), y: .value("Steps", data.count))
                        }
                    }
                case .threeMonth:
                    Chart {
                        ForEach(viewModel.mockChartThreeMonthData) { data in
                            BarMark(x: .value(data.date.formatted(), data.date, unit: .day), y: .value("Steps", data.count))
                        }
                    }
                case .yearToDate:
                    EmptyView()
                case .oneYear:
                    Chart {
                        ForEach(viewModel.mockChartData) { data in
                            BarMark(x: .value(data.date.formatted(), data.date, unit: .day), y: .value("Steps", data.count))
                        }
                    }
                }
            }
            .foregroundStyle(.green)
            .frame(maxHeight: 250)
            .padding(.horizontal)
            
            HStack {
                ForEach(ChartOptions.allCases, id: \.rawValue) { option in
                    Button(option.rawValue) {
                        withAnimation {
                            selectedChart = option
                        }
                    }
                    .padding()
                    .foregroundStyle(selectedChart == option ? .white : .green)
                    .background(selectedChart == option ? .green : .clear)
                    .cornerRadius(16)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    ChartView()
}
