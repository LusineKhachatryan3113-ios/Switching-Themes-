//
//  ContentView.swift
//  SwitchingThemesSwiftUI
//
//  Created by Lusine on 5/24/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var dataSource: DataSource
    @State private var showModal = false
    @State private var showDestination = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                Button("Modal sheet") {
                    showModal = true
                }
                .padding(.top)
                NavigationLink(destination: DestinationView(),
                               isActive: $showDestination,
                               label: {
                    Button("Push Navigation") {
                        showDestination = true
                    }
                })
                Text(Sample.veryLongText)
                    .foregroundColor(Color(dataSource.selectedTheme.labelColor))
                    .padding()
            }
            .buttonStyle(FilledRoundedCornerButtonStyle(bgColor: Color(dataSource.selectedTheme.primaryColor), fgColor: Color(dataSource.selectedTheme.secondaryColor))
            )
            .navigationTitle("Theme Change")
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: $showModal) {
            ModalSheetView()
            
        }
        .appearanceModifier(backgroundColor: dataSource.selectedTheme.primaryColor,  textColor: dataSource.selectedTheme.secondaryColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataSource())
    }
}

