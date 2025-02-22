//
//  CoinsViewModel.swift
//  NetworkingTutorial
//
//  Created by Apple on 21/02/25.
//

import Foundation

class CoinsViewModel: ObservableObject {
    @Published var coin = ""
    @Published var price = ""

    init() {
        fetchPricce(coin:"litecoin")
    }
    
    func fetchPricce(coin: String){
        let urlString = "https://api.coingecko.com/api/v3/simple/price?ids=\(coin)&vs_currencies=usd"
        guard let url = URL(string:urlString) else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data else {return}
            guard let jsonObject = try? JSONSerialization.jsonObject(with: data) as? [String: Any] else {return}

            guard let value = jsonObject[coin] as? [String:Double] else {return}
            guard let price = value["usd"] else { return }
            DispatchQueue.main.async {
                self.coin = coin.capitalized
                self.price = "$\(price)"
            }
        }.resume()
    }
    
}
