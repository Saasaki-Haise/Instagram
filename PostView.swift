//
//  PostView.swift
//  Instagram
//
//  Created by Haise on 28/01/2020.
//  Copyright © 2020 Haise. All rights reserved.
//

import SwiftUI

struct Post: Identifiable {
    var profilImage = String()
    var id = UUID()
    var image = String()
    var name = String()
    var lieu = String()
    var text = String()
}

struct PostView: View {
    var posts: [Post] = [
        Post(profilImage: "sasuke" ,image: "sasuke",name: "Sasuke Uchiha", lieu: "Konoha", text: "Enfin activé mon Sharingan pour Fumé Naruto #UchihaGang"),
    Post(profilImage: "tsu" ,image: "itachi",name: "Itachi Uchiha", lieu: "Kiri",text: "Celui quiu trouve mon déserteur de petit Frére appelz moi j'aimerais qu'il me rejoigne dans l'Akatsuiki ;)"),
    Post(profilImage: "kakashi" ,image: "equipe",name: "Kakashi Atake", lieu: "Konoha",text: "Equipe 7 tu coco ;) Bon Sakura sert a R mais elle est Al"),
    Post(profilImage: "sasu" ,image: "naruto",name: "Naruto Uzumaki", lieu: "Pays du Vent",text: "Avec le sang de la veine."),
    Post(profilImage: "sakura" ,image: "bebe",name: "Sakura Haruno", lieu: "Pays du Vent",text: "Enfin enceinte de Sasuke .."),
    Post(profilImage: "sakura", image: "sakura", name: "FDP", lieu: "Ta mere", text: "Je suis un FDP")
    ]
 
    
    var body: some View {
        List(posts) {
            Post in
            VStack (alignment: .leading) {
                HStack {
                    Image(Post.profilImage)
                    .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 32.0, height: 32.0)
                    .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text(Post.name)
                            .font(.headline)
                            .fontWeight(.medium)
                        Text(Post.lieu)
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                    Spacer()
                    Text("...")
                
                }
                Image(Post.image)
                .resizable()
                    .aspectRatio(contentMode: .fill)
                HStack {
                    Image(systemName: "heart")
                    Image(systemName: "message")
                    Image(systemName: "paperplane")
                    Spacer()
                    Image(systemName: "bookmark")
                    
                }
                HStack(alignment: .center){
                    Image("sasuke")
                    .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 32.0, height: 32.0)
                    .clipShape(Circle())
                    Text("Aime par Sasuke et 92 autres personnes")
                    
                }
                Text(Post.text)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
            }
               
        }.padding(-5)
            
                
            }
        
            }
            


struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}

