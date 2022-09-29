//
//  ContentView.swift
//  FinalProject
//
//  Created by Hessa AlMusafer on 22/09/2022.
//

import SwiftUI
/*
struct CircularProgressBarDemo: View {
    
    @State var circleProgress: CGFloat = 0.0
    
    var body: some View {
        
        VStack
        {
        ZStack
            {
            Circle()
                .stroke(Color.gray, lineWidth: 15)
                    .frame(width: 200, height: 200)
            
            Circle()
                .trim(from: 0.0, to: circleProgress)
                .stroke(Color.blue, lineWidth: 15)
                .frame(width: 200-15*2, height: 200-15*2)
                .rotationEffect(Angle(degrees: -90))
            
            Text("\(Int(self.circleProgress*100))%")
                    .font(.custom("HelveticaNeue", size: 20.0))
            }
            
            Button(action: {self.startLoading()}) {
                          Text("Start timer")
                      }
        }
    }



func startLoading() {
    _ = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
        withAnimation() {
            self.circleProgress += 0.01
            if self.circleProgress >= 1.0 {
                timer.invalidate()
            }
        }
    }
}
}
*/


struct water: View {
    
    
    var body: some View {
   
           
            VStack
                {
                   // CircularProgressBarDemo()
                    
             
                    
                       
                    
                    Text("PROGRESS")
                        .foregroundColor(.black.opacity(0.6))
       
                       
                }
         
          
    }
}


struct pill: Identifiable
{
    let id = UUID()
    var name: String
    var check: Bool
  
}

struct meds: View {

    @State private var showPopup = false
    @State private var newpill = ""
    @State private var color = Color.white
    @State private var pills = [pill(name: "pill1", check: false) , pill(name: "pill2", check: false) , pill(name: "pill3", check: false) , pill(name: "pill4", check: false)]
    
    var body: some View {
        
                   VStack
                    {
                      HStack
                        {
                        Text("Medication")
                            .bold()
                            .foregroundColor(.indigo)
                            .font(.largeTitle)
                            .padding()
                            
                            Button(action: {
                                showPopup = true
                            }) {
                                ZStack
                                {
                                   Rectangle()
                                    .fill(.purple)
                                    .cornerRadius(20)
                                    .frame(width: 100, height: 20)
                                    
                                    HStack
                                    {
                                        Image(systemName: "plus")
                                            .font(.footnote)
                                            .foregroundColor(.white)
                                        
                                        Text("Add a pill")
                                            .font(.footnote)
                                            .foregroundColor(.white)
                                    }
                                }
                                .popover(isPresented: $showPopup)
                                {
                                    VStack
                                    {
                                        HStack
                                        {
                                          Text("Pill name")
                                                .foregroundColor(.black)
                                            TextField("enter here" , text: $newpill)
                                                .border(.gray, width: 1)
                                        }
                                        
                                        
                                        Button(action: {
                                            pills.append(pill(name: newpill, check: false))
                                            showPopup = false
                                        }) {
                                            ZStack
                                            {
                                               Rectangle()
                                                .fill(.purple)
                                                .cornerRadius(20)
                                                .frame(width: 100, height: 20)
                                                
                                                    Text("Add")
                                                        .font(.footnote)
                                                        .foregroundColor(.white)
                                                
                                            }
                                        
                                        
                                    }
                                        
                                    }
                                }
                                
                            }
                        }
                        ForEach($pills)
                        {
                            $pill in
                            HStack
                            {
                         
                                CheckBoxView(checked: $pill.check , color: $color)
                                
                              Spacer()
                                
                                Text(pill.name)
                                    .foregroundColor(.white)
                                .font(.largeTitle)
                                .bold()
                                
                                Spacer()
                              
                            Image(systemName: "pills.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                
                            }
                            .padding()
                            .frame(width: 300, height: 60)
                            .background(.indigo)
                            .cornerRadius(20)
                            .padding(.bottom)
                            
                        }
                      
                    }
    }
}

struct vitals: View {
    
    @State private var color = Color.white
        @State private var hrcheck = false
        @State private var bcheck = false
        @State private var tempcheck = false
        @State private var bpcheck = false
        @State private var sugarcheck = false
        
        var body: some View {
        
                
                       VStack
                        {
                          
                            Text("Vital Signs")
                                .bold()
                                .foregroundColor(.purple)
                                .font(.largeTitle)
                                .padding()
                            
                            VStack
                            {
                                
                                HStack
                                {
                             
                                    CheckBoxView(checked: $hrcheck , color: $color)
                                    
                                  Spacer()
                                    
                                Text("HEART RATE")
                                    .foregroundColor(.white)
                                    .bold()
                                    
                                    Spacer()
                                  
                                Image(systemName: "waveform.path.ecg")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    
                                }
                                .padding()
                                .frame(width: 300, height: 60)
                                .background(.purple)
                                .cornerRadius(20)
                                .padding(.bottom)
                                
                                HStack
                                {
                             
                                    CheckBoxView(checked: $bcheck , color: $color)
                                    
                                  Spacer()
                                    
                                Text("BREATHING")
                                    .foregroundColor(.white)
                                    .bold()
                                    
                                    Spacer()
                                  
                                Image(systemName: "lungs.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    
                                }
                                .padding()
                                .frame(width: 300, height: 60)
                                .background(.purple)
                                .cornerRadius(20)
                                .padding(.bottom)
                                
                                HStack
                                {
                             
                                    CheckBoxView(checked: $tempcheck , color: $color)
                                    
                                  Spacer()
                                    
                                Text("TEMPRATURE")
                                    .foregroundColor(.white)
                                    .bold()
                                    
                                    Spacer()
                                  
                                Image(systemName: "thermometer.sun")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    
                                }
                                .padding()
                                .frame(width: 300, height: 60)
                                .background(.purple)
                                .cornerRadius(20)
                                .padding(.bottom)
                                
                                HStack
                                {
                             
                                    CheckBoxView(checked: $bpcheck , color: $color)
                                    
                                  Spacer()
                                    
                                Text("BLOOD PRESSURE")
                                    .foregroundColor(.white)
                                    .bold()
                                    
                                    Spacer()
                                  
                                Image(systemName: "barometer")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    
                                }
                                .padding()
                                .frame(width: 300, height: 60)
                                .background(.purple)
                                .cornerRadius(20)
                                .padding(.bottom)
                                
                                HStack
                                {
                             
                                    CheckBoxView(checked: $sugarcheck , color: $color)
                                    
                                  Spacer()
                                    
                                Text("BLOOD SUGAR")
                                    .foregroundColor(.white)
                                    .bold()
                                    
                                    Spacer()
                                  
                                Image(systemName: "hand.tap.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    
                                }
                                .padding()
                                .frame(width: 300, height: 60)
                                .background(.purple)
                                .cornerRadius(20)
                                .padding(.bottom)
                                
                                
                            }
                          
                        }
            
        }
    }


struct meals: View {
   
    @State private var color = Color.white
        @State private var amcheck = false
        @State private var lunchcheck = false
        @State private var pmcheck = false
        @State private var snackcheck = false
        
        var body: some View {
           
                
                       VStack
                        {
                          
                            Text("Meals")
                                .bold()
                                .foregroundColor(.mint)
                                .font(.largeTitle)
                                .padding()
                            
                            VStack
                            {
                                
                                HStack
                                {
                             
                                    CheckBoxView(checked: $amcheck , color: $color)
                                    
                                  Spacer()
                                    
                                Text("BREAKFAST")
                                    .foregroundColor(.white)
                                    .bold()
                                    
                                    Spacer()
                                  
                                Image(systemName: "sun.max.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    
                                }
                                .padding()
                                .frame(width: 300, height: 60)
                                .background(.mint)
                                .cornerRadius(20)
                                .padding(.bottom)
                                
                                HStack
                                {
                             
                                    CheckBoxView(checked: $lunchcheck , color: $color)
                                    
                                  Spacer()
                                    
                                Text("LUNCH")
                                    .foregroundColor(.white)
                                    .bold()
                                    
                                    Spacer()
                                  
                                Image(systemName: "fork.knife")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    
                                }
                                .padding()
                                .frame(width: 300, height: 60)
                                .background(.mint)
                                .cornerRadius(20)
                                .padding(.bottom)
                                
                                HStack
                                {
                             
                                    CheckBoxView(checked: $pmcheck , color: $color)
                                    
                                  Spacer()
                                    
                                Text("DINNER")
                                    .foregroundColor(.white)
                                    .bold()
                                    
                                    Spacer()
                                  
                                Image(systemName: "moon.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    
                                }
                                .padding()
                                .frame(width: 300, height: 60)
                                .background(.mint)
                                .cornerRadius(20)
                                .padding(.bottom)
                                
                                HStack
                                {
                             
                                    CheckBoxView(checked: $snackcheck , color: $color)
                                    
                                  Spacer()
                                    
                                Text("SNACK")
                                    .foregroundColor(.white)
                                    .bold()
                                    
                                    Spacer()
                                  
                                Image(systemName: "cup.and.saucer.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    
                                }
                                .padding()
                                .frame(width: 300, height: 60)
                                .background(.mint)
                                .cornerRadius(20)
                                .padding(.bottom)
                                
                        
                            }
                          
                        }
            
        }
    }


struct ContentView: View
{
    
    var body: some View
    {
        
        TabView
            {
                /*
                water()
                    .tabItem
                    {
                        Image(systemName: "drop.fill")
                    }
                */
                meds()
                    .tabItem
                {
                    Image(systemName: "pills.fill")
                }
                
                vitals()
                    .tabItem
                {
                    Image(systemName: "bolt.heart")
                }
                
                meals()
                    .tabItem
                {
                    Image(systemName: "fork.knife")
                }
                        
               
            }.accentColor(.black)
                 
    }
}


struct CheckBoxView: View {
    @Binding var checked: Bool
    @Binding var color: Color

    var body: some View {
        Image(systemName: checked ? "checkmark.square.fill" : "square")
            .resizable()
            .frame(width: 25, height: 25)
            .foregroundColor(color)
            .onTapGesture {
                self.checked.toggle()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
