import UIKit

class loginPage: UIViewController
{
    let loginName = textField(textsize: 20, placeHolder: "User Name", backgroundColor: .white, textColor: .darkText, cornerradius: 8)
    let phoneNumber = textField(textsize: 20, placeHolder: "Phone Number", backgroundColor: .white, textColor: .darkText, cornerradius: 8)
    let password = passwordTextField(textsize: 20, placeHolder: "Password", backgroundColor: .white, textColor: .darkText, cornerradius: 8)
    let button = Button(textsize: 20, text: "LOGIN", backgroundColor: .darkText, textColor: .white, cornerradius: 8)
    let loginLabel = labelField(text: "  welcome back to fb",textsize: 20, backgroundColor: .white, textcolor: .darkGray , cornerradius: 20)
    override func viewDidLoad() {
        button.addTarget(self, action: #selector(self.pressed), for: [.touchUpInside,.touchUpOutside])
        print("i am working")
        view.backgroundColor = .white
        
        view.addSubview(loginLabel)
        loginLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginLabel.widthAnchor.constraint(equalToConstant: 190).isActive = true
        loginLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        loginLabel.layer.cornerRadius = 8
        
        
        view.addSubview(loginName)
        loginName.topAnchor.constraint(equalTo: loginLabel.safeAreaLayoutGuide.topAnchor, constant: 90).isActive = true
        loginName.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: 10).isActive = true
        loginName.widthAnchor.constraint(equalToConstant: 250).isActive = true
        loginName.heightAnchor.constraint(equalToConstant: 30).isActive = true


        view.addSubview(phoneNumber)
        phoneNumber.topAnchor.constraint(equalTo: loginName.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        phoneNumber.centerXAnchor.constraint(equalTo: loginName.centerXAnchor).isActive = true
        phoneNumber.widthAnchor.constraint(equalToConstant: 250).isActive = true
        phoneNumber.heightAnchor.constraint(equalToConstant: 30).isActive = true

        view.addSubview(password)
        password.topAnchor.constraint(equalTo: phoneNumber.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        password.centerXAnchor.constraint(equalTo: phoneNumber.centerXAnchor).isActive = true
        password.widthAnchor.constraint(equalToConstant: 250).isActive = true
        password.heightAnchor.constraint(equalToConstant: 30).isActive = true

         view.addSubview(button)
        button.topAnchor.constraint(equalTo: password.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        button.centerXAnchor.constraint(equalTo: password.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 250).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true

    }
    
    @objc func pressed()
    {
        if loginName.text != "" , phoneNumber.text != "", password.text != ""
        {
          print("not empty")
            if (loginName.text?.contains(" "))! || (phoneNumber.text?.contains(" "))! || (password.text?.contains(" "))!
            {
                    print("not valid")
            }
            else{
                    let ans = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: phoneNumber.text!))
                    if ans && phoneNumber.text?.count == 10
                    {
                        print("valid login")
                    }
                    else{
                        print("invalid number")
                    }
                }
        }
        else {
           print("invalid")
        }
    }
}
