# CustomRefreshControl

###iOS 自定义刷新动画demo
1.清理默认的UIRefreshControl<br />

    let rc = UIRefreshControl()
    rc.tintColor = UIColor.clearColor()
    
2.自定义UIView或者CALayer，并加入到UIRefresh中<br />

    rc.addSubView(UIView(size))
    
3.对子view进行动画描写<br />


###动态gif图片的引入，首先需要引入ImageGif.swift(第三方库，摘自哪忘了。原生并不支持gif格式)<br />

        // jeremy.gif
        var url = NSBundle.mainBundle().URLForResource("jeremy", withExtension: "gif")
        var imageData = NSData(contentsOfURL: url)

        // Returns an animated UIImage
        UIImage.animatedImageWithData(imageData)


###效果

![github](https://github.com/Chovans/CustomRefreshControl/blob/master/show.gif)
