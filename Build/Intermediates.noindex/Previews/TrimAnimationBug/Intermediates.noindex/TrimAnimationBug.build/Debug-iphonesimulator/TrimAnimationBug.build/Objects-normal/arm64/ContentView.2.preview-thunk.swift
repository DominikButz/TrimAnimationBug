@_private(sourceFile: "ContentView.swift") import TrimAnimationBug
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Xcode Projects/TrimAnimationBug/TrimAnimationBug/ContentView.swift", line: 49)
        AnyView(ContentView())
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Xcode Projects/TrimAnimationBug/TrimAnimationBug/ContentView.swift", line: 15)
        AnyView(NavigationView {
            VStack {
                NavigationLink(__designTimeString("#3925.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "My Lines (Nav Link)"), destination: MyLines(height: __designTimeInteger("#3925.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.arg[0].value", fallback: 200), width: __designTimeInteger("#3925.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.arg[1].value", fallback: 250)))
                
                Button(action: {
                    self.showOverlay.toggle()
                }, label: {
                    Text(__designTimeString("#3925.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "My Lines (overlay)"))
                })
            }
            
        }.overlayView(content: {
            VStack {
                HStack{
                    Button(action: { self.showOverlay = false}, label: {
                        Text(__designTimeString("#3925.[1].[1].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Back"))
                    })
                    Spacer()
                }.padding(.top, __designTimeInteger("#3925.[1].[1].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[1].value", fallback: 40)).padding(.horizontal, __designTimeInteger("#3925.[1].[1].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 15))
                
                MyLines(height: __designTimeInteger("#3925.[1].[1].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: 200), width: __designTimeInteger("#3925.[1].[1].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[1].arg[1].value", fallback: 250))
                 
                Spacer()
            }
         
        }, background: {
            Color(.systemBackground)
        }, show: $showOverlay, size: nil, transition: AnyTransition.move(edge: .trailing).animation(.easeInOut(duration: __designTimeFloat("#3925.[1].[1].property.[0].[0].modifier[0].arg[4].value.modifier[0].arg[0].value.arg[0].value", fallback: __designTimeFloat("#3925.[1].[1].property.[0].[0].modifier[0].arg[4].value.arg[0].value.arg[0].value", fallback: 0.3))))))
 
    #sourceLocation()
    }
}

import struct TrimAnimationBug.ContentView
import struct TrimAnimationBug.ContentView_Previews