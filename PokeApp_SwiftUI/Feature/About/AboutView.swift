//
//  AboutView.swift
//  PokeApp_SwiftUI
//
//  Created by user245669 on 1/6/24.
//

import Foundation
import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView(){
            VStack(alignment: .center, spacing: 16) {
                Text("aboutView.title".localized())
                    .font(.title)
                    .fontWeight(.bold)
                Text("David Pérez Contreras")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                AsyncImage(url: URL(string: "https://media.licdn.com/dms/image/D4D03AQH01tCVa3MkTw/profile-displayphoto-shrink_800_800/0/1698511621643?e=1706745600&v=beta&t=0tpJna_ISkKqLo2PiN-rtOOdEWcnPkVuwzpJMsxeDuc")) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                
                Text("aboutView.description".localized())
                    .font(.body)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .padding([.top],100)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(UIColor.systemBlue.withAlphaComponent(0.1)))
            .edgesIgnoringSafeArea(.all)
            .navigationTitle("hola")
    }
}
