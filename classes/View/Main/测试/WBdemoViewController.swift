//
//  WBdemoViewController.swift
//  传智微博
//
//  Created by ZY H on 2020/3/28.
//  Copyright © 2020 ZY H. All rights reserved.
//

import UIKit

class WBdemoViewController: wbbaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "第\(navigationController?.children.count ?? 0)个"
    }
//监听方法
    @objc private func shownext(){
        let vc = WBdemoViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
}
extension WBdemoViewController{
    //重写
    override func setupui() {
//        设置右侧控制器
        super .setupui()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title:"下一个", style: .plain, target: self, action: #selector(shownext))
    }
}
