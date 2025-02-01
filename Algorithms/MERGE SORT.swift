//
//  MERGE SORT.swift
//  Algorithms
//
//  Created by Ronan Soares on 01/02/25.
//

import Cocoa

class MERGE_SORT: NSObject {
    
    
    func mergeSort(_ array: [Int]) -> [Int] { // espera-se um array do tipo inteiro
        guard array.count > 1 else { return array } // se esse array for zero ou 1 item ja valida e sai
        
        let middle = array.count / 2   // pega o valor do meio do array
        let left = mergeSort(Array(array[..<middle]))  // quebra denovo o array com os valores a esquerda do meio
        let right = mergeSort(Array(array[middle...])) // valores meio mais seus posteriores
        
        return merge(left, right) // une ambos atraves do metodo merge, que esta escrito apos
    }
    
    
    func merge(_ left: [Int], _ right: [Int]) -> [Int] { // metodo que recebe dois arrays oriundos do metodo mergeSort
        var merged = [Int](), leftIndex = 0, rightIndex = 0
        
        while leftIndex < left.count && rightIndex < right.count {  // Percorremos os dois arrays simultaneamente, desde que ainda haja elementos em ambos.
            if left[leftIndex] < right[rightIndex] {
                merged.append(left[leftIndex])
                leftIndex += 1
            } else {
                merged.append(right[rightIndex])
                rightIndex += 1
            }
        }
        return merged + left[leftIndex...] + right[rightIndex...]
    }
    
    
  
    
}



