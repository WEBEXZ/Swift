//
//  tableViewCelda.swift
//  InterfazGrafica
//
//  Created by Macbook on 25/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class tableViewCelda: UITableViewCell {
    @IBOutlet weak var cldHerramientas: UILabel!
    @IBOutlet weak var cldEstatus: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
