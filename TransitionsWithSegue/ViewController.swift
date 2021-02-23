//
//  ViewController.swift
//  TransitionsWithSegue
//
//  Created by Nikita Petrenkov on 23/02/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    /// Обрабатываем переход по segue'ям
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        // Получаем доступ к экземпляру конкретного типа  следующего контроллера
        guard let secondViewController = segue.destination as? SecondViewController else { return }
        
        // Но на нужный контроллер у нас 2 разных перехода!
        // Различим эти переходы по их идентификатору
        switch segue.identifier {
        case "username":
            // Если переход при забытом нике
            secondViewController.labelText = "Имя: Nikita"
        case "password":
            // Если переход при забытом пароле
            secondViewController.labelText = "Пароль: 1234qwerty"
        default:
            // Так как свич требует обработку всех возможных значений, то требуется заглушка
            break
        }
    }
    

}
