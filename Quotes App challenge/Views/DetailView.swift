//
//  DetailView.swift
//  Quotes App challenge
//
//  Created by Carmen Lucas on 18/6/23.
//

import SwiftUI

struct DetailView: View {
    var quote: Quote
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                Text(quote.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                ForEach(0..<quote.quotes.count, id:\.self){ index in
                    Text(quote.quotes[index])
                        .padding(.vertical,5)
                
                }
               
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        DetailView(quote:model.quotes[0])
    }
}
