//
//  itemDetail.swift
//  iDine
//
//  Created by Student on 3/7/21.
//

import SwiftUI

struct itemDetail: View {
    @EnvironmentObject var order: Order
    let item: MenuItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                
                Text("Photo: \(item.photoCredit)")
                    
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            
            Text(item.description)
                .padding()
            
            Button("Order This") {
                order.add(item: item)
            }
            .font(.headline)
            
            Spacer()
            
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct itemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        itemDetail(item: MenuItem.example)
            .environmentObject(Order())
        }
    }
}
