import Foundation

import UIKit

public class InAppBrowserConfig {
    public var toolbarMode: String = "dark"
    public var toolbarTitle: String = "Default Title"
    public var titleAlignment: String = "left"
    public var url: String?
    public var isFullscreen: Bool = true
    public var isDebugEnabled: Bool = false
    public var userAgent: String = "Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1"
    
    // UI 커스터마이징 옵션
    public var fontFamily: String?
    public var fontSize: Int = 18
    
    #if canImport(UIKit)
    public var toolbarBackgroundColor: UIColor?
    public var titleTextColor: UIColor?
    public var loadingBackgroundColor: UIColor?
    public var progressBarColor: UIColor?
    #else
    // iOS가 아닌 환경을 위한 더미 프로퍼티
    public var toolbarBackgroundColor: Any?
    public var titleTextColor: Any?
    public var loadingBackgroundColor: Any?
    public var progressBarColor: Any?
    #endif
    
    public var backButtonImageName: String?
    public var closeButtonImageName: String?
    
    // 로딩 커스터마이징 옵션
    public var progressBarStyle: Int = 0 // 0: 기본 원형, 1: 수평, 2: 사용자 정의 이미지
    public var progressBarImageName: String?
    public var backButtonLeftMargin: Int = 0
    public var closeButtonRightMargin: Int = 0
    public var backButtonIconSize: Int = 33
    public var closeButtonIconSize: Int = 33
    public var toolbarHeight: Int = 56
    public var progressBarAnimationDuration: Double = 3.0  // 기본값 3초
    
    private init() {}
    
    public class Builder {
        private let config: InAppBrowserConfig
        
        public init() {
            config = InAppBrowserConfig()
        }
        
        public func setToolbarMode(_ mode: String) -> Builder {
            config.toolbarMode = mode
            return self
        }
        
        public func setToolbarTitle(_ title: String) -> Builder {
            config.toolbarTitle = title
            return self
        }
        
        public func setTitleAlignment(_ alignment: String) -> Builder {
            config.titleAlignment = alignment
            return self
        }
        
        public func setUrl(_ url: String) -> Builder {
            config.url = url
            return self
        }
        
        public func setFullscreen(_ fullscreen: Bool) -> Builder {
            config.isFullscreen = fullscreen
            return self
        }
        
        public func setDebugEnabled(_ enabled: Bool) -> Builder {
            config.isDebugEnabled = enabled
            return self
        }
        
        public func setUserAgent(_ userAgent: String) -> Builder {
            config.userAgent = userAgent
            return self
        }
        
        // UI 커스터마이징 옵션 추가
        public func setFontFamily(_ fontFamily: String) -> Builder {
            config.fontFamily = fontFamily
            return self
        }
        
        public func setFontSize(_ fontSize: Int) -> Builder {
            config.fontSize = fontSize
            return self
        }
        
        #if canImport(UIKit)
        public func setToolbarBackgroundColor(_ color: UIColor) -> Builder {
            config.toolbarBackgroundColor = color
            return self
        }
        
        public func setTitleTextColor(_ color: UIColor) -> Builder {
            config.titleTextColor = color
            return self
        }
        
        public func setLoadingBackgroundColor(_ color: UIColor) -> Builder {
            config.loadingBackgroundColor = color
            return self
        }
        
        public func setProgressBarColor(_ color: UIColor) -> Builder {
            config.progressBarColor = color
            return self
        }
        #endif
        
        public func setBackButtonIcon(_ imageName: String) -> Builder {
            config.backButtonImageName = imageName
            return self
        }
        
        public func setCloseButtonIcon(_ imageName: String) -> Builder {
            config.closeButtonImageName = imageName
            return self
        }
        
        public func setProgressBarStyle(_ style: Int) -> Builder {
            config.progressBarStyle = style
            return self
        }
        
        public func setProgressBarImage(_ imageName: String, animationDuration: Double = 3.0) -> Builder {
            config.progressBarImageName = imageName
            config.progressBarAnimationDuration = animationDuration
            config.progressBarStyle = 2
            return self
        }
        
        public func setBackButtonLeftMargin(_ margin: Int) -> Builder {
            config.backButtonLeftMargin = margin
            return self
        }
        
        public func setCloseButtonRightMargin(_ margin: Int) -> Builder {
            config.closeButtonRightMargin = -margin
            return self
        }
        
        public func setToolbarHeight(_ height: Int) -> Builder {
            config.toolbarHeight = height
            return self
        }
        
        public func setBackButtonIconSize(_ size: Int) -> Builder {
            config.backButtonIconSize = size
            return self
        }
        
        public func setCloseButtonIconSize(_ size: Int) -> Builder {
            config.closeButtonIconSize = size
            return self
        }
        
        public func build() -> InAppBrowserConfig {
            return config
        }
    }
}
