//
//  SwiftUIViewController.swift
//  FoodCam
//
//  Created by Alexis Wei on 5/31/20.
//  Copyright © 2020 Alexis Wei. All rights reserved.
//

import SwiftUI
import UIKit

struct SwiftUIViewController: UIViewControllerRepresentable {

    var controllers: [UIViewController]

    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)

        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers(
            [controllers[0]], direction: .forward, animated: true)
    }
    
    func present(_ viewControllerToPresent: UIViewController,
      animated flag: Bool,
      completion: (() -> Void)? = nil){}
    
}

