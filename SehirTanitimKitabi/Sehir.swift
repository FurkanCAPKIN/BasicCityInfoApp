//
//  Sehir.swift
//  SehirTanitimKitabi
//
//  Created by Furkan Çapkın on 6.07.2023.
//

import Foundation
import UIKit

class Sehir {
    
    var isim : String
    var bolge : String
    var gorsel : UIImage//import UIKit dememiz lazım.
    
    init(isim: String, bolge: String, gorsel: UIImage) {
    /*Sehir sınıfından her nesne oluşturulduğunda burası otomatik
      olarak çalışacak*/
        self.isim = isim
        self.bolge = bolge
        self.gorsel = gorsel
        /*Kullanıcıdan alınan değerler sınıf nesnesinin
          değişkenlerine atanır*/
    }
}
