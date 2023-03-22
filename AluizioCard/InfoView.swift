//
//  InfoView.swift
//  AluizioCard
//
//  Created by Jorge Aluizio on 21/03/23.
//

import SwiftUI

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

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
