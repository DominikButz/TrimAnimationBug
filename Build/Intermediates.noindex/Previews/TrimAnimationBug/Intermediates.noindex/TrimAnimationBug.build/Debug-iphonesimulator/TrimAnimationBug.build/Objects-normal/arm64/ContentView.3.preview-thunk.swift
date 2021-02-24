@_private(sourceFile: "ContentView.swift") import TrimAnimationBug
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Xcode Projects/TrimAnimationBug/TrimAnimationBug/ContentView.swift", line: 48)
        AnyView(__designTimeSelection(ContentView(), "#3925.[2].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Xcode Projects/TrimAnimationBug/TrimAnimationBug/ContentView.swift", line: 15)
        AnyView(__designTimeSelection(NavigationView {
            __designTimeSelection(VStack {
                __designTimeSelection(NavigationLink(__designTimeString("#3925.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "My Lines (Nav Link)"), destination: __designTimeSelection(MyLines(height: __designTimeInteger("#3925.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.arg[0].value", fallback: 200), width: __designTimeInteger("#3925.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.arg[1].value", fallback: 250)), "#3925.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value")), "#3925.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                __designTimeSelection(Button(action: {
                    __designTimeSelection(self.showOverlay.toggle(), "#3925.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
                }, label: {
                    __designTimeSelection(Text(__designTimeString("#3925.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "My Lines (overlay)")), "#3925.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0]")
                }), "#3925.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
            }, "#3925.[1].[1].property.[0].[0].arg[0].value.[0]")
            
        }.overlayView(content: {
            __designTimeSelection(VStack {
                __designTimeSelection(HStack{
                    __designTimeSelection(Button(action: { self.showOverlay = false}, label: {
                        __designTimeSelection(Text(__designTimeString("#3925.[1].[1].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Back")), "#3925.[1].[1].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0]")
                    }), "#3925.[1].[1].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]")
                    __designTimeSelection(Spacer(), "#3925.[1].[1].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1]")
                }, "#3925.[1].[1].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[0]")
                __designTimeSelection(MyLines(height: __designTimeInteger("#3925.[1].[1].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: 200), width: __designTimeInteger("#3925.[1].[1].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[1].arg[1].value", fallback: 250)), "#3925.[1].[1].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[1]")
                 
                __designTimeSelection(Spacer(), "#3925.[1].[1].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[2]")
            }, "#3925.[1].[1].property.[0].[0].modifier[0].arg[0].value.[0]")
         
        }, background: {
            __designTimeSelection(Color(.systemBackground), "#3925.[1].[1].property.[0].[0].modifier[0].arg[1].value.[0]")
        }, show: __designTimeSelection($showOverlay, "#3925.[1].[1].property.[0].[0].modifier[0].arg[2].value"), size: nil, transition: __designTimeSelection(AnyTransition.move(edge: .trailing), "#3925.[1].[1].property.[0].[0].modifier[0].arg[4].value")), "#3925.[1].[1].property.[0].[0]"))
 
    #sourceLocation()
    }
}

import struct TrimAnimationBug.ContentView
import struct TrimAnimationBug.ContentView_Previews