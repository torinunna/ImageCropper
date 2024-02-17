//
//  Home.swift
//  ImageCropper
//
//  Created by YUJIN KWON on 2/17/24.
//

// https://www.youtube.com/watch?v=1Fz86eQjxus

import SwiftUI

struct Home: View {
    
    @State private var showPicker: Bool = false
    @State private var croppedImage: UIImage?
    
    var body: some View {
        NavigationStack {
            VStack {
                if let croppedImage {
                    Image(uiImage: croppedImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 400)
                } else {
                    Text("No image selected")
                        .foregroundStyle(Color.gray)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showPicker.toggle()
                    } label: {
                        Image(systemName: "photo.on.rectangle.angled")
                    }
                    .tint(.black)
                }
            }
            .cropImagePicker(options: [.circle, .square, .rectangle, .custom(.init(width: 200, height: 200))], show: $showPicker, croppedImage: $croppedImage)
        }
    }
}
