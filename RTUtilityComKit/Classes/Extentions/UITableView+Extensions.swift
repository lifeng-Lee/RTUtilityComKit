//
//  UITableView+Utility.swift
//  fengDevelopSummary
//
//  Created by lfmac on 2025/1/4.
//

import UIKit
import MJRefresh

public extension UITableView {

    /// 添加下拉刷新
    func addPullToRefresh(refreshingBlock: @escaping () -> Void) {
        self.mj_header = MJRefreshNormalHeader(refreshingBlock: refreshingBlock)
    }

    /// 添加上拉加载更多
    func addLoadMore(refreshingBlock: @escaping () -> Void) {
        self.mj_footer = MJRefreshBackNormalFooter(refreshingBlock: refreshingBlock)
    }

    /// 停止刷新动画（包括 mj_header 和 mj_footer）
    func stopRefreshing() {
        self.mj_header?.endRefreshing()
        self.mj_footer?.endRefreshing()
        

    }
}
