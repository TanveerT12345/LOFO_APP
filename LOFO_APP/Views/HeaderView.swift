//
//  HeaderView.swift
//  LOFO_APP
//
//  Created by tsthethi on 5/14/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(background)
                    .rotationEffect(Angle(degrees:angle))
                
                VStack {
                    Text(title)
                        .font(.system(size: 50))
                        .foregroundColor(Color.black)
                        .bold()
                    Text(subtitle)
                        .font(.system(size: 35))
                        .foregroundColor(Color.black)
                        .bold()
                }
                .padding(.top, 80)
            }
            .frame(width: UIScreen.main.bounds.width * 3,   height: 350)
            .offset(y:-150)
        }
    }

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .blue)
}
