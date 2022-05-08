//
//  InitializerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 08/05/22.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let bgColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
	   self.count = count
	   
	   if fruit == .apple {
		  self.title = "Apples"
		  self.bgColor = .red
	   } else {
		  self.title = "Oranges"
		  self.bgColor = .orange
	   }
    }
    
    enum Fruit {
	   case apple
	   case orange
    }
    
    var body: some View {
	   VStack(spacing: 15) {
		  Text("\(count)")
			 .font(.largeTitle)
			 .foregroundColor(.white)
			 .underline()
		  Text(title)
			 .foregroundColor(.white)
	   }
	   .frame(width: 150, height: 150)
	   .background(bgColor)
	   .cornerRadius(15)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
	   HStack {
		  InitializerBootcamp(count: 100, fruit: .apple)
		  InitializerBootcamp(count: 45, fruit: .orange)
	   }
    }
}
