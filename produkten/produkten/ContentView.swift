//
//  ContentView.swift
//  produkten
//
//  Created by arachnothrone on 2021-12-29.
//

import SwiftUI

struct CostcoItem: Identifiable {
    let name: String
    let price: Double
    let id = UUID()
}

private var items = [
    CostcoItem(name: "Moloko 4L", price: 8.99),
    CostcoItem(name: "Bread MillerMills", price: 5.43),
    CostcoItem(name: "Coffe Columbian", price: 12.34),
    CostcoItem(name: "I_1", price: 0.1),
    CostcoItem(name: "I_2", price: 0.1),
    CostcoItem(name: "I_3", price: 0.1),
    CostcoItem(name: "I_4", price: 0.1),
    CostcoItem(name: "I_5", price: 0.1),
    CostcoItem(name: "I_6", price: 0.1),
    CostcoItem(name: "I_7", price: 0.1),
    CostcoItem(name: "I_8", price: 0.1),
    CostcoItem(name: "I_9", price: 0.1),
    CostcoItem(name: "I_10", price: 0.1),
    CostcoItem(name: "I_11", price: 0.1),
    CostcoItem(name: "I_12", price: 0.1),
    CostcoItem(name: "I_13", price: 0.1),
    CostcoItem(name: "I_14", price: 0.1),
    CostcoItem(name: "I_15", price: 0.1),
    CostcoItem(name: "I_16", price: 0.1),
    CostcoItem(name: "I_17", price: 0.1),
    CostcoItem(name: "I_18", price: 0.1)
]

struct ContentView: View {


    @State private var multiSelection = Set<UUID>()
    var body: some View {

        NavigationView {
            List(items, selection: $multiSelection) {
                Text($0.name + ": $" + String($0.price))
            }
            .navigationTitle("Goods to find")
            .toolbar {EditButton()}
        }
        Text("\(multiSelection.count) selections")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
