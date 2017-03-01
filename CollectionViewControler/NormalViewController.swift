//
//  NormalViewController.swift
//  CollectionViewControler
//
//  Created by alumno on 28/02/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit
private let reuseIdentifier = "celda"
//se agregan las clases UICollectionViewDelegate, UICollectionViewDataSource para que se conporte como un colleccion view controler
class NormalViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var items = Array<item>()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for i in 0...7 {
            let datos = item()
            datos.nombre = "Item \(i)"
            datos.precio =  Double(i) * 100.0
            datos.imagen = UIImage(named: "image_\(i)")
            
            items.append(datos)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //colocamos el controler que creamos con los metodos de la celda con el as
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ItemCell
        
        // Configure the cell metodo donde vamos a conigurar la celda y asignar los datos para que se muestren
        
        let indice = indexPath.row
        let item = items[indice]
        
        cell.lblNombre.text = item.nombre
        cell.lblPrecio.text = "S/. \(item.precio!)"
        cell.imgItem.image = item.imagen
        
        return cell

    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        <#code#>
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
