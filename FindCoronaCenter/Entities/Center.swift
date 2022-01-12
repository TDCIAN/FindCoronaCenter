//
//  Center.swift
//  FindCoronaCenter
//
//  Created by JeongminKim on 2022/01/12.
//

import Foundation
import CoreLocation

struct Center: Hashable, Decodable {
    let id: Int
    let sido: Sido
    let facilityName: String
    let address: String
    let lat: String
    let lng: String
    let centerType: CenterType
    let phoneNumber: String
    
    enum CenterType: String, Decodable {
        case central = "중앙/권역"
        case local = "지역"
    }
    
    enum Sido: String, Decodable, CaseIterable, Identifiable {
        case 서울특별시
        case 부산광역시
        case 대구광역시
        case 인천광역시
        case 광주광역시
        case 대전광역시
        case 울산광역시
        case 세종특별자치시
        case 경기도
        case 강원도
        case 충청북도
        case 충청남도
        case 전라북도
        case 전라남도
        case 경상북도
        case 경상남도
        case 제주특별자치도
        
        var id: String {
            return self.rawValue
        }
    }
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(
            latitude: CLLocationDegrees(self.lat) ?? .zero,
            longitude: CLLocationDegrees(self.lng) ?? .zero
        )
    }
}

/*
 {
   "address": "서울특별시 중구 을지로 39길 29",
   "centerName": "코로나19 중앙 예방접종센터",
   "centerType": "중앙/권역",
   "createdAt": "2021-03-03 07:00:52",
   "facilityName": "국립중앙의료원 D동",
   "id": 1,
   "lat": "37.567817",
   "lng": "127.004501",
   "org": "국립중앙의료원",
   "phoneNumber": "02-2260-7114",
   "sido": "서울특별시",
   "sigungu": "중구",
   "updatedAt": "2021-07-16 04:55:08",
   "zipCode": "04562"
 },
 */
