//
//  ViewController.swift
//  Collection View
//
//  Created by Suraj Jaiswal on 13/02/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var imgArr = [  UIImage(imageLiteralResourceName: "watch3"),
                    UIImage(imageLiteralResourceName: "watch4"),
                    UIImage(imageLiteralResourceName: "watch5"),
                    UIImage(imageLiteralResourceName: "watch6"),
                    UIImage(imageLiteralResourceName: "watch7"),
                    UIImage(imageLiteralResourceName: "watch8"),
                    UIImage(imageLiteralResourceName: "watch9"),
                    UIImage(imageLiteralResourceName: "watch10"),
                    UIImage(imageLiteralResourceName: "watch3"),
                    UIImage(imageLiteralResourceName: "watch4"),
                    UIImage(imageLiteralResourceName: "watch5"),
                    UIImage(imageLiteralResourceName: "watch6"),
                    UIImage(imageLiteralResourceName: "watch7"),
                    UIImage(imageLiteralResourceName: "watch8"),
                    UIImage(imageLiteralResourceName: "watch9"),
                    UIImage(imageLiteralResourceName: "watch10"),
                    UIImage(imageLiteralResourceName: "watch5"),
                    UIImage(imageLiteralResourceName: "watch6"),
                    UIImage(imageLiteralResourceName: "watch3"),
                    UIImage(imageLiteralResourceName: "watch4") ]
    var labelArr = ["Watch1","Watch2","Watch3","Watch4","Watch5","Watch6","Watch6","Watch8","Watch9","Watch10","Watch11","Watch12","Watch13","Watch14","Watch15","Watch16","Watch17","Watch18","Watch19","Watch20",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.collectionViewLayout  = UICollectionViewFlowLayout()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return labelArr.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imgCell.image = imgArr[indexPath.row]
        cell.cellLabel.text = labelArr[indexPath.row]
        
        cell.layer.cornerRadius = 10
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let imgDetailVC: ImgDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "ImgDetailViewController") as! ImgDetailViewController
        
        imgDetailVC.imgDetail = imgArr[indexPath.row]
        imgDetailVC.labelDetail = labelArr[indexPath.row]
        
        self.navigationController?.pushViewController(imgDetailVC, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

//        let collectionWidth=collectionView.bounds.width;
//        return CGSize(width: collectionWidth/4, height: collectionWidth/2)

        return CGSize(width: 180, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        //top, left, bottom, right
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }

}

