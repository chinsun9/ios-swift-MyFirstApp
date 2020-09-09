//
//  ViewController.swift
//  MyFirstApp
//
//  Created by sung hello on 2020/09/08.
//  Copyright © 2020 sung hello. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var viewGraph: UIView!
    @IBOutlet var viewTable: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(self.view.frame)
        // 파이프 그래프 보여주는 코드
        let view = ZeddView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: viewGraph.frame.height))
        view.center = viewGraph.center
        
        view.backgroundColor = .clear
        viewGraph.addSubview(view)
        
        
        let arrView = viewTable.subviews
        
        //하단 메뉴들 보더 표시
        arrView.forEach {
            (view) in
            view.layer.addBorder([.bottom], color: UIColor.gray, width: 1.0)
            
            
        }
        
        
        
    }
    
    // 탭바 상단으로 올리는
    override func viewDidLayoutSubviews() {
        let tmpFrame = self.tabBarController?.tabBar.frame
        self.tabBarController?.tabBar.frame = CGRect(x: 0, y: 0, width: Int(tmpFrame!.width), height: Int(tmpFrame!.height))
    }
}

class ZeddView: UIView {
    
    
    override func draw(_ rect: CGRect) {
        
        let center = CGPoint(x: rect.maxX - rect.maxY * 0.4 - 16, y: rect.midY)
        print(center)
        
        let colors = [UIColor.orange, UIColor.black, UIColor.systemGreen, UIColor.systemPink, UIColor.cyan, UIColor.systemTeal]

        let values: [CGFloat] = [10, 20, 70]
        let total = values.reduce(0, +)
        
        //x degree = x * π / 180 radian
        var startAngle: CGFloat = (-(.pi) / 2)
        var endAngle: CGFloat = 0.0
        
        values.forEach { (value) in
            endAngle = (value / total) * (.pi * 2)
            
            let path = UIBezierPath()
            path.move(to: center)
            path.addArc(withCenter: center,
                        radius: rect.maxY * 0.4,
                        startAngle: startAngle,
                        endAngle: startAngle + endAngle,
                        clockwise: true)
            
            colors.randomElement()?.set()
            path.fill()
            startAngle += endAngle
            path.close()
            
            // slice space
            UIColor.white.set()
            path.lineWidth = rect.maxY * 0.01
            path.stroke()
        }
        
        let semiCircle = UIBezierPath(arcCenter: center,
                                      radius: rect.maxY * 0.3,
                                      startAngle: 0,
                                      endAngle: (360 * .pi) / 180,
                                      clockwise: true)
        UIColor.white.set()
        semiCircle.fill()
    }
}

extension CALayer {
    func addBorder(_ arr_edge: [UIRectEdge], color: UIColor, width: CGFloat) {
        for edge in arr_edge {
            let border = CALayer()
            switch edge {
            case UIRectEdge.top:
                border.frame = CGRect.init(x: 0, y: 0, width: frame.width, height: width)
                break
            case UIRectEdge.bottom:
                border.frame = CGRect.init(x: 0, y: frame.height - width, width: frame.width, height: width)
                break
            case UIRectEdge.left:
                border.frame = CGRect.init(x: 0, y: 0, width: width, height: frame.height)
                break
            case UIRectEdge.right:
                border.frame = CGRect.init(x: frame.width - width, y: 0, width: width, height: frame.height)
                break
            default:
                break
            }
            border.backgroundColor = color.cgColor;
            self.addSublayer(border)
        }
    }
}

