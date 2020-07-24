//
//  detailviewcontroller.swift
//  real
//
//  Created by GW_14 on 22/07/2020.
//  Copyright © 2020 GW_14. All rights reserved.
//

import UIKit
import Foundation

class detailviewcontroller: UIViewController
{
    @IBOutlet weak var buttonLogin: UIButton!

    
    @IBOutlet weak var viewSideMenu: UIView!
    
    @IBOutlet var leftLabel: UILabel?
    @IBOutlet var rightLabel: UILabel?
    @IBOutlet var viewImage1: UIImageView?
    @IBOutlet var viewImage2: UIImageView?
    @IBOutlet var viewImage3: UIImageView?
    @IBOutlet var viewImage4: UIImageView?
    @IBOutlet var viewImage5: UIImageView?
    @IBOutlet var viewImage6: UIImageView?
    @IBOutlet var viewImage7: UIImageView?
    
    let modellocationinfo = locationinfomodel(cityName: "인기 급상승 TOP 3",
                                              nationName: "웹툰 다 모아",
                                              image1: "guam",
                                              image2 : "웹툰2",
                                              image3 : "웹툰3",
                                              image4 : "웹툰4",
                                              image5 : "웹툰5",
                                              image6 : "웹툰6",
                                              image7 : "웹툰7",
                                              isTravel: true,
                                              priceLevel : 2)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftLabel?.text = modellocationinfo.cityName
        rightLabel?.text = modellocationinfo.nationName
        viewImage1?.image = UIImage(named: modellocationinfo.image1)
        viewImage2?.image = UIImage(named: modellocationinfo.image2)
        viewImage3?.image = UIImage(named: modellocationinfo.image3)
        viewImage4?.image = UIImage(named: modellocationinfo.image4)
        viewImage5?.image = UIImage(named: modellocationinfo.image5)
        viewImage6?.image = UIImage(named: modellocationinfo.image6)
        viewImage7?.image = UIImage(named: modellocationinfo.image7)
        
        if modellocationinfo.isTravel == true
        {
            self.view.backgroundColor = UIColor.white
        }
        else{
            self.view.backgroundColor = UIColor.green
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        var title = "로그인"
        
        if gModelUser != nil
        {
            title = "로그아웃"
        }
        
        buttonLogin.titleLabel?.text = title
    }
    
    @IBAction func touchMenu(_ sender: Any) {
        viewSideMenu.isHidden = !viewSideMenu.isHidden
    }
    
    @IBOutlet weak var likeButton : UIButton!
    
    @IBAction func handleLike(_sender: Any)
    {
        if likeButton.isSelected == true
        {
            likeButton.isSelected = false
        }
        
        else
        
        {
            likeButton.isSelected = true
        }
    }
    
    
}
