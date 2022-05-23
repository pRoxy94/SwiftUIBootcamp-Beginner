//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 21/05/22.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    @Published var data: [String] = []
    
    init() {
	   getData()
    }
    
    func getData() {
	   self.data.append(contentsOf: ["iPhone", "iPad", "iMac", "Appple Watch"])
    }
}


struct EnvironmentObjectBootcamp: View {
    
    @State var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
	   NavigationView {
		  List {
			 ForEach(viewModel.data, id: \.self) { item in
				NavigationLink(
				    destination:
					   DetailView(selectedItem: item),
				    label: {
					   Text(item)
				    })
			 }
		  }
		  .navigationTitle("iOS Devices")
	   }
	   // all the subviews going to have access to this viewmodel
	   .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
//    @ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
	   ZStack {
		  // background
		  Color.orange.ignoresSafeArea()
		  
		  // content
		  NavigationLink(destination: FinalView(), label: {
			 Text(selectedItem)
				.font(.headline)
				.foregroundColor(.orange)
				.padding()
				.padding(.horizontal)
				.background(Color.white)
				.cornerRadius(30)
		  })
	   }
    }
}

struct FinalView: View {
//    @ObservedObject var viewModel: EnvironmentViewModel
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
	   ZStack {
		  // background
		  LinearGradient(
			 gradient: Gradient(colors: [Color.blue, Color.purple]),
			 startPoint: .topLeading,
			 endPoint: .bottomTrailing
		  )
		  .ignoresSafeArea()
		  
		  // content
		  ScrollView {
			 VStack(spacing: 20) {
				ForEach(viewModel.data, id: \.self) { item in
				    Text(item)
				}
			 }
			 .foregroundColor(.white)
			 .font(.largeTitle)
		  }
	   }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
//	   DetailView(selectedItem: "iPhone")
//	   FinalView()
    }
}
