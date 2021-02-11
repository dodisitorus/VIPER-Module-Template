//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___VARIABLE_ModuleName___ViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Properties
    var presenter: ViewToPresenter___VARIABLE_ModuleName___Protocol?
    
}

extension ___VARIABLE_ModuleName___ViewController: PresenterToView___VARIABLE_ModuleName___Protocol{
    
    func getSelf() -> UIViewController {
        return self
    }
    
    func getNav() -> UINavigationController {
        return self.navigationController ?? ___VARIABLE_ModuleName___NavigationController()
    }
    
    func showAlert(message: String) {
        AlertIOS(vc: self, title: "Gagal", message: message)
    }
    
    func showLoading() {
        let alert = UIAlertController(title: "Loading...", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Tutup", style: .destructive, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    func hideLoading(completionHandler: @escaping (Bool) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.dismiss(animated: true, completion: nil)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completionHandler(true)
        }
    }
}

class ___VARIABLE_ModuleName___NavigationController: UINavigationController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
