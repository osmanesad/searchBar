//
//  ContentView.swift
//  SwiftUISearchBar
//
//  Created by Osman Esad on 23.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var serachText = ""
    var words = ["Kitap","Kahve","Dergi","Çay","Su","Bardak","Termos","Çanta","Ajanda"]
    
    var body: some View {
        NavigationView{
//            Text("Aradığınız kelime...\(serachText)")
//                .searchable(text: $serachText)
//                .padding()
            List{
                ForEach(searchResults, id: \.self) { word in
                    Text(word)
                }
            }
            .searchable(text: $serachText)
            .navigationTitle("Menü")
        }
    }
    
    var searchResults: [String] {
        if serachText.isEmpty {
            return words
        } else {
            return words.filter({ $0.contains(serachText) })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
