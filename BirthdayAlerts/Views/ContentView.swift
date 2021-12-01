//
//  ContentView.swift
//  BirthdayAlerts
//
//  Created by Lillian Yang on 2021-11-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView{
            
            VStack {
                Text("Whose birthday it is?")
                    .bold()
                    .font(.title)
                    .padding(.bottom, 3)

                Text("Name of person")
                
               
                HStack{
                    Image("mascot")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        
                    VStack{
                    
                        
                        DatePicker("Birthday",
                                   selection: .constant(Date()),
                                   displayedComponents: .date)
                        
                        HStack{
                            Text("Zodiac Sign:")
                            Text("Zodiac of person")
                        }
                        

                        
                    }
                    
                }
                
                DatePicker("Birthday Reminder",
                           selection: .constant(Date()))
                .datePickerStyle(.wheel)
                .padding()
                
                Text("Some Ideas...")
                    .bold()
                    .font(.title3)
                
                TextField("This argument should the describe the purpose of the text field within the context of your app, e.g.: 'Name' or 'Email Address'",
                          text: .constant(""),
                          prompt: Text("Some space for ideas..."))
                    .padding(.bottom, 50)
                
                Spacer()
                
                Text("Gift Finder")
                    .bold()
                    .font(.title2)
                
                Text("Gift finder is your personal assistant, advisor and friend. This tool allows you to enter your friend's or family's social media username, so that we can analyze their pictures based on their locations or objects, and recommend related gifts!")
                    .padding(5)
                
                
                HStack{
                    Text("IG username:")
                        .padding(5)
                    TextField("This argument should the describe the purpose of the text field within the context of your app, e.g.: 'Name' or 'Email Address'",
                              text: .constant(""),
                              prompt: Text("enter..."))
                    Button(action: {
                        print("Button was pressed")
                    }, label: {
                        Text("Find")
                    })
                    .buttonStyle(.bordered)
                    
                }
            
              
                    
            }
        }
        
        
        
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
