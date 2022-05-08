//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 08/05/22.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//	   VStack(spacing: 20) {
//		  HStackSpacerBootcamp()
//		  ImageSpacerBootcamp()
//	   }
	   
	   ImageSpacerBootcamp()
    }
}


struct ImageSpacerBootcamp: View {
    var body: some View {
	   VStack {
		  HStack(spacing: 0) {
			 Image(systemName: "xmark")
			 
			 Spacer()
				
			 Image(systemName: "gear")
		  }
		  .font(.title)
//		  .background(Color.yellow)
		  .padding(.horizontal)
//		  .background(Color.blue)
		  
		  Spacer()
	   }
    }
}

struct HStackSpacerBootcamp: View {
    var body: some View {
	   HStack(spacing: 0) {
		  Spacer()
			 .frame(height: 10)
			 .background(Color.orange)
		  
		  Rectangle()
			 .frame(width: 50, height: 50)
		  
		  Spacer()
			 .frame(height: 10)
			 .background(Color.orange)
		  
		  Rectangle()
			 .fill(Color.red)
			 .frame(width: 50, height: 50)
		  
		  Spacer()
			 .frame(height: 10)
			 .background(Color.orange)
		  
		  Rectangle()
			 .fill(Color.green)
			 .frame(width: 50, height: 50)
		  
		  Spacer()
			 .frame(height: 10)
			 .background(Color.orange)
	   }
	   .padding(.horizontal, 20)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
