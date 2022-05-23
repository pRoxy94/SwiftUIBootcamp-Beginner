//
//  ModelBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 20/05/22.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString // random user id
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
	   UserModel(displayName: "Nick", userName: "nick123", followerCount: 500, isVerified: true),
	   UserModel(displayName: "Emily", userName: "emily12", followerCount: 1000, isVerified: false),
	   UserModel(displayName: "Joe", userName: "Joe123", followerCount: 200, isVerified: true),
	   UserModel(displayName: "Chris", userName: "ChrisXX", followerCount: 88, isVerified: false)
    ]
    
    var body: some View {
	   NavigationView{
		  List {
			 ForEach(users) { user in
				HStack(spacing: 15) {
				    Circle()
					   .frame(width: 35, height: 35)
				    
				    VStack(alignment: .leading) {
					   Text(user.displayName)
						  .font(.headline)
					   Text("@\(user.userName)")
						  .foregroundColor(.gray)
						  .font(.caption)
				    }
				    Spacer()
				    
				    if user.isVerified {
					   Image(systemName: "checkmark.seal.fill")
						  .foregroundColor(.blue)
				    }
				    
				    VStack {
					   Text("\(user.followerCount)")
						  .font(.headline)
					   Text("Followers")
						  .foregroundColor(.gray)
						  .font(.caption)
				    }
				}
				.padding(.vertical, 10)
			 }
			 
//			 ForEach(users, id: \.self) { name in
//
//			 }
		  }
		  .listStyle(InsetGroupedListStyle())
		  .navigationTitle("Users")
	   }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
