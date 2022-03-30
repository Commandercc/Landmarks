//
//  CircleImage.swift
//  Landmarks
//
//  Created by zhengxu on 2022/3/30.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        if #available(iOS 15.0, *) {
            image
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
        } else {
            image
                .clipShape(Circle())
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
