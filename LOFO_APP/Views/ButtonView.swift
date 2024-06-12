//
//  ButtonView.swift
//  LOFO_APP
//
//  Created by tsthethi on 5/15/24.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius:10)
                    .foregroundColor(background)
                
                Text(title)
                    .bold()
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Value", background: .yellow) {
        //Action
        }
    }   
}
