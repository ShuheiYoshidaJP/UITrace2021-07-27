//
//  ContentView.swift
//  UITrace2021年7月27日
//
//  Created by 吉田周平 on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CashView()
                .tabItem {
                    Image(systemName: "creditcard")
                }
        }
        .accentColor(.black)
    }
}

struct CashView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Cash Card")
                    .font(.title)
                Spacer()
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 36.0, height: 36.0)
            }
            .padding(.horizontal)
            TabView {
                ForEach(1 ..< 4) {_ in
                    VStack {
                        Image(systemName: "sun.dust")
                            .resizable()
                            .frame(maxWidth: .infinity)
                            .aspectRatio(1.0, contentMode: .fit)
                        Text("Bank With It")
                            .font(.title)
                            .padding()
                        Text("Access banking features like direct deposit. ATM withdraws. and more")
                            .padding(.horizontal, 36)
                        
                    }
                }
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Get Free Cash Card")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(.sRGB, red: 0, green: 215/255, blue: 79/255, opacity: 1.0))
                    .cornerRadius(24)
                    .padding(48)
            })
        }.background(Color(.sRGB,
                           red: 250/255,
                           green: 250/255,
                           blue: 250/255,
                           opacity: 1.0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
