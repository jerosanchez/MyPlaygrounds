import UIKit

public extension SnackBarView {
    
    func setupSubviews() {
        backgroundColor = .red
        frame = CGRect(x: 0, y: -snackBarHeight, width: parentView.bounds.width, height: snackBarHeight)
        
        setupMessageLabel()
        
        parentView.addSubview(self)
    }
    
    // MARK: - Helpers
    
    private func setupMessageLabel() {
        messageLabel.frame = CGRect(
            x: 0.0 + horizontalPadding,
            y: 0.0 + verticalPadding,
            width: frame.width - horizontalPadding * 2,
            height: snackBarHeight - verticalPadding * 2)
        messageLabel.textAlignment = .center
        addSubview(messageLabel)
    }
}
