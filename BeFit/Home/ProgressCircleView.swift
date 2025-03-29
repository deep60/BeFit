//
//  ProgressCircleView.swift
//  BeFit
//
//  Created by P Deepanshu on 29/03/25.
//

import SwiftUI

struct ProgressCircleView: View {
    @Binding var progress: Int
    var goal: Int
    var color: Color
    private let width: CGFloat = 20
    
    var body: some View {
        ZStack {
            Circle()
                //.trim(from: 0.2, to: 1)
                .stroke(color.opacity(0.3), lineWidth: width)
                //.rotationEffect(.degrees(-305))
            
            Circle()
                .trim(from: 0, to: CGFloat(progress) / CGFloat(goal))
                .stroke(color, style: StrokeStyle(lineWidth: width, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .shadow(radius: 5)
        }
        .padding()
    }
}

#Preview {
    ProgressCircleView(progress: .constant(100), goal: 600, color: .teal)
}
