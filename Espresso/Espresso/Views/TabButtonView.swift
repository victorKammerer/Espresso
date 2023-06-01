//
//  TabButtonView.swift
//  Espresso
//
//  Created by vko on 31/05/23.
//

import SwiftUI

struct TabButtonView: View {
    
    var image: String
    var title: String
    @Binding var currentTab: String
    var action: () -> Void // Closure para ser executado ao clicar no botão
    
    var body: some View{
        
        Button(action: {
            action() // Executa o closure ao clicar no botão
        }, label: {
            
            VStack{
                
                ZStack{
                    
                    HStack{
                        
                        Image(systemName: image)
                            .foregroundColor(currentTab == title ? .black : .pink)
                            .font(.system(size: 18))
                        
                        Text(title)
                            .font(.callout)
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(currentTab == title ? .black : .pink)
                            .padding(.vertical,4)
                            .frame(maxWidth: .infinity)
                        
                    }
                }
                .frame(width: .infinity, height: 56)
                .background(
                    
                    ZStack{
                        if currentTab == title{
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: .infinity, height: 56)
                        } else {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: .infinity, height: 56)
                        }
                    }
                    
                )
                
                Rectangle()
                    .foregroundColor(currentTab == title ? .black : .white)
                    .frame(width: .infinity, height: 3)
                
            }
            
            
        })
        .buttonStyle(PlainButtonStyle())
        
    }
}

