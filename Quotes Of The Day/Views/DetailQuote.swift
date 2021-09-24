//
//  DetailQuote.swift
//  Quotes Of The Day
//
//  Created by Alex Cannizzo on 24/09/2021.
//

import SwiftUI

struct DetailQuote: View {
    var quote:Quote
    
    var body: some View {
        ZStack {
            Image(quote.image)
                .resizable()
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                Text(quote.quote)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.black)
                .shadow(color: .black, radius: 5)
                
                Text(quote.author)
                
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .padding(.top, 1.0)
                    .shadow(color: .black, radius: 5)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
    
}

struct DetailQuote_Previews: PreviewProvider {
    static var previews: some View {
        let quote = QuoteModel()
        DetailQuote(quote: quote.quote[0])
    }
}
