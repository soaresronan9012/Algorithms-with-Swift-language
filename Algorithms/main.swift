//
//  main.swift
//  Algorithms
//
//  Created by Ronan Soares on 31/01/25.
//

import Foundation

func quickSort(_ array: [Int]) -> [Int] { // funcao que recebe um array do tipo int e retorna um array int
    guard array.count > 1 else { return array }  // condicao que valida se o array tem mais de um elemento

    let pivot = array[array.count / 2]  // o pivot sempre sera a metade do comprimento do array / aqui se pega o VALOR MEDIANO / o que sobrou da conta e o valor
    let left = array.filter { $0 < pivot } // a parte da esquerda sempre sera os numeros menores que o pivot
    // usa a função filter de uma coleção (como um array) em Swift para filtrar elementos com base em uma condição.

    let middle = array.filter { $0 == pivot } // middle sera igual o pivot
    let right = array.filter { $0 > pivot } // direita sera os valores maiores que o pivot

    return quickSort(left) + middle + quickSort(right)  // retornara a concatecacao dos 3
}

let numbers = [7, 2, 9, 4, 3, 6, 12, 1]
print(quickSort(numbers))
