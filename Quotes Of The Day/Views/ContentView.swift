//
//  ContentView.swift
//  Quotes Of The Day
//
//  Created by Alex Cannizzo on 24/09/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var quote = QuoteModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach (quote.quote) { q in
                    NavigationLink(destination: DetailQuote(quote: q), label: {
                        VStack {
                            ZStack {
                                Image(q.image)
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    
                                    .padding()

                                
                                VStack(alignment: .leading) {
                                    Text(q.quote)
                                        .fontWeight(.black)
                                        .foregroundColor(.white)
                                        .font(.largeTitle)
                                        
                                        .multilineTextAlignment(.leading)
                                        .shadow(color: .black, radius: 5)
                                    
                                    Text(q.author)
                                        .foregroundColor(.white)
                                        .font(.subheadline)
                                        .shadow(color: .black, radius: 5)
                                        .padding(.top, 1)
                                }
                                
                                .padding(.horizontal, 50.0)
                            }
                        }
                    })
                    
                }
            }
            .navigationTitle("Quotes")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
