import SwiftUI

struct HomePageView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Choose one")
                                .font(.title)
                                .fontWeight(.bold)
                                .position(CGPoint(x: 200, y: 200))
                
                Image("Engineering") 
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 100)
                    .padding(8)
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.black, lineWidth: 2)
                    )
                    .overlay(
                        NavigationLink(destination: EngineeringView()){
                            Text("Engineering")
                            
                                .foregroundColor(Color.black)
                                .font(.headline)
                                .padding(8)
                                .offset(y: 70)
                        }
                    )
                
                Image("Doctor")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 100)
                    .padding(8)
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.black, lineWidth: 2)
                    )
                    .overlay(
                        NavigationLink(destination: MedicalView()){
                            Text("Medical")
                            
                                .foregroundColor(Color.black)
                                .font(.headline)
                                .padding(8)
                                .offset(y: 70)
                        }
                    )
                    .padding()
                    .padding()
                Spacer(minLength: 200)
                                        
            }
            
            
            
            
        }
        
        
    }
}


struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}

