//
//  DetailsViewController.swift
//  SehirTanitimKitabi
//
//  Created by Furkan Çapkın on 6.07.2023.
//

import UIKit

class DetailsViewController: UIViewController{

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var sehirIsmiLabel: UILabel!
    @IBOutlet weak var sehirBolgesiLabel: UILabel!
    //Maindeki değişkenleri tanımladım.
    
    var secilenSehir : Sehir?
    /*secilenSehir isimli değişken hem Sehir sınıfının
     bir örneğini tutabilir hemde hiçbir şey tutmayabilir.
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sehirIsmiLabel.text = secilenSehir?.isim
        sehirBolgesiLabel.text = secilenSehir?.bolge
        imageView.image = secilenSehir?.gorsel
 
    }
    
}
