//
//  ContentView.swift
//  Quotes App challenge
//
//  Created by Carmen Lucas on 18/6/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = QuoteModel()
    var body: some View {
        ScrollView {
            VStack(spacing:20) {
                ForEach(0..<model.quotes.count, id:\.self){ index in
                    ZStack{
                        Image(model.quotes[index].image)
                            .resizable()
                        
                            .scaledToFit()
                            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                            

                        VStack (alignment: .leading, spacing: 15){
                            Text(model.quotes[index].featuredQuote)
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                                
                            Text("- " + model.quotes[index].name)
                                .foregroundColor(Color.white)
                        }.padding(.all)
                        
                    }
                    
                    
                }
               
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
