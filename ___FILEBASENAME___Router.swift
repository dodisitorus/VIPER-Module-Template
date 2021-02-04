//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

class ___VARIABLE_ModuleName___Router: PresenterToRouter___VARIABLE_ModuleName___Protocol {
    
    // MARK: Static methods
    static func createModule() -> ___VARIABLE_ModuleName___ViewController {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "___VARIABLE_ModuleName___", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "___VARIABLE_ModuleName___ViewController") as! ___VARIABLE_ModuleName___ViewController
        
        let presenter: ViewToPresenter___VARIABLE_ModuleName___Protocol & InteractorToPresenter___VARIABLE_ModuleName___Protocol = ___VARIABLE_ModuleName___Presenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = ___VARIABLE_ModuleName___Router()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = ___VARIABLE_ModuleName___Interactor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
