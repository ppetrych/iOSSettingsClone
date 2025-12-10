//
//  ContentView.swift
//  iOSSettingsClone
//
//  Created by Vasyl Petrych on 09/12/2025.
//

import SwiftUI

struct ContentView: View {

    @State private var isOne = false
    
    var body: some View {
        NavigationStack {
            Form {
                //MARK: Profile розділ
                Section {
                    NavigationLink {
                        VStack {
                            Text("Detail")
                        }
                    } label: {
                        HStack { // Аватарка
                            Image("avatar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .clipShape(RoundedRectangle(cornerRadius: 100))
                           
                            VStack(alignment: .leading, spacing: 3) {  // Профіль
                                Text("Vasyl Petrych")
                                    .font(.system(size: 22, weight: .bold))
                                Text("Обліковий запис Apple, iCloud \nтощо")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14))
                            }
                        }
                    }
                    
                    NavigationLink {
                        VStack {
                            Text("Пропозиція облікового запису Apple")
                        }
                    } label: {
                        Text("Пропозиція облікового запису \nApple")
                            .font(.system(size: 18))
                            .fontWeight(.regular)
                    }
                }
                
                //MARK: AirPods розділ
                Section {
                    NavigationLink {
                        VStack {
                            Text("AIRPODS")
                        }
                    } label: {
                        HStack {
                            Image(systemName: "airpods.gen4")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 22, height: 22)
                                .padding(5)
                                .background(
                                    LinearGradient(
                                        colors: [.gray, .black], startPoint: .topLeading, endPoint: .bottomTrailing
                                    )
                                )
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Text("AirPods 👾")
                                .font(.system(size: 17, weight: .medium))
                                .padding(.horizontal, 8)
                        }
                    }
                } // section
                
                //MARK: Третій розділ
                Section{
                    HStack { // Режим польоту
                            Image(systemName: "airplane")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.orange)
                            .frame(width: 22, height: 22)
                            .padding(5)
                            .background(
                                LinearGradient(
                                    colors: [.gray, .black], startPoint: .topLeading, endPoint: .bottomTrailing
                                )
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Toggle(isOn: $isOne, label: {
                            Text("Режим польоту")
                                .font(.system(size: 17, weight: .medium))
                                .padding(.horizontal, 8)
                        })
                    }
                    
                    //MARK: WIFI
                    NavigationLink{
                        VStack {
                            Text("WIFI")
                        }
                    } label: {
                        HStack{
                            Image(systemName: "wifi")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.blue)
                            .frame(width: 22, height: 22)
                            .padding(5)
                            .background(
                                LinearGradient(
                                    colors: [.gray, .black], startPoint: .topLeading, endPoint: .bottomTrailing
                                )
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Text("Wi-Fi")
                                .font(.system(size: 17, weight: .medium))
                                .padding(.horizontal, 8)
                            Text("Не під'єднано")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.trailing, 5)
                                .foregroundColor(.gray)
                                .font(.system(size: 18, weight: .medium))
                        }
                    }
                    
                    
                    //MARK: Bluetooth
                    NavigationLink{
                        VStack {
                            Text("Bluetooth")
                        }
                    } label: {
                        HStack{
                            Image("bluetooth_icon")
                            .resizable()
                            .scaledToFit()
                            //.foregroundColor(Color.white)
                            .frame(width: 22, height: 22)
                            .padding(5)
                            .background(
                                LinearGradient(
                                    colors: [.gray, .black], startPoint: .topLeading, endPoint: .bottomTrailing
                                )
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Text("Bluetooth")
                                .font(.system(size: 17, weight: .medium))
                                .padding(.horizontal, 8)
                            Text("Увімкнено")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.trailing, 5)
                                .foregroundColor(.gray)
                                .font(.system(size: 18, weight: .medium))
                        }
                    }
                    
                    //MARK: Antenna
                    NavigationLink{
                        VStack {
                            Text("Стільникові дані")
                        }
                    } label: {
                        HStack{
                            Image(systemName: "antenna.radiowaves.left.and.right")
                            .scaledToFit()
                            .foregroundColor(Color.green)
                            .frame(width: 22, height: 22)
                            .padding(5)
                            .background(
                                LinearGradient(
                                    colors: [.gray, .black], startPoint: .topLeading, endPoint: .bottomTrailing
                                )
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Text("Стільникові дані")
                                .font(.system(size: 17, weight: .medium))
                                .padding(.horizontal, 8)
                        }
                    }
                    
                    //MARK: Personalhotspot
                    NavigationLink{
                        VStack {
                            Text("Власна точка доступу")
                        }
                    } label: {
                        HStack{
                            Image(systemName: "personalhotspot")
                            .scaledToFit()
                            .foregroundColor(Color.green)
                            .frame(width: 22, height: 22)
                            .padding(5)
                            .background(
                                LinearGradient(
                                    colors: [.gray, .black], startPoint: .topLeading, endPoint: .bottomTrailing
                                )
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Text("Власна точка доступу")
                                .font(.system(size: 17, weight: .medium))
                                .padding(.horizontal, 8)
                        }
                    }
                    
                    //MARK: Battery
                    NavigationLink{
                        VStack {
                            Text("Акумулятор")
                        }
                    } label: {
                        HStack{
                            Image(systemName: "battery.100percent")
                            .scaledToFit()
                            .foregroundColor(Color.green)
                            .frame(width: 22, height: 22)
                            .padding(5)
                            .background(
                                LinearGradient(
                                    colors: [.gray, .black], startPoint: .topLeading, endPoint: .bottomTrailing
                                )
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Text("Акумулятор")
                                .font(.system(size: 17, weight: .medium))
                                .padding(.horizontal, 8)
                        }
                    }
                    
                }
                
                //MARK: General Settings
                NavigationLink{
                    VStack {
                        Text("Загальні")
                    }
                } label: {
                    HStack{
                        Image(systemName: "gear")
                        .scaledToFit()
                        .foregroundColor(Color.gray)
                        .frame(width: 22, height: 22)
                        .padding(5)
                        .background(
                            LinearGradient(
                                colors: [.gray, .black], startPoint: .topLeading, endPoint: .bottomTrailing
                            )
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Text("Загальні")
                            .font(.system(size: 17, weight: .medium))
                            .padding(.horizontal, 8)
                    }
                }
                
                //Доступність
                NavigationLink{
                    VStack {
                        Text("Доступність")
                    }
                } label: {
                    HStack{
                        Image(systemName: "accessibility")
                        .scaledToFit()
                        .foregroundColor(Color.blue)
                        .frame(width: 22, height: 22)
                        .padding(5)
                        .background(
                            LinearGradient(
                                colors: [.gray, .black], startPoint: .topLeading, endPoint: .bottomTrailing
                            )
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Text("Доступність")
                            .font(.system(size: 17, weight: .medium))
                            .padding(.horizontal, 8)
                    }
                }
                
                //Дисплей і яскравість
                NavigationLink{
                    VStack {
                        Text("Дисплей і яскравість")
                    }
                } label: {
                    HStack{
                        Image(systemName: "sun.max.fill")
                        .scaledToFit()
                        .foregroundColor(Color.blue)
                        .frame(width: 22, height: 22)
                        .padding(5)
                        .background(
                            LinearGradient(
                                colors: [.gray, .black], startPoint: .topLeading, endPoint: .bottomTrailing
                            )
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Text("Дисплей і яскравість")
                            .font(.system(size: 17, weight: .medium))
                            .padding(.horizontal, 8)
                    }
                }
 
            } // Form
            .navigationTitle("Параметри")
        } //NavigationStack
    } // body view
} // content view

#Preview {
    ContentView()
}

