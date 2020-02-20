import UIKit

public class HomeViewController: UIViewController {
    
    // MARK: - Properties
    
    private var snackBarView: SnackBarView!
    
    // MARK: - Lifecycle
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupSubviews()
    }
    
    // MARK: - Setup
    
    private func setupSubviews() {
        let longMessage = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        
        snackBarView = SnackBarView(on: self.view)
        delay(seconds: 1) {
            self.snackBarView.show(message: longMessage)
        }
    }
}
