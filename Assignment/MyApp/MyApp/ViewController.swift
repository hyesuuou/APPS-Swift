import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    /// View Controller가 발생될 때 실행되는 부분
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    /// Button을 눌렀을 때 실행되는 부분
    @IBAction func onClickedButton(_ sender: Any) {
        /// 배경색 설정
        view.backgroundColor = .blue
        
        /// Label 설정
        myLabel.text = "To be or not to be"
        myLabel.textColor = .white
    }
    
}

