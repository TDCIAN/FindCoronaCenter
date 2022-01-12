//
//  CenterAPIResponse.swift
//  FindCoronaCenter
//
//  Created by JeongminKim on 2022/01/12.
//

import Foundation

struct CenterAPIResponse: Decodable {
    let data: [Center]
}
