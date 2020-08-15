//
//  SwiftUIView.swift
//  LocalNotification
//
//  Created by Steven Lipton on 8/14/20.
//

import SwiftUI

struct ModalContentView: View {
    @Binding var needPermission:Bool
    var body: some View {
        VStack {
            Image(systemName:"exclamationmark.triangle.fill").font(.largeTitle).foregroundColor(.red).padding()
            Text("Notifications").font(.headline).padding()
            Text("Need permissions for notifications. Please go to settings to change" )
            Button(action:{needPermission = false}){Text("Okay").padding()}
        }
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ModalContentView(needPermission:.constant(true))
    }
}
