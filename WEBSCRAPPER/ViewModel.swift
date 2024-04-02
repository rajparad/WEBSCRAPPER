//
//  ViewModel.swift
//  WEBSCRAPPER
//
//  Created by RAJPARA DHRUV on 2024-04-01.
//

import Foundation
import Alamofire
import Kanna

@MainActor 
class ViewModel: ObservableObject {
    @Published var data: [String] = []
    
    // Grabs the HTML from nycmetalscene.com for parsing.
    func scrapeNYCMetalScene() -> Void {
   
        AF.request("http://nycmetalscene.com").responseString { response in
            print("\(response.result)")
            switch response.result {
            case .success(let val):
                print("Sucess")
            case .failure(let error):
                print("Error")
            }
        }
    }
    func parseHTML(html: String) -> Void {
        // Finish this next
    }
}
