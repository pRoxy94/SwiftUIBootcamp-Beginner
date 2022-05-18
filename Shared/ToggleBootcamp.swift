//
//  ToggleBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 18/05/22.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
	   VStack {
		  HStack {
			 Text("Status:")
			 Text(toggleIsOn ? "online" : "offline")
		  }
		  
		  Toggle(
			 isOn: $toggleIsOn,
			 label: {
				Text("Change status")
			 })
		  .toggleStyle(SwitchToggleStyle(tint: .orange))
		  
		 Spacer()
	   }
	   .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
