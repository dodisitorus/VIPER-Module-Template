//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

class ___VARIABLE_ModuleName___Presenter: ViewToPresenter___VARIABLE_ModuleName___Protocol {

    // MARK: Properties
    var view: PresenterToView___VARIABLE_ModuleName___Protocol?
    var interactor: PresenterToInteractor___VARIABLE_ModuleName___Protocol?
    var router: PresenterToRouter___VARIABLE_ModuleName___Protocol?
}

extension ___VARIABLE_ModuleName___Presenter: InteractorToPresenter___VARIABLE_ModuleName___Protocol {
    
    func getSelf() -> UIViewController {
        return view?.getSelf() ?? ___VARIABLE_ModuleName___ViewController()
    }
}
