//
//  Extenstion.swift
//  TapApp
//
//  Created by DCS on 01/07/21.
//  Copyright © 2021 HRK. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    public var width: CGFloat { return frame.size.width }
    public var height: CGFloat { return frame.size.height }
    public var top: CGFloat { return frame.origin.y }
    public var bottom: CGFloat { return frame.origin.y + frame.size.height }
    public var left: CGFloat { return frame.origin.x }
    public var right: CGFloat { return frame.origin.x + frame.size.width }
    public var fullscrh: CGFloat { return frame.size.height - self.safeAreaInsets.top - self.safeAreaInsets.bottom }
}
