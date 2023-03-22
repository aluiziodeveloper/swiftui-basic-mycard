//
//  ContentView.swift
//  AluizioCard
//
//  Created by Jorge Aluizio on 21/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.09, green: 0.63, blue: 0.52, alpha: 1.0))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170.0, height: 170.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Jorge Aluizio")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold(true)
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+55 22 99999-9999", imageName: "phone.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 27)
            .fill(Color.white)
            .frame(height: 55.0)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                    Text(text).foregroundColor(.black)
                }
            )
            .padding(.all)
    }
}
