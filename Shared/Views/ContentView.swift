//
//  ContentView.swift
//  Shared
//
//  Created by yujiejhang on 2022/12/12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
//    @State private var jokeIsVisible: Bool = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            VStack {
                Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                    .kerning(2.0)
                    .bold()
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                Text(String(game.target))
                    .kerning(-1.0)
                    .font(.largeTitle)
                    .fontWeight(.black)
                HStack {
                    Text("1")
                        .bold()
                    Slider(value: $sliderValue, in: 1.0...100.0)
                    Text("100")
                        .bold()
                }
//                hit-me buttom
                Button(action: {
                    print("Hello, SwiftUI!")
                    alertIsVisible = true
                }) {
                    Text("HIT ME")
                        .fontWeight(.black)
                        .kerning(1.0)
                        .frame(width: 128, height: 68.59, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .accentColor(.white)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                        .cornerRadius(21)
                        .shadow(color: .gray, radius: 3, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                    
                }
                                    
                .alert(isPresented: $alertIsVisible, content: {
                    let roundedValue: Int = Int(sliderValue.rounded())
                    return Alert(title: Text("Hello there!"), message: Text("The slider's value is \(roundedValue). \n" + "You scored \(game.points(sliderValue:roundedValue)) points this round."), dismissButton: .default(Text("Awesome!")))
                        
                })            
//                Knock-Knock buttom
//                Button(action: {
//                    self.jokeIsVisible = true
//                }) {
//                    Text("Knock Knock")
//                }
//                .alert(isPresented: $jokeIsVisible, content: {
//                    return Alert(title: Text("Who's There?"), message: Text("Little old lady."),
//                                 dismissButton: .default(Text("Little old lady who?")))
//                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.sizeCategory, .extraLarge)
            ContentView()
                .environment(\.sizeCategory, .extraLarge)
        }
        ContentView()
          .previewLayout(.fixed(width: 568, height: 320))
    }
}
