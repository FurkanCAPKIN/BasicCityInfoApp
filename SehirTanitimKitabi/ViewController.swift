//
//  ViewController.swift
//  SehirTanitimKitabi

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var tableView: UITableView!
    
    var sehirDizisi = [Sehir]()
    //sehir dizisi tanımladım ve Sehir sınıfından nesneler tutacak denildi.
    var kullaniciSecimi : Sehir?
    /*Sehir sınıfı türünden bir değişken oluşturdum. Aynı zamanda nil değer alabilmesi
      için optional tanımladım*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let istanbul = Sehir(isim: "İstanbul", bolge: "Marmara", gorsel: UIImage(named: "Istanbul")!)
        let bursa = Sehir(isim: "Bursa", bolge: "Marmara", gorsel: UIImage(named: "Bursa")!)
        let giresun = Sehir(isim: "Giresun", bolge: "Karadeniz", gorsel: UIImage(named: "Giresun")!)
        let samsun = Sehir(isim: "Samsun", bolge: "Karadeniz", gorsel: UIImage(named: "Samsun")!)
        //Sehir sınıfında 4 farklı nesne oluşturdum.
        
        sehirDizisi = [istanbul,bursa,giresun,samsun]
        //Oluşturduğum nesneleri sehirDizisine atadım.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
        /*Bu fonksiyon şehir dizisinin eleman sayısını döner.*/
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //Bu metot tablo hücrelerini oluşturur ve belirtilen konumda tutar. Geriye UITableViewCell nesnesi döner.
        let cell = UITableViewCell()
        //UITableViewCell nesnesini yarattım.
        cell.textLabel?.text = sehirDizisi[indexPath.row].isim
        //tablonun hücrelerine sehirDizisindeki verileri ekler.
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //Bu fonksiyon kullanıcı bir tablo hücresini seçtiğinde çalışır.
        kullaniciSecimi = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        //Önceden tanımladığım segue'yi tetikler.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //Bu fonksiyon segue başlatıldığında geçiş işlemini hazırlar.
        if segue.identifier == "toDetailsVC" {
            //Bu if bloğu ile hedeflenen geçişin doğruluğunu kontrol ediyorum.
            let destinationVC = segue.destination as! DetailsViewController
            /*burada casting yaptım ve as! ile yaptığım için eğer bir hata
              ortaya çıkarsa runTime error verebilir bu sebepten dikkat etmek gerekir.*/
            destinationVC.secilenSehir = kullaniciSecimi
            //kullanıcın tıkladığı şehiri destinationVC.secilenSehir'e atar.
        }
    }
}

