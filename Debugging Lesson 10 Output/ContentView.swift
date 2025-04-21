//
//  ContentView.swift
//  Debugging Lesson 10 Output
//
//  Created by Maya Stein on 4/20/25.
//

//Hi Scholar! Thank you for sharing your code, lets walk through it together to identify the bugs
import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var food: String = ""
    @State private var showAlert = false
    //All of your variables are looking good! We have state variables set up for the user's food and alert status
    //I see you chose to create the name variable as a constant, can you explain why you did it this way
    //Interesting! I like the way you are thinking, and that totally makes sense. The one thing that we want to keep in mind is that constants cannot change the way regular variables can. So if we define name as a constant, no matter what the user types in, we won't be able to update name to store anything but "". Lets adjust this so name is a State variable like the others declared below it.
    var body: some View {
        VStack {
            Text("Tell us about yourself!")
                .font(.title)

            TextField("Enter name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()
            //The name TextField looks great, you are almost there! We are just missing one character - the $ sign. Adding $ before the variable name lets us update the variable as the user types. Without this, we get a binding error

            TextField("Favorite food", text: $food)
                .textFieldStyle(.roundedBorder)
                .padding()
            //This food TextField is very similar to the name TextField. What is the one character we need to add before the variable name?
            //Exactly! We need to add the $ sign. Hmmmm, when you go to add that $ sign on line 28, do you notice anything else that might cause a bug?
            //Yes! We have a small type - lets change that from "good" to "food"
            
            //Yay! The error messages are gone and our ContentView has loaded in the output window. Lets give your code a run and see if it is working as expected
            
            //Hmmm, okay I see we still have some work to do. When we click the submit button, nothing is happening. Lets take a look at the code.

            Button("Submit") {
                //We need to send some code in between these brackets so the computer has directions about what to do when the button is clicked! In this case, we want to change the value of our showAlert variable so we know the button has been clicked and the alert should appear. How can we do this?
                //Yes! We need to set the showAlert variable to true. This is also why it is amazing you declared showAlert as a variable and not as a constant - we can go ahead and update the value right here!
                showAlert=true
                //We are so close! Lets give it a run and see if there is anything else we need to fix.
                
                //Amazing! The code is looking great, and our alert is popping up as expected. Unfortunately we aren't seeing the correct variable data in the alert. Why is it saying \\(name) instead of the user's name? Lets look at the syntax. What should we change
                //You are right! We need just one slash - not two! Lets make that edit
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .alert("Thanks, \(name)! We now know your favorite food is \(food)!", isPresented: $showAlert) {
                Button("OK", role: .cancel) { }
            }
            //Excellent! Your code is looking great and working as it should. I love the purple submit button and your choice to ask the user about their favorite food. Really great work! What other questions do you have?
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
