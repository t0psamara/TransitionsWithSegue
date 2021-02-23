//
//  SecondViewController.swift
//  TransitionsWithSegue
//
//  Created by Nikita Petrenkov on 23/02/2021.
//

import UIKit

class SecondViewController: UIViewController {

    /// UI компонент
    @IBOutlet weak var label: UILabel!
    
    /// Контейнер данных для нашего UI компонента
    var labelText: String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // При загрузке экрана в этом методе мы передаем данные из контейнера в UI компонент
        label.text = labelText
    }
}
