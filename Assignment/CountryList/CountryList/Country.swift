//
//  Country.swift
//  CountryList
//
//  Created by κΉνμ on 2021/09/28.
//

import Foundation

struct Country {
    var flag = ""
    var name = ""
    var year = 0
    var population = 0.0
    var region = ""
}

func getCountries() -> [Country] {
    let korea = Country(flag: "π°π·",
                        name: "Korea",
                        year: 0000,
                        population: 5.0,
                        region: "Asia")
    
    let canada = Country(flag: "π¨π¦",
                        name: "Canada",
                        year: 1111,
                        population: 10.0,
                        region: "America")
    
    let france = Country(flag: "π«π·",
                         name: "France",
                         year: 2222,
                         population: 7.0,
                         region: "Europe")
    
    let turkey = Country(flag: "πΉπ·",
                         name: "Turkey",
                         year: 3333,
                         population: 80.2,
                         region: "Europe-Asia")
    
    let england = Country(flag: "π¬π§",
                          name: "England",
                          year: 4444,
                          population: 20.7,
                          region: "Europe")
    
    return [korea, canada, france, turkey, england]
}

