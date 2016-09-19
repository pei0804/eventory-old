//
//  BaseViewController.swift
//  Eventory
//
//  Created by jumpei on 2016/09/18.
//  Copyright © 2016年 jumpei. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    weak var refreshControl: UIRefreshControl?
    @IBOutlet weak var scrollView: UIScrollView?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
    
    var refreshControlY: CGFloat = 20.0
    
    func addRefreshControl() {
        
        if let scrollView = self.scrollView {
            let refreshControl = UIRefreshControl()
            refreshControl.addTarget(self, action: #selector(BaseViewController.pullRefresh(_:)), forControlEvents: .ValueChanged)
            if let tableView = scrollView as? UITableView {
                tableView.backgroundView = refreshControl
            }
            refreshControl.bounds.origin.y = -self.refreshControlY
            scrollView.alwaysBounceVertical = true
            self.refreshControl = refreshControl
        }
    }
    
    
    func handleRefresh() {
    }
    
    @IBAction func pullRefresh(refreshControl: UIRefreshControl) {
        self.handleRefresh()
        self.refresh() {
            refreshControl.endRefreshing()
        }
    }
    
    func refresh(completed: (() -> Void)? = nil) {
        dispatch_async(dispatch_get_main_queue()) {
            completed?()
        }
    }
    
}


