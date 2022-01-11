//
//  ContentView.swift
//  MyFirstSwuiftUIApp
//
//  Created by marco rodriguez on 11/01/22.
//

import SwiftUI

struct Data: Identifiable {
    var id = UUID()
    let title: String
    let imageName: String
    let imageDescription: String
    let imageTakenDate: String
}

struct ContentView: View {
    
    var items = [Data]()
    
    var body: some View {
        NavigationView {
            List (items) { data in
                NavigationLink(destination: DataView(data: data)) {
                    HStack {
                        Image(data.imageName)
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .cornerRadius(20)
                        
                        Text(data.title)
                            .foregroundColor(.blue)
                            .fontWeight(.bold)
                            .shadow(radius: 12)
                    }//: Hstack
                }
                
            }//: List
            .navigationBarTitle("Places to Visit")
        }//: Nav
        
    }
}

struct DataView: View {
    
    var data: Data
    
    var body: some View {
        VStack {
            Image(data.imageName)
                .resizable()
                .frame(width: 500, height: 400, alignment: .center)
                .aspectRatio(contentMode: .fit)
            
            Text(data.imageDescription)
                .font(.largeTitle)
                .padding(10)
            
            Spacer()
            Text(data.imageTakenDate)
                .fontWeight(.bold)
                .padding(10)
        }
        .navigationTitle(data.title)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(items: [
        Data(title: "Cascadas", imageName: "1", imageDescription: "A beautiful place to go and relax, You can take a shower rounded by nature and ear the amazing songs of animals and cristaline water", imageTakenDate: "11/01/2022"),
        Data(title: "Playa Quieta", imageName: "2", imageDescription: "The amazing and wonderful beach to relax and have fun with your friends or family or even only by yourself.", imageTakenDate: "11/01/2022"),
        Data(title: "Cañon del sumidero", imageName: "3", imageDescription: "You can navegate on a boat and see the wonderful view of the mountains around you.", imageTakenDate: "11/01/2022"),
        Data(title: "Montañas y lago", imageName: "4", imageDescription: "A beautiful place to go and relax", imageTakenDate: "11/01/2022"),
        Data(title: "Desierto de Sonora", imageName: "5", imageDescription: "A beautiful place to go and relax", imageTakenDate: "11/01/2022"),
        Data(title: "Lago de Camecuaro", imageName: "6", imageDescription: "A beautiful place to go and relax", imageTakenDate: "11/01/2022"),
        Data(title: "Acapulco Mexico", imageName: "7", imageDescription: "This beach is considered the most beautiful beach of this country, you can have fun and take the sun every days.", imageTakenDate: "11/01/2022"),
        Data(title: "Holbox", imageName: "8", imageDescription: "A beautiful place to go and relax", imageTakenDate: "11/01/2022"),
        Data(title: "Snowboard in the snow", imageName: "9", imageDescription: "A beautiful place to go and relax", imageTakenDate: "11/01/2022"),
        Data(title: "Cannada Mountains", imageName: "10", imageDescription: "A beautiful place to go and relax", imageTakenDate: "11/01/2022")
        ])
            .environment(\.colorScheme, .dark)
            .previewDevice("iPhone 13")
            
    }
}
