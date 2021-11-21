

import UIKit
class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var btnGetStarted: UIButton!
    @IBOutlet var btnSignIn: UIButton!
    
    var scrollWidth: CGFloat! = 0.0
    var scrollHeight: CGFloat! = 0.0
    
  
    // ссылка на класс с переходом к новому UIview без navController
    var segueFunc = PrepareNextScreenIdStorybard()

    //data for the slides
    var titles = ["Просто","Вкусно","Занимательно"]
    var descs = ["Простые рецепты, которые сможет повторить каждый.","Научим вас любить готовку.","Рассказывайте своим друзьям о нас."]
    var imgs = ["oneBoard1","oneBoard2","oneBoard3"]
    
    //get dynamic width and height of scrollview and save it
    override func viewDidLayoutSubviews() {
        scrollWidth = scrollView.frame.size.width
        scrollHeight = scrollView.frame.size.height
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layoutIfNeeded()
    
        //сделал индикатор прозрачным
        pageControl.isHidden = true
        
        
        //to call viewDidLayoutSubviews() and get dynamic width and height of scrollview
        
        self.scrollView.delegate = self
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        
        //crete the slides and add them
        var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        for index in 0..<titles.count {
            frame.origin.x = scrollWidth * CGFloat(index)
            frame.size = CGSize(width: scrollWidth, height: scrollHeight)
            
            let slide = UIView(frame: frame)
            
            
            // Настройка view на оунбординге
            //сделать завтра красивый экран приветсвия
            
            //subviews
            //фото
            let imageView = UIImageView.init(image: UIImage.init(named: imgs[index]))
            imageView.frame = CGRect(x:0,y:0,width:420,height:1000) // 300 x 300
            imageView.contentMode = .scaleAspectFit
            imageView.center = CGPoint(x:scrollWidth/2,y: scrollHeight/2 - 50)
            
            
            //первый текст
            let txt1 = UILabel.init(frame: CGRect(x:32,y:50,width:scrollWidth-64,height:30))
            //x: 32 ; y:imageView.frame.maxY+30
            txt1.textAlignment = .center
            txt1.font = UIFont.boldSystemFont(ofSize: 20.0)
            txt1.text = titles[index]
            txt1.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
            //второй текст
            
            let txt2 = UILabel.init(frame: CGRect(x:32,y:txt1.frame.maxY+10,width:scrollWidth-64,height:50))
            txt2.textAlignment = .center
            txt2.numberOfLines = 3
            txt2.font = UIFont.systemFont(ofSize: 18.0)
            txt2.text = descs[index]
            txt2.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
            slide.addSubview(imageView)
            slide.addSubview(txt1)
            slide.addSubview(txt2)
            scrollView.addSubview(slide)
            
        }
        
        //set width of scrollview to accomodate all the slides
        scrollView.contentSize = CGSize(width: scrollWidth * CGFloat(titles.count), height: scrollHeight)
        
        //disable vertical scroll/bounce
        self.scrollView.contentSize.height = 1.0
        
        //initial state
        pageControl.numberOfPages = titles.count
        pageControl.currentPage = 0
        
    }
    
    //indicator
    @IBAction func pageChanged(_ sender: Any) {
        scrollView!.scrollRectToVisible(CGRect(x: scrollWidth * CGFloat ((pageControl?.currentPage)!), y: 0, width: scrollWidth, height: scrollHeight), animated: true)
        segueFunc.showScreen(storyBoardId: "MainAppViewController")
        
    }
    //ishiden screen
   
    //скрол на оунборде
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        setIndiactorForCurrentPage()
        
            //сделал задержку и переход при свайпе на ласт картинку
        if pageControl.currentPage == 2{
            do{
                sleep(1)
                segueFunc.showScreen(storyBoardId: "MainAppViewController")
            }
            
        }
    }
    func setIndiactorForCurrentPage()  {
        let page = (scrollView?.contentOffset.x)!/scrollWidth
        pageControl?.currentPage = Int(page)
    }
    
   
    
    }

