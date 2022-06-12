//
//  TableViewCellPersonalizada.swift
//  Ordinario0,1
//
//  Created by Ingenieria on 10/06/22.
//

import UIKit

class TableViewCellPersonalizada: UITableViewCell {
    @IBOutlet weak var imagen1: UIImageView!
    
    @IBOutlet weak var etiqueta1: UILabel!
    
    @IBOutlet weak var etiqueta2: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
