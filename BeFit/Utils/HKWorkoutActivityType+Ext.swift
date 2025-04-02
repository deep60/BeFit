//
//  HKWorkoutActivityType+Ext.swift
//  BeFit
//
//  Created by P Deepanshu on 01/04/25.
//

import HealthKit
import SwiftUI

extension HKWorkoutActivityType {

    /*
     Simple mapping of available workout types to a human readable name.
     */
    var name: String {
        switch self {
        case .americanFootball:             return "American Football"
        case .archery:                      return "Archery"
        case .australianFootball:           return "Australian Football"
        case .badminton:                    return "Badminton"
        case .baseball:                     return "Baseball"
        case .basketball:                   return "Basketball"
        case .bowling:                      return "Bowling"
        case .boxing:                       return "Boxing"
        case .climbing:                     return "Climbing"
        case .crossTraining:                return "Cross Training"
        case .curling:                      return "Curling"
        case .cycling:                      return "Cycling"
        case .dance:                        return "Dance"
        case .danceInspiredTraining:        return "Dance Inspired Training"
        case .elliptical:                   return "Elliptical"
        case .equestrianSports:             return "Equestrian Sports"
        case .fencing:                      return "Fencing"
        case .fishing:                      return "Fishing"
        case .functionalStrengthTraining:   return "Functional Strength Training"
        case .golf:                         return "Golf"
        case .gymnastics:                   return "Gymnastics"
        case .handball:                     return "Handball"
        case .hiking:                       return "Hiking"
        case .hockey:                       return "Hockey"
        case .hunting:                      return "Hunting"
        case .lacrosse:                     return "Lacrosse"
        case .martialArts:                  return "Martial Arts"
        case .mindAndBody:                  return "Mind and Body"
        case .mixedMetabolicCardioTraining: return "Mixed Metabolic Cardio Training"
        case .paddleSports:                 return "Paddle Sports"
        case .play:                         return "Play"
        case .preparationAndRecovery:       return "Preparation and Recovery"
        case .racquetball:                  return "Racquetball"
        case .rowing:                       return "Rowing"
        case .rugby:                        return "Rugby"
        case .running:                      return "Running"
        case .sailing:                      return "Sailing"
        case .skatingSports:                return "Skating Sports"
        case .snowSports:                   return "Snow Sports"
        case .soccer:                       return "Soccer"
        case .softball:                     return "Softball"
        case .squash:                       return "Squash"
        case .stairClimbing:                return "Stair Climbing"
        case .surfingSports:                return "Surfing Sports"
        case .swimming:                     return "Swimming"
        case .tableTennis:                  return "Table Tennis"
        case .tennis:                       return "Tennis"
        case .trackAndField:                return "Track and Field"
        case .traditionalStrengthTraining:  return "Traditional Strength Training"
        case .volleyball:                   return "Volleyball"
        case .walking:                      return "Walking"
        case .waterFitness:                 return "Water Fitness"
        case .waterPolo:                    return "Water Polo"
        case .waterSports:                  return "Water Sports"
        case .wrestling:                    return "Wrestling"
        case .yoga:                         return "Yoga"

        // iOS 10
        case .barre:                        return "Barre"
        case .coreTraining:                 return "Core Training"
        case .crossCountrySkiing:           return "Cross Country Skiing"
        case .downhillSkiing:               return "Downhill Skiing"
        case .flexibility:                  return "Flexibility"
        case .highIntensityIntervalTraining:    return "High Intensity Interval Training"
        case .jumpRope:                     return "Jump Rope"
        case .kickboxing:                   return "Kickboxing"
        case .pilates:                      return "Pilates"
        case .snowboarding:                 return "Snowboarding"
        case .stairs:                       return "Stairs"
        case .stepTraining:                 return "Step Training"
        case .wheelchairWalkPace:           return "Wheelchair Walk Pace"
        case .wheelchairRunPace:            return "Wheelchair Run Pace"

        // iOS 11
        case .taiChi:                       return "Tai Chi"
        case .mixedCardio:                  return "Mixed Cardio"
        case .handCycling:                  return "Hand Cycling"

        // iOS 13
        case .discSports:                   return "Disc Sports"
        case .fitnessGaming:                return "Fitness Gaming"

        // Catch-all
        default:                            return "Other"
        }
    }
    
    var image: String {
        let symbolName: String
        switch self {
        case .americanFootball:             symbolName = "football"
        case .archery:                      symbolName = "target"
        case .australianFootball:           symbolName = "football"
        case .badminton:                    symbolName = "figure.badminton"
        case .baseball:                     symbolName = "baseball"
        case .basketball:                   symbolName = "basketball"
        case .bowling:                      symbolName = "circle.circle"
        case .boxing:                       symbolName = "figure.boxing"
        case .climbing:                     symbolName = "figure.climbing"
        case .crossTraining:                symbolName = "figure.cross.training"
        case .curling:                      symbolName = "curlybraces"
        case .cycling:                      symbolName = "figure.outdoor.cycle"
        case .dance:                        symbolName = "figure.dance"
        case .danceInspiredTraining:        symbolName =  "figure.dance"
        case .elliptical:                   symbolName = "figure.elliptical"
        case .equestrianSports:             symbolName = "figure.outdoor.cycle" // Substitute
        case .fencing:                      symbolName = "smallcircle.filled.circle"
        case .fishing:                      symbolName = "location.north.line"
        case .functionalStrengthTraining:   symbolName = "figure.strengthtraining.functional"
        case .golf:                         symbolName = "figure.golf"
        case .gymnastics:                   symbolName = "figure.gymnastics"
        case .handball:                     symbolName = "circle.fill"
        case .hiking:                       symbolName = "figure.hiking"
        case .hockey:                       symbolName = "hockey.puck"
        case .hunting:                      symbolName = "scope"
        case .lacrosse:                     symbolName = "sportscourt"
        case .martialArts:                  symbolName = "figure.martial.arts"
        case .mindAndBody:                  symbolName = "brain.head.profile"
        case .mixedMetabolicCardioTraining: symbolName = "figure.mixed.cardio"
        case .paddleSports:                 symbolName = "figure.paddlesports"
        case .play:                         symbolName = "gamecontroller"
        case .preparationAndRecovery:       symbolName = "figure.cooldown"
        case .racquetball:                  symbolName = "figure.racquetsports"
        case .rowing:                       symbolName = "figure.rowing"
        case .rugby:                        symbolName = "sportscourt"
        case .running:                      symbolName = "figure.run"
        case .sailing:                      symbolName = "sailboat"
        case .skatingSports:                symbolName = "figure.skating"
        case .snowSports:                   symbolName = "snowflake"
        case .soccer:                       symbolName = "figure.soccer"
        case .softball:                     symbolName = "baseball"
        case .squash:                       symbolName = "figure.racquetsports"
        case .stairClimbing:                symbolName = "figure.stairs"
        case .surfingSports:                symbolName = "figure.surfing"
        case .swimming:                     symbolName = "figure.pool.swim"
        case .tableTennis:                  symbolName = "figure.table.tennis"
        case .tennis:                       symbolName = "figure.tennis"
        case .trackAndField:                symbolName = "stopwatch"
        case .traditionalStrengthTraining:  symbolName = "dumbbell"
        case .volleyball:                   symbolName = "volleyball"
        case .walking:                      symbolName = "figure.walk"
        case .waterFitness:                 symbolName = "figure.water.fitness"
        case .waterPolo:                    symbolName = "figure.water.polo"
        case .waterSports:                  symbolName = "drop"
        case .wrestling:                    symbolName = "figure.wrestling"
        case .yoga:                         symbolName = "figure.yoga"
            
            // iOS 10
        case .barre:                        symbolName = "figure.barre"
        case .coreTraining:                 symbolName = "figure.core.training"
        case .crossCountrySkiing:           symbolName = "figure.skiing.crosscountry"
        case .downhillSkiing:               symbolName = "figure.skiing.downhill"
        case .flexibility:                  symbolName = "figure.flexibility"
        case .highIntensityIntervalTraining: symbolName = "figure.highintensity.intervaltraining"
        case .jumpRope:                     symbolName = "figure.jumprope"
        case .kickboxing:                   symbolName = "figure.kickboxing"
        case .pilates:                      symbolName = "figure.pilates"
        case .snowboarding:                 symbolName = "figure.snowboarding"
        case .stairs:                       symbolName = "figure.stairs"
        case .stepTraining:                 symbolName = "figure.step.training"
        case .wheelchairWalkPace:           symbolName = "figure.roll"
        case .wheelchairRunPace:            symbolName = "figure.roll.runningpace"
            
            // iOS 11
        case .taiChi:                       symbolName = "figure.taichi"
        case .mixedCardio:                  symbolName = "figure.mixed.cardio"
        case .handCycling:                  symbolName = "figure.hand.cycling"
            
            // iOS 13
        case .discSports:                   symbolName = "figure.disc.sports"
        case .fitnessGaming:                symbolName = "gamecontroller"
            
            // Catch-all
        default:                            symbolName = "figure.run"
        }
        
        return symbolName
    }
    
    var color: Color {
            switch self {
            // Cardio activities - red variants
            case .running, .walking, .hiking, .stairs, .stairClimbing, .stepTraining, .elliptical, .highIntensityIntervalTraining:
                return Color.red
                
            // Cycling activities - orange variants
            case .cycling, .handCycling:
                return Color.orange
                
            // Water activities - blue variants
            case .swimming, .waterFitness, .waterPolo, .waterSports, .surfingSports, .paddleSports, .rowing, .sailing:
                return Color.blue
                
            // Strength & conditioning - purple variants
            case .traditionalStrengthTraining, .functionalStrengthTraining, .coreTraining, .flexibility:
                return Color.purple
                
            // Mind & body activities - mint/green variants
            case .yoga, .pilates, .mindAndBody, .taiChi, .barre, .dance, .danceInspiredTraining:
                return Color.mint
                
            // Ball sports - green variants
            case .basketball, .soccer, .baseball, .softball, .volleyball, .americanFootball,
                 .australianFootball, .rugby, .hockey, .tennis, .tableTennis, .badminton,
                 .racquetball, .squash, .handball, .lacrosse, .discSports:
                return Color.green
                
            // Winter sports - cyan variants
            case .snowSports, .snowboarding, .downhillSkiing, .crossCountrySkiing, .skatingSports:
                return Color.cyan
                
            // Combat sports - red/orange variants
            case .boxing, .martialArts, .wrestling, .fencing, .kickboxing:
                return Color.red.opacity(0.8)
                
            // Outdoor sports - brown/earth variants
            case .climbing, .fishing, .hunting, .golf, .equestrianSports:
                return Color.brown
                
            // Leisure activities - indigo variants
            case .play, .fitnessGaming, .bowling, .curling:
                return Color.indigo
                
            // Mixed/recovery - yellow variants
            case .mixedCardio, .mixedMetabolicCardioTraining, .crossTraining, .preparationAndRecovery:
                return Color.yellow
                
            // Gymnastics, track & field - teal variants
            case .gymnastics, .trackAndField:
                return Color.teal
                
            // Accessibility-focused - pink variants
            case .wheelchairRunPace, .wheelchairWalkPace:
                return Color.pink
                
            // Catch-all for other activities
            default:
                return Color.gray
            }
        }
}
