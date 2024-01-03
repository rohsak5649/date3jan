//
//  EngineeringView.swift
//  EngStu
//
//  Created by Rohan Sakhare on 22/12/23.
//

import SwiftUI

struct EngineeringView: View {
    private var CollegeList = colleges
    @State var searchText = ""
    var body: some View {
        NavigationView
        {
            List{
                ForEach(college, id: \.self){
                    colleges in NavigationLink(destination: Text(colleges))
                    {
                        Image("colleges")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .clipped()
                        
                        Text(colleges)
                        
                        
                    }
                    
                }
            }
            .searchable(text: $searchText)
            .navigationBarTitle("College List")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("College List")
                        .font(.system(size: 30))
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .font(.system(size: 15))
        }
        
    }
    
    var college : [String] {
        let lcColleges = CollegeList . map{ $0.lowercased()}
        return searchText == "" ? lcColleges : lcColleges.filter{
            $0.contains(searchText.lowercased())
        }
        
    }
}

#Preview {
    EngineeringView()
}

