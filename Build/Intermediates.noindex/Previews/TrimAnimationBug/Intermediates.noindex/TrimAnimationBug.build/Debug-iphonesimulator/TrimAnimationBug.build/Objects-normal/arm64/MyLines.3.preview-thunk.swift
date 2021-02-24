@_private(sourceFile: "MyLines.swift") import TrimAnimationBug
import SwiftUI
import SwiftUI

extension MyLines_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Xcode Projects/TrimAnimationBug/TrimAnimationBug/MyLines.swift", line: 39)
        AnyView(__designTimeSelection(MyLines(height: __designTimeInteger("#3932.[2].[0].property.[0].[0].arg[0].value", fallback: 300), width: <#T##CGFloat#>), "#3932.[2].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

extension MyLines {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Xcode Projects/TrimAnimationBug/TrimAnimationBug/MyLines.swift", line: 18)

        // ZStack {         // as for me, looks better w/o stack which tighten path
            AnyView(__designTimeSelection(Path { path in
                __designTimeSelection(path.move(to: __designTimeSelection(CGPoint(x: __designTimeInteger("#3932.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 0), y: height/2), "#3932.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#3932.[1].[3].property.[0].[0].arg[0].value.[0]")
                __designTimeSelection(path.addLine(to: __designTimeSelection(CGPoint(x: width/2, y: __designTimeSelection(height, "#3932.[1].[3].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.arg[1].value")), "#3932.[1].[3].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value")), "#3932.[1].[3].property.[0].[0].arg[0].value.[1]")
                __designTimeSelection(path.addLine(to: __designTimeSelection(CGPoint(x: __designTimeSelection(width, "#3932.[1].[3].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value"), y: __designTimeInteger("#3932.[1].[3].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.arg[1].value", fallback: 0)), "#3932.[1].[3].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value")), "#3932.[1].[3].property.[0].[0].arg[0].value.[2]")
            }
            .trim(from: __designTimeInteger("#3932.[1].[3].property.[0].[0].modifier[0].arg[0].value", fallback: 0), to: __designTimeSelection(percentage, "#3932.[1].[3].property.[0].[0].modifier[0].arg[1].value")) // << breaks path by parts, animatable
            .stroke(__designTimeSelection(Color.black, "#3932.[1].[3].property.[0].[0].modifier[1].arg[0].value"), style: __designTimeSelection(StrokeStyle(lineWidth: __designTimeInteger("#3932.[1].[3].property.[0].[0].modifier[1].arg[1].value.arg[0].value", fallback: 5), lineCap: .round, lineJoin: .round), "#3932.[1].[3].property.[0].[0].modifier[1].arg[1].value"))
 
            .onAppear {
                __designTimeSelection(withAnimation(.easeOut(duration: __designTimeFloat("#3932.[1].[3].property.[0].[0].modifier[2].arg[0].value.[0].arg[0].value.arg[0].value", fallback: 2.0))) {
                    self.percentage = 1.0
                }, "#3932.[1].[3].property.[0].[0].modifier[2].arg[0].value.[0]")
               // << activates animation for 0 to the end
            }.padding(), "#3932.[1].[3].property.[0].[0]"))

        //}
    #sourceLocation()
    }
}

import struct TrimAnimationBug.MyLines
import struct TrimAnimationBug.MyLines_Previews