//
//  Crop.swift
//  ImageCropper
//
//  Created by YUJIN KWON on 2/17/24.
//

import SwiftUI

enum Crop: Equatable {
    case circle
    case rectangle
    case square
    case custom(CGSize)
    
    func name() -> String {
        switch self {
        case .circle:
            return "Circle"
        case .rectangle:
            return "Rectangle"
        case .square:
            return "Square"
        case .custom(let cgSize):
            return "Custom \(Int(cgSize.width))X\(Int(cgSize.height))"
        }
    }
    
    func size() -> CGSize {
        switch self {
        case .circle:
            return .init(width: 300, height: 300)
        case .rectangle:
            return .init(width: 300, height: 500)
        case .square:
            return .init(width: 300, height: 300)
        case .custom(let cgSize):
            return cgSize
        }
    }
}

