# CustomRefreshControl

###iOS 自定义刷新动画demo
1.清理默认的UIRefreshControl<br />

    let rc = UIRefreshControl()
    rc.tintColor = UIColor.clearColor()
    
2.自定义UIView或者CALayer，并加入到UIRefresh中<br />

    rc.addSubView(UIView(size))
    
3.对子view进行动画描写<br />
