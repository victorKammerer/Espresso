//
//  ContentView.swift
//  Espresso
//
//  Created by vko on 31/05/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment (\.managedObjectContext) private var viewContext
    var body: some View {
        
        VStack {
            HStack {
                VStack {
                    
//                    Text("oiii")
//                        .font(.custom(FontsManager.IBM.medium, size: 16))
                    
                    
                    
                    // Titulo e descricao
                    Text("Descubra o Espresso!").foregroundColor(.black)
                        .font(.system(size: 32))
                        .frame(width: 501).foregroundColor(.blue)
                    //                    .alignmentGuide(.leading, computeValue: { _ in 50 })
                    //                    .padding(.leading, 50)
                    
                    Text("Nosso Start Boost aumenta sua produtividade com um período de foco inicial antes das atividades. ").foregroundColor(.black)
                        .font(.system(size: 16))
                        .frame(width: 245).foregroundColor(.blue)
                    
                    Text("Mas lembre-se! O histórico é apagado após 24 horas. ").foregroundColor(.black)
                        .frame(width: 251).foregroundColor(.blue)
                        .font(.system(size: 16))
                    
                }
                Spacer()
                Image("onboardingBackground")
                    .alignmentGuide(.leading, computeValue: { _ in 50 })
                    .padding(.trailing, 50)
                    .padding(.top, 90)
                
                
            }.edgesIgnoringSafeArea(.all)
            Spacer()
            HStack {
                Text("Entenda mais sobre a ciência do Start Boost")
                    .foregroundColor(.black)
                
                Spacer()
                
                Button(action: {
                    print("fechou")
                    
                }, label: {
                    Text("OK")
                        .frame(width: 138, height: 44)
                        .foregroundColor(.white)
                        .background(Color("brow-0"))
                        .cornerRadius(4)
                        .alignmentGuide(.trailing, computeValue: { _ in 50 })
                        .padding(.trailing, 50)
                })
                .buttonStyle(BorderlessButtonStyle())
                
                
            }.padding(24)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
        
    }
    
    
    
}

