//
//  TabItem.swift
//  CustomTabNavigation
//
//  Created by Lyolia on 07/09/2019.
//  Copyright © 2019 Lyolia. All rights reserved.

import UIKit

enum TabItem: String, CaseIterable {
    case home = "home"
    case calender = "calender"
    case friends = "friends"
    case profile = "profile"
    
    
    var viewController: UIViewController {
        switch self {
        case .home:
            return HomeViewController()
        case .calender:
            return CalenderViewController()
        case .friends:
            return FriendsViewController()
        case .profile:
            return ProfileViewController()
        }
    }
    
    var icon: UIImage? {
        switch self {
        case .home:
            return UIImage(named: "icon_home")!
        case .calender:
            return UIImage(named: "icon_calender")!
        case .friends:
            return UIImage(named: "icon_friends")!
        case .profile:
            return UIImage(named: "icon_profile")!
        }
    }
    
    var displayTitle: String {
        return self.rawValue.capitalized(with: nil)
    }
}
