//
//  CircleImage.swift
//  Landmarks
//
//  Created by zhengxu on 2022/3/30.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        if #available(iOS 15.0, *) {
            Image("turtlerock")
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
        } else {
            Image("turtlerock")
                .clipShape(Circle())
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
