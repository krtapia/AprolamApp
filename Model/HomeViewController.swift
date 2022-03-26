//
//  ViewController.swift
//  AprolamApp
//
//  Created by Carlos Tapia on 23/03/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!

    private var mySections: [CollectionViewCellModel] = [CollectionViewCellModel(image: UIImage(named: "mibebe") ?? UIImage(), title: "Mi Bebé"), CollectionViewCellModel(image: UIImage(named: "comolactar") ?? UIImage(), title: "Como Lactar"), CollectionViewCellModel(image: UIImage(named: "problemas") ?? UIImage(), title: "Problemas"),CollectionViewCellModel(image: UIImage(named: "sugerencias") ?? UIImage(), title: "Sugerencias")]
    
    private let myCellHeight = 160.0
    private let myCellWidth = UIScreen.main.bounds.width / 2.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle:  nil), forCellWithReuseIdentifier: "myCell")
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
}
//Mark:- UICollectionViewDataSource
extension HomeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mySections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as? MyCustomCollectionViewCell
        
        cell!.myFirstLabel.text = mySections[indexPath.row].title
        cell!.myImage.image = mySections[indexPath.row].image
        
        return cell!
    }
    
}
// MARK:- UICollectionViewDelegate
extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.section) -> \(indexPath.row) \(mySections[indexPath.row])")
    }
}
//MARK:- UICollectionViewDelegateFlowLayout
extension HomeViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: myCellWidth , height: myCellHeight)
    }
}
