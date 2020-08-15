//
//  ContentView.swift
//  LocalNotification
//
//  Created by Steven Lipton on 8/14/20.
//

import SwiftUI

struct ContentView: View {
    @State private var didSend:Bool = false
    var body: some View {
        VStack {
            Text("Hello, Pizza Notification!")
                .padding()
            OrderButton(action: {didSend = true}, title: "Send Notification")
            if didSend{
                VStack{
                    Text("Notification Sent")
                    Text("Hit Command-L to lock your phone")
                }.onTapGesture{didSend = false}
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
