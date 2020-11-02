//
//  File.swift
//  
//
//  Created by KMMX on 02/11/20.
//
public extension FloatingPoint{
    var isInteger: Bool {
        rounded() == self
    }
}
