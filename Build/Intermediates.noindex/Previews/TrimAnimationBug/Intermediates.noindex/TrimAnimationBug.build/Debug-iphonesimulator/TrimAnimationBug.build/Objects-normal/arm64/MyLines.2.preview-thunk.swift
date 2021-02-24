@_private(sourceFile: "MyLines.swift") import TrimAnimationBug
import SwiftUI
import SwiftUI

extension MyLines_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Xcode Projects/TrimAnimationBug/TrimAnimationBug/MyLines.swift", line: 39)
        AnyView(MyLines(height: __designTimeInteger("#3932.[2].[0].property.[0].[0].arg[0].value", fallback: 300), width: <#T##CGFloat#>))
    #sourceLocation()
    }
}

extension MyLines {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Xcode Projects/TrimAnimationBug/TrimAnimationBug/MyLines.swift", line: 18)

        // ZStack {         // as for me, looks better w/o stack which tighten path
            AnyView(Path { path in
                path.move(to: CGPoint(x: __designTimeInteger("#3932.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 0), y: height/2))
                path.addLine(to: CGPoint(x: width/2, y: height))
                path.addLine(to: CGPoint(x: width, y: __designTimeInteger("#3932.[1].[3].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.arg[1].value", fallback: 0)))
            }
            .trim(from: __designTimeInteger("#3932.[1].[3].property.[0].[0].modifier[0].arg[0].value", fallback: 0), to: percentage) // << breaks path by parts, animatable
            .stroke(Color.black, style: StrokeStyle(lineWidth: __designTimeInteger("#3932.[1].[3].property.[0].[0].modifier[1].arg[1].value.arg[0].value", fallback: 5), lineCap: .round, lineJoin: .round))
 
            .onAppear {
                withAnimation(.easeOut(duration: __designTimeFloat("#3932.[1].[3].property.[0].[0].modifier[2].arg[0].value.[0].arg[0].value.arg[0].value", fallback: 2.0))) {
                    self.percentage = 1.0
                }
               // << activates animation for 0 to the end
            }.padding())

        //}
    #sourceLocation()
    }
}

import struct TrimAnimationBug.MyLines
import struct TrimAnimationBug.MyLines_Previews