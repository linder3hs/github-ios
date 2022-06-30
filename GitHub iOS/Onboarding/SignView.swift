//
//  SignView.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 29/06/22.
//

import SwiftUI

struct SignView: View {
    
    @EnvironmentObject var appState: AppState
    
    @StateObject var authViewModel = AuthViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("logo-github")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .center)
                Spacer()
                Button {
                    authViewModel.login()
                } label: {
                    Text("Sign in with GitHub")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(.black)
                        .cornerRadius(30)
                }
                    
                Text("By signin in your accept our Terms of User adn Privacy and policy.")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 14))
                    .padding(.top)
            }.padding()
        }
      
    }
}

struct SignView_Previews: PreviewProvider {
    static var previews: some View {
        SignView()
    }
}
