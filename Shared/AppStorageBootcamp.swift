//
//  AppStorageBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 21/05/22.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
	   VStack(spacing: 20) {
		  
		  if let name = currentUserName {
			 Text(name)
		  }
		  
		  Button("Save".uppercased()) {
			 let name = "Joe"
			 currentUserName = name
//			 UserDefaults.standard.set(name, forKey: "name")
		  }
	   }
	   .onAppear {
//		  currentUserName = UserDefaults.standard.string(forKey: "name")
	   }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
