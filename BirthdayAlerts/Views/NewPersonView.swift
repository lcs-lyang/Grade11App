//
//  NewPersonView.swift
//  BirthdayAlerts
//
//  Created by Lillian Yang on 2021-11-30.
//

import SwiftUI

struct NewPersonView: View {
    var body: some View {
        VStack{
            Text("Whose birthday it is?")
                .bold()
                .font(.title)
                .padding(.bottom, 3)

            TextField("This argument should the describe the purpose of the text field within the context of your app, e.g.: 'Name' or 'Email Address'",
                      text: .constant(""),
                      prompt: Text("Name of special person..."))
                .padding()
            
           
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
                        TextField("This argument should the describe the purpose of the text field within the context of your app, e.g.: 'Name' or 'Email Address'",
                                  text: .constant(""),
                                  prompt: Text("Enter here..."))
                    }
                    

                    
                }
                
            }
            
            DatePicker("Birthday Reminder",
                       selection: .constant(Date()))
            .datePickerStyle(.wheel)
            .padding()
            
            Button(action: {
                print("Button was pressed")
            }, label: {
                Text("Done")
            })
            .buttonStyle(.bordered)
            Spacer()
        }
        
    }
}

struct NewPersonView_Previews: PreviewProvider {
    static var previews: some View {
        NewPersonView()
    }
}
