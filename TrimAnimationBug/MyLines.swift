//
//  MyLines.swift
//  TrimAnimationBug
//
//  Created by Dominik Butz on 24/2/2021.
//

import SwiftUI

struct MyLines: View {
    var height: CGFloat
    var width: CGFloat

    @State private var percentage: CGFloat = .zero
    var body: some View {

            Path { path in
                path.move(to: CGPoint(x: 0, y: height/2))
                path.addLine(to: CGPoint(x: width/2, y: height))
                path.addLine(to: CGPoint(x: width, y: 0))
            }
            .trim(from: 0, to: percentage) // << breaks path by parts, animatable
            .stroke(Color.black, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                    withAnimation(.easeOut(duration: 2.0)) {
                        self.percentage = 1.0
                    }
                })

            }.padding()
            .navigationBarTitle("Correct animation time", displayMode: .inline)
        
    }
}

struct MyLines_Previews: PreviewProvider {
    static var previews: some View {
        MyLines(height: 250, width: 200)
    }
}
