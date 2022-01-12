//
//  CenterList.swift
//  FindCoronaCenter
//
//  Created by JeongminKim on 2022/01/12.
//

import SwiftUI

struct CenterList: View {
    var centers = [Center]()
    
    var body: some View {
        List(centers, id: \.id) { center in
            NavigationLink(
                destination: CenterDetailView(center: center),
               label: {
                   CenterRow(center: center)
               }
            )
        }
    }
}
