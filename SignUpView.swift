import SwiftUI

struct SignUpView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var errorMessage = ""

    var body: some View {
        NavigationView {
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 100,height: 100)
                Text("Welcome to Eng-Stu")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                TextField("Username", text: $username)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)

                TextField("Email", text: $email)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)

                SecureField("Password", text: $password)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                SecureField("Confirm Password", text: $confirmPassword)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button(action: {
                    // Perform sign-up logic here
                    self.signUp()
                }) {
                    Text("Sign Up")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(12)
                }
                .padding()

                Text(errorMessage)
                    .foregroundColor(.red)
                

                
            }
    
            .padding()
        .navigationBarTitle("Sign Up", displayMode: .inline)
        }
    }

    func signUp() {
        if password == confirmPassword {
            
            errorMessage = ""

            
            print("Username: \(username)")
            print("Email: \(email)")
            print("Password: \(password)")
            print("Confirm Password: \(confirmPassword)")
            
        } else {
            
            errorMessage = "Password and Confirm Password must match."
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SignUpView()
        }
    }
}
