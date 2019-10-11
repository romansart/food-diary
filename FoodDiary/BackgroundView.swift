//
//  BackgroundView.swift
//  mySwiftUItests
//
//  Created by Romans Artemjonoks on 11/10/2019.
//  Copyright © 2019 Romans Artemjonoks. All rights reserved.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
               Color(#colorLiteral(red: 0.860806644, green: 0.8712102771, blue: 0.8576899171, alpha: 1))
                HStack() {
                    Path { path in
                        let linesCount = Int(geometry.size.width / 3)
                        for i in 0..<linesCount {
                            path.move(to: CGPoint(x: i*3, y: 0))
                            path.addLine(to: CGPoint(x: CGFloat(i*3), y: geometry.size.height))
                        }
                        
                    }
                    .stroke(Color(#colorLiteral(red: 0.8930315375, green: 0.8985024691, blue: 0.8850607276, alpha: 1)), lineWidth: 1)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
