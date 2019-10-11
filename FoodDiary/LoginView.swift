//
//  ContentView.swift
//  mySwiftUItests
//
//  Created by Romans Artemjonoks on 09/10/2019.
//  Copyright © 2019 Romans Artemjonoks. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    private let buttonsHeight: CGFloat = 60
    @State private var isPresented = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                BackgroundView()
                VStack(alignment: .center, spacing: 0) {
                    Spacer()
                    
                    Button(action: self.onPresented) {
                        Text("Log In").modifier(LoginButtonModifier(width: geometry.size.width, foregroundColor: #colorLiteral(red: 0.9512947202, green: 0.4389469028, blue: 0.3613445163, alpha: 1)))
                    }
                    
                    Divider()
                    
                    Button(action: self.onPresented) {
                        Text("Register").modifier(LoginButtonModifier(width: geometry.size.width, foregroundColor: #colorLiteral(red: 0.5998285413, green: 0.5761895776, blue: 0.5500357747, alpha: 1)))
                    }
                    
                    Button(action: self.onPresented) {
                        Text("Forgot password")
                            .font(.footnote)
                            .foregroundColor(Color(#colorLiteral(red: 0.5998285413, green: 0.5761895776, blue: 0.5500357747, alpha: 1)))
                            .padding(.top, 4)
                    }
                    Spacer()
                    
                    Button(action: self.onPresented) {
                          Text("No registration").modifier(LoginButtonModifier(width: geometry.size.width, foregroundColor: #colorLiteral(red: 0.5337888002, green: 0.8353468776, blue: 0.8224323392, alpha: 1)))
                      }
                    
                }
                    .alert(isPresented: self.$isPresented) {
                        Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    private func onPresented() {
        self.isPresented.toggle()
    }
}

    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView()
            LoginView().previewLayout(.fixed(width: 568, height: 320))
        }

    }
}

//extension LoginView {
//    struct LoginButton: View {
//        var title: String
//        var font: Font = .system(size: 27, weight: .light)
//        var width: CGFloat
//        var backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        var foregroundColor = #colorLiteral(red: 0.5337888002, green: 0.8353468776, blue: 0.8224323392, alpha: 1)
//        @Binding var isPresented: Bool
//
//        var body: some View {
//            Button(action: {
//                self.isPresented.toggle()
//            }) {
//                Text(title)
//                    .frame(width: width, height: 60, alignment: .center)
//                    .background(Color(backgroundColor))
//                    .foregroundColor(Color(foregroundColor))
//                    .font(font)
//            }
//        }
//    }
//}

extension LoginView {
    struct LoginButtonModifier: ViewModifier {
        var font: Font = .system(size: 27, weight: .light)
        var width: CGFloat
        var backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        var foregroundColor = #colorLiteral(red: 0.5337888002, green: 0.8353468776, blue: 0.8224323392, alpha: 1)
        
        func body(content: Content) -> some View {
            content
                .frame(width: width, height: 60, alignment: .center)
                .background(Color(backgroundColor))
                .foregroundColor(Color(foregroundColor))
                .font(font)
        }
    }
}


