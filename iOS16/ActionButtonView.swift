//
//  ActionButtonView.swift
//  iOS16
//
//  Created by TheGIZzz on 21/2/2566 BE.
//

import SwiftUI

struct ActionButtonView: View {
    var body: some View {
        ZStack {
            Image("UI 1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(50)

            Rectangle()
                .fill(.ultraThickMaterial)
                .overlay(Rectangle().fill(.black.opacity(0.5)).blendMode(.softLight))
                .mask(canvas)
                .shadow(color: .white.opacity(0.2), radius: 0, x: -1, y: -1)
                .shadow(color: .black.opacity(0.2), radius: 0, x: 1, y: 1)
                .shadow(color: .black.opacity(0.5), radius: 10, x: 10, y: 10)
                .overlay(
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                        .offset(x: -28, y: -28)
                )
                .offset(y: -29)
        }
        .background(.black)
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
    }
    
    var canvas: some View {
        Canvas { context, size in
            context.fill(Path(ellipseIn: CGRect(x: size.width - 72, y: size.height - 70, width: 56, height: 56)), with: .color(.black))
        }
    }
}

struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ActionButtonView()
    }
}
