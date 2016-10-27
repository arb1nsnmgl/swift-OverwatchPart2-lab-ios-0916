//
//  SelectionViewController.swift
//  Overwatch
//
//  Created by Arvin San Miguel on 10/21/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var heroNameLabel: UILabel!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var heroScrollView: UIScrollView!
    
    var game = Game()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createOffenseCharacters()
        heroNameLabel.text = heroScrollView.subviews[0].accessibilityLabel
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
      
    }
    
    
    @IBAction func heroType(_ sender: UISegmentedControl) {
        
        for view in heroScrollView.subviews { view.removeFromSuperview() }
        
        switch sender.selectedSegmentIndex {
        case 0: createOffenseCharacters(); heroNameLabel.text = heroScrollView.subviews[0].accessibilityLabel
        case 1: createDefenseCharacters(); heroNameLabel.text = heroScrollView.subviews[0].accessibilityLabel
        case 2: createTankCharacters(); heroNameLabel.text = heroScrollView.subviews[0].accessibilityLabel
        case 3: createSupportCharacters(); heroNameLabel.text = heroScrollView.subviews[0].accessibilityLabel
        default: break
        }
        
    }
    
}

extension SelectionViewController {
    
    func createOffenseCharacters() {

        for type in HeroType.allTypes {
            if type == .offense {
                
                for hero in HeroName.heroes(with: .offense) {
                    
                    let imageView = UIImageView()
                    imageView.accessibilityLabel = hero.description
                    imageView.image = UIImage(named: "\(hero.description)Profile")
                    imageView.contentMode = .scaleAspectFit
                    let xPos = self.heroScrollView.frame.width * CGFloat(HeroName.heroes(with: .offense).index(of: hero)!)
                    imageView.frame = CGRect(x: xPos, y: 0.0, width: self.heroScrollView.frame.width, height: self.heroScrollView.frame.height)
                    heroScrollView.contentSize.width = heroScrollView.frame.width * CGFloat((HeroName.heroes(with: .offense).index(of: hero))! + 1)
                    heroScrollView.addSubview(imageView)
                    
                }
            }
        }
    }
    
    func createDefenseCharacters() {
        
        for type in HeroType.allTypes {
            if type == .defense {
                
                for hero in HeroName.heroes(with: .defense) {
                    
                    let imageView = UIImageView()
                    imageView.accessibilityLabel = hero.description
                    imageView.image = UIImage(named: "\(hero.description)Profile")
                    imageView.contentMode = .scaleAspectFit
                    let xPos = self.heroScrollView.frame.width * CGFloat(HeroName.heroes(with: .defense).index(of: hero)!)
                    imageView.frame = CGRect(x: xPos, y: 0.0, width: self.heroScrollView.frame.width, height: self.heroScrollView.frame.height)
                    heroScrollView.contentSize.width = heroScrollView.frame.width * CGFloat((HeroName.heroes(with: .defense).index(of: hero))! + 1)
                    heroScrollView.addSubview(imageView)
                    
                }
            }
        }
    }
    
    func createSupportCharacters() {
        
        for type in HeroType.allTypes {
            if type == .support {
                
                for hero in HeroName.heroes(with: .support) {
                    
                    let imageView = UIImageView()
                    imageView.accessibilityLabel = hero.description
                    imageView.image = UIImage(named: "\(hero.description)Profile")
                    imageView.contentMode = .scaleAspectFit
                    let xPos = self.heroScrollView.frame.width * CGFloat(HeroName.heroes(with: .support).index(of: hero)!)
                    imageView.frame = CGRect(x: xPos, y: 0.0, width: self.heroScrollView.frame.width, height: self.heroScrollView.frame.height)
                    heroScrollView.contentSize.width = heroScrollView.frame.width * CGFloat((HeroName.heroes(with: .support).index(of: hero))! + 1)
                    heroScrollView.addSubview(imageView)
                    
                }
            }
        }
    }
    
    func createTankCharacters() {
        
        for type in HeroType.allTypes {
            if type == .tank {
                
                for hero in HeroName.heroes(with: .tank) {
                    
                    let imageView = UIImageView()
                    imageView.accessibilityLabel = hero.description
                    imageView.image = UIImage(named: "\(hero.description)Profile")
                    imageView.contentMode = .scaleAspectFit
                    let xPos = self.heroScrollView.frame.width * CGFloat(HeroName.heroes(with: .tank).index(of: hero)!)
                    imageView.frame = CGRect(x: xPos, y: 0.0, width: self.heroScrollView.frame.width, height: self.heroScrollView.frame.height)
                    heroScrollView.contentSize.width = heroScrollView.frame.width * CGFloat((HeroName.heroes(with: .tank).index(of: hero))! + 1)
                    heroScrollView.addSubview(imageView)
                    
                }
            }
        }
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let position = Int(scrollView.contentOffset.x / self.heroScrollView.frame.width)
        heroNameLabel.text = scrollView.subviews[position].accessibilityLabel
        
    }
    
    
}
