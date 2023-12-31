//
//  JuiceMaker - FruitStore.swift
//  Created by dasan & kyungmin.
//  Copyright © yagom academy. All rights reserved.
//

final class FruitStore {
    private(set) var fruitInventory: [Int]

    init(initialStock: Int = 10) {
        fruitInventory = Array(repeating: initialStock,
                               count: Fruit.allCases.count)
    }
    
    func hasEnoughStock(fruit: Fruit, amount: Int) -> Bool {
        if fruitInventory[fruit.inventoryIndex] >= amount {
            return true
        } else {
            return false
        }
    }
    
    func changeStock(fruit: Fruit, amount: Int) {
        fruitInventory[fruit.inventoryIndex] = amount
    }
    
    func reduceStock(fruit: Fruit, amount: Int) {
        fruitInventory[fruit.inventoryIndex] -= amount
    }
}
