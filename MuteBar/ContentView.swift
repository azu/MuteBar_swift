//
//  ContentView.swift
//  MuteBar
//
//  Created by azu on 2021/11/24.
//

import SwiftUI
import SimplyCoreAudio
struct ContentView: View {
    @State var isMuted: Bool = false
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 10))
            path.addLine(to: CGPoint(x: 200, y: 10))
            path.addLine(to: CGPoint(x: 200, y: 0))
        }
        .fill(isMuted ? Color.red :Color.blue)
        .frame(width: 200, height: 10)
        .onAppear() {
            let simplyCA = SimplyCoreAudio()
            print("why null?", simplyCA.allInputDevices)
        
         }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
