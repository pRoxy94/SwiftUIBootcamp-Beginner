//
//  ViewModelBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 20/05/22.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    /*
	Property wrapper
	
	@Published -> is the same thing as the @State, except it's within a class.
	When the fruits array gets changed, it notifies the FruitViewModel.
	*/
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
	   getFruits()
    }
    
    func getFruits() {
	   let fruit1 = FruitModel(name: "Orange", count: 1)
	   let fruit2 = FruitModel(name: "Banana", count: 3)
	   let fruit3 = FruitModel(name: "Watermelon", count: 4)
	   let fruit4 = FruitModel(name: "Peaches", count: 5)
	   
	   isLoading = true
	   DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
		  // closure -> need to just explicitly tell that this fruit array is in this class
		  self.fruits.append(fruit1)
		  self.fruits.append(fruit2)
		  self.fruits.append(fruit3)
		  self.fruits.append(fruit4)
		  self.isLoading = false
	   })
    }
    
    func deleteFruit(index: IndexSet) {
	   fruits.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    
//    @State var fruits: [FruitModel] = []
    
    /*
	@ObservedObject ->  Makes the viewmodel observable
	telling this view that it's going to be updating -> propery wrapper: @ObservedObject
	ViewModel class must be conform to ObservableObject
	-> USE THIS FOR SUBVIEWS
	
	@StateObject -> you kind of want the data to PERSIST even if the view reloads. Is the same thing as an observable object except basically if this view reloads it will not refresh
	-> USE THIS ON CREATION / INIT
	*/
    
//    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
	   NavigationView {
		  List {
			 
			 if fruitViewModel.isLoading {
				ProgressView()
			 } else {
				ForEach(fruitViewModel.fruits) { fruit in
				    HStack {
					   Text("\(fruit.count)")
						  .foregroundColor(.orange)
					   Text(fruit.name)
						  .font(.headline)
						  .bold()
				    }
				}
				.onDelete(perform: fruitViewModel.deleteFruit)
			 }
		  }
		  .listStyle(GroupedListStyle())
		  .navigationTitle("Fruit List")
		  
		  .toolbar {
			 ToolbarItem(placement: .navigationBarTrailing) {
				NavigationLink(
				    destination: RandomScreen(fruitViewModel: fruitViewModel),
				    label: {
					   Image(systemName: "arrow.right")
				    }
				)
			 }
		  }
		  
//		  .onAppear {
//			 fruitViewModel.getFruits()
//		  }
	   }
    }
}

struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
	   ZStack {
		  Color.green.ignoresSafeArea()
	   
		  VStack {
			 ForEach(fruitViewModel.fruits) { fruit in
				Text(fruit.name)
				    .foregroundColor(.white)
				    .font(.headline)
			 }
		  }
	   }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
//	   RandomScreen()
    }
}
