import UIKit

public class SnackBarView: UIView {
    
    // MARK: - Traits
    
    let verticalPadding: CGFloat = 16.0
    let horizontalPadding: CGFloat = 32.0
    
    let inAnimationDuration = 0.25
    let showDuration = 2.0
    let outAnimationDuration = 3.0
    
    // MARK: - Properties
    
    let parentView: UIView
    let snackBarHeight: CGFloat
    
    // MARK: - Subviews
    
    let messageLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 16)
        label.numberOfLines = 0
        return label
    }()
    
    // MARK: - Init
    
    public init(on parentView: UIView, snackBarHeight: CGFloat = 100) {
        self.parentView = parentView
        self.snackBarHeight = snackBarHeight
        
        super.init(frame: .zero)
        
        setupSubviews()
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - API
    
    public func show(message: String) {
        messageLabel.text = message
        
        UIView.animate(
            withDuration: inAnimationDuration,
            animations: {
                self.center.y += self.snackBarHeight
            },
            completion: { _ in
                delay(seconds: self.showDuration) {
                    self.hide()
                }
            })
    }
    
    // MARK: - Helpers
    
    private func hide() {
        UIView.animate(
            withDuration: outAnimationDuration,
            delay: 0.0,
            usingSpringWithDamping: 0.7,
            initialSpringVelocity: 0.0,
            options: [.curveEaseOut],
            animations: {
                self.center.y -= self.snackBarHeight
            },
            completion: { _ in
                
            })
    }
}
