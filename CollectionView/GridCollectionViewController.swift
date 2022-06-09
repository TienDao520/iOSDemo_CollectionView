//
//  GridCollectionViewController.swift
//  CollectionView
//
//  Created by Tien Dao on 2022-05-16.
//

import UIKit

private let reuseIdentifier = "Cell"

class GridCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK: UICollectionViewDataSource
extension GridCollectionViewController {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 100
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ItemCollectionViewCell
    
//        cell.ItemLabel.text = String(indexPath.row + 1)
        cell.ItemLabel.text = "\(indexPath.row + 1)"
        
        // Configure the cell
        cell.backgroundColor = self.randomColor()
        return cell
    }
    
    //custom funciton to generate a random UIColor
    func randomColor() -> UIColor {
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

// MARK: UICollectionViewDelegate
extension GridCollectionViewController {
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //get selected label text
        let cell = collectionView.cellForItem(at: indexPath) as! ItemCollectionViewCell
        guard let  selectedNumberItem = Int(cell.ItemLabel.text!) else {
            return
        }
        
        print(selectedNumberItem)
    }
}
