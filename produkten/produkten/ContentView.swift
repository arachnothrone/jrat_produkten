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
    CostcoItem(name: "Moloko 4L", price: 8.29),
    CostcoItem(name: "Bread MillerMills", price: 6.99),
    CostcoItem(name: "Coffe Columbian", price: 11.49),
    CostcoItem(name: "Cheese Mozzarella 1kg", price: 12.99),
    CostcoItem(name: "Cheese Port Salut", price: 5.99),
    CostcoItem(name: "Cheese Port Salut", price: 5.99),
    CostcoItem(name: "Cheese PleineLune", price: 12.79),
    CostcoItem(name: "Cheese Jarlsberg slices", price: 12.49),
    CostcoItem(name: "Cheese Jarlsberg brick", price: 12.49),
    CostcoItem(name: "Eggs 24", price: 7.59),
    CostcoItem(name: "Sour cream", price: 4.49),
    CostcoItem(name: "Cottage cheese", price: 9.99),
    CostcoItem(name: "Cottage cheese", price: 9.99),
    CostcoItem(name: "Ricotta", price: 12.00),
    CostcoItem(name: "Butter", price: 4.49),
    CostcoItem(name: "Youghurt YOP", price: 9.99),
    CostcoItem(name: "Fish red", price: 40.0),
    CostcoItem(name: "Salmon DOM smoked", price: 15.99),
    CostcoItem(name: "Lean ground Beef", price: 25.0),
    CostcoItem(name: "Frozen berries", price: 15.00),
    CostcoItem(name: "Ice cream Moose", price: 6.49),
    CostcoItem(name: "Ice cream Moose vanilla", price: 6.49),
    CostcoItem(name: "Ice cream mochi", price: 14.99),
    CostcoItem(name: "Tuna cans (6x)", price: 10.00),
    CostcoItem(name: "Pickes", price: 10.00),
    CostcoItem(name: "Whipped cream", price: 8.49),
    CostcoItem(name: "Coffee Lavazza", price: 15.00),
    CostcoItem(name: "Pepperkaka (gingerbread)", price: 5.69),
    CostcoItem(name: "Oranges", price: 11.99),
    CostcoItem(name: "Mandarin", price: 5.59),
    CostcoItem(name: "Beetroot (svekla)", price: 10.00),
    CostcoItem(name: "Cucumbers", price: 6.49),
    CostcoItem(name: "Cucumbers", price: 6.49),
    CostcoItem(name: "Tomatoes", price: 8.99),
    CostcoItem(name: "Potato", price: 5.99),
    CostcoItem(name: "Onion shallot", price: 10.00),
    CostcoItem(name: "Shampoo", price: 8.99),
    CostcoItem(name: "Cat litter toilet", price: 9.99),
    CostcoItem(name: "Antistatic napkins for laundry", price: 15.00),
    CostcoItem(name: "-", price: 5.00),
    CostcoItem(name: "Salsa gut", price: 8.49),
    CostcoItem(name: "Que Pasa", price: 5.99),
    CostcoItem(name: "-", price: 10.00),
    CostcoItem(name: "-", price: 15.00),
    CostcoItem(name: "-", price: 20.00),
]

struct ContentView: View {

    @State private var multiSelection = Set<UUID>()
    @State var value: Double = 0.0
    
    var body: some View {

        NavigationView {
            List(items, selection: $multiSelection) {
                Text($0.name + ": $" + String($0.price))
            }
            .navigationTitle("Costco list")
            .toolbar {EditButton()}
            
        }
        
        Text("\(multiSelection.count) selections")
        
//        Button("ion") {for a in multiSelection {print("---> \(a.uuidString)")}}
        Button("Selected value:") {
            var summa = 0.0
            for z in items {
                for s in multiSelection {
                    if ("\(z.id)" == s.uuidString) {
                        print("\(z.name) -> \(z.price)")
                        summa += z.price
                    }
                }
                //contains(entities, { $0 is Player } )
            }
            value = summa
        }
        Text(String(format: "$ %3.2f", value))
//            .onChange(of: value, perform: { value in
//                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Code@*/ /*@END_MENU_TOKEN@*/
//            })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
