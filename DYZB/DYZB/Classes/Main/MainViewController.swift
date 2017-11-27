//
//  MainViewController.swift
//  DYZB
//
//  Created by KingOfPop on 2017/11/27.
//  Copyright © 2017年 zlt. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //这是随便添加的
//        let vc = UIViewController()
//        vc.view.backgroundColor = UIColor.red
//        addChildViewController(vc)
        
        addChildVc(storyName: "Home")
        addChildVc(storyName: "Live")
        addChildVc(storyName: "Follow")
        addChildVc(storyName: "Profile")
        
    }
    
    
    private func addChildVc(storyName : String) {
        
        //1.通过SB创建我们的控制器
        let childVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()! //加载的是Home.SB的控制器，nil就是mainbundle,SB都是放到mainbundle里面的,instantiateInitialViewController就是箭头所指控制器
        
        //2.将childVc作为自控制器
        addChildViewController(childVc) //childVc不能直接加,因为instantiateInitialViewController返回值是个可选类型，直接解包
        
    }
    


}
