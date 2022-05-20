//
//  StepperBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 19/05/22.
//

import SwiftUI

struct StepperBootcamp: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
	   VStack {
		  Stepper("Stepper: \(stepperValue)", value: $stepperValue)
			 .padding()
		  
		  RoundedRectangle(cornerRadius: 25)
			 .frame(width: 100 + widthIncrement, height: 100)
		  
		  Stepper(
			 "Stepper 2",
			 onIncrement: {
				incrementWidth(amount: 10)
			 }, onDecrement: {
				incrementWidth(amount: -10)
			 }
		  ).padding()
	   }
    }
    
    func incrementWidth(amount: CGFloat) {
	   withAnimation(.easeInOut) {
		  widthIncrement += amount
	   }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
