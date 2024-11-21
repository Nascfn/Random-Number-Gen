//
//  ContentView.swift
//  Random Number Generator
//
//  Created by Paulo Fernandes Nascimento on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var randomNum = 0
    @State var minV = 0
    @State var maxV = 0
    
    var body: some View {
        ZStack{
            Image(.marbleBg)
                .resizable()
                .ignoresSafeArea()
            VStack {
                Text("Random Number Generator")
                    .foregroundStyle(.black)
                    .fontWeight(.heavy)
                    .font(.system(size: 27))
                    .shadow(radius: 5)
                    .padding(.top,10)
                
                Text("\(randomNum)")
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                    .font(.system(size:100))
                    .shadow(radius: 20)
                    .padding(.top,125)
                
                Spacer()
                
                HStack{
                    VStack{
                        HStack{
                            TextField("Min", value: $minV, format: .number)
                                .border(.black, width: 2)
                                .font(.largeTitle)
                                .shadow(radius: 5)
                                .keyboardType(.decimalPad)
                            Text(" Min Value")
                                .fontWeight(.bold)
                                .shadow(radius: 5)
                        }
                        HStack{
                            TextField("Max", value: $maxV, format: .number)
                                .border(.black, width: 2)
                                .font(.largeTitle)
                                .shadow(radius: 5)
                                .keyboardType(.decimalPad)
                            Text("Max Value")
                                .fontWeight(.bold)
                                .shadow(radius: 5)
                        }
                    }
                    
                }
                .padding()
                Button{
                    randomNum = Int.random(in: minV...maxV)
                   
                }label: {
                    Text("Generate Number")
                        .font(.largeTitle)
                        .padding()
                        .shadow(radius: 5)
                        .foregroundStyle(.black)
                        .fontWeight(.bold)
                        .background(.gray.opacity(0.6))
                        .clipShape(.capsule)
                        
                }
            }
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
