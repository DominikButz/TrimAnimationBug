//
//  ContentView.swift
//  TrimAnimationBug
//
//  Created by Dominik Butz on 24/2/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var showOverlay: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("My Lines (Nav Link)", destination: MyLines(height: 200, width: 250))
                 
                Button(action: {
                    withAnimation(.spring()){
                        self.showOverlay.toggle()
                    }
                }, label: {
                    Text("My Lines (overlay)")
                })
            }
            
        }.overlayView(content: {
            VStack {
                HStack{
                    Button(action: {
                        withAnimation(.spring()){
                            self.showOverlay = false
                        }
                        
                    }, label: {
                        Text("Back")
                    })
                    Spacer()
                    Text("Title")
                    Spacer()
                }.padding(.top, 40).padding(.horizontal, 15)
                
                MyLines(height: 200, width: 250)
                 
                Spacer()
            }
         
        }, background: {
            Color(.systemBackground)
        }, show: $showOverlay, size: nil, transition: AnyTransition.move(edge: .trailing))
 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
