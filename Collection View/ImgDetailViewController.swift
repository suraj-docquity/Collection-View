//
//  ImgDetailViewController.swift
//  Collection View
//
//  Created by Suraj Jaiswal on 13/02/23.
//

import UIKit

class ImgDetailViewController: UIViewController {
    
    
    @IBOutlet weak var imgDetailView: UIImageView!
    
    @IBOutlet weak var labelDetailView: UILabel!
    
    var imgDetail : UIImage!
    var labelDetail : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgDetailView.image = imgDetail
        labelDetailView.text = labelDetail
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
