import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Welcome to Eng-Stu")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                Image("logo")
                    .resizable()
                    .frame(width: 100,height: 100)
                
                Text("")
                TextField("Username", text: $username)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                
                SecureField("Password", text: $password)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
            
                    print("Login button tapped")
                }) {
                    NavigationLink(destination: HomePageView())
                    {
                        Text("Login")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
                
                .padding()
                
                Spacer()
                
                HStack {
                    Text("Don’t have an Account?")
                        .foregroundColor(.gray)
                    
                    NavigationLink(destination: SignUpView()){
                                            Text("SignUp")
                                        }
                }
                .padding()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

