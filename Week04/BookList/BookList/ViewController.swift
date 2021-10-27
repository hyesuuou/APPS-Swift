//
//  ViewController.swift
//  BookList
//
//  Created by 김혜수 on 2021/10/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fetchBookData { books in
            for book in books {
                print(book.title!)
            }
        }
    }
    
    func fetchBookData(completionHandler: @escaping([Book]) -> Void) {
        let bookListURL = "https://oakbooklist-default-rtdb.europe-west1.firebasedatabase.app/data.json"
        
        guard let url = URL(string: bookListURL) else { return }
        
        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Book].self, from: data!)
                
                completionHandler(jsonData)
            }
            catch {
                let error = error
                print(error.localizedDescription)
            }
        }
        
        dataTask.resume()
    }


}

