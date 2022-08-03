//
//  BrainCalculator.swift
//  CalCulated
//
//  Created by A_Z on 11/10/19.
//  Copyright © 2019 A_Z. All rights reserved.
//

import Foundation

class BrainCalculator {
    // 10 + 10 x 10 - 10 =
    func add(Number : Double , Opeartor : Character) {
        NumWithOpArray.append(CalElement(num : Number , Op : Opeartor))
    }
    func Restart() {
        NumWithOpArray = []
    }
    func Result() -> String{
        CalculatorMuiltyanddividby()
        CalculatorMiuns()
        return String(NumWithOpArray.reduce(0, {$0 + $1.num}))
    }
    typealias CalElement = (num : Double , Op : Character )
     var NumWithOpArray : [CalElement] = []
    
    func CalculatorMuiltyanddividby(){
        
        for (index , Current) in NumWithOpArray.enumerated() {
            if Current.Op == "X" || Current.Op == "/" {
                let afferCurrent = NumWithOpArray[index + 1]
                var NewCal : CalElement!
                if Current.Op == "X" {
                    NewCal = CalElement(num : Current.num * afferCurrent.num , Op : afferCurrent.Op)
                    
                }else if Current.Op == "/" {
                    NewCal = CalElement(num : Current.num / afferCurrent.num , Op : afferCurrent.Op)
                }
                NumWithOpArray.remove(at: index)
                NumWithOpArray.remove(at: index)
                NumWithOpArray.insert(NewCal, at: index)
                CalculatorMuiltyanddividby()
                break
            
            }
        }
    }
    
    func CalculatorMiuns(){
        for (index , Current) in NumWithOpArray.enumerated() {
            if Current.Op == "-" {
                let afferCurrent = NumWithOpArray[index + 1]
                let NewCal : CalElement = CalElement(num : Current.num * afferCurrent.num , Op : "+")
                NumWithOpArray.remove(at: index)
                NumWithOpArray.remove(at: index)
                NumWithOpArray.insert(NewCal, at: index)
                CalculatorMiuns()
                break
                
            }
        }
    }
}
