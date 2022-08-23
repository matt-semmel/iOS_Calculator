//
//  CalculatorView.swift
//  Calculator
//
//  Created by Matt Semmel on 8/20/22.
//

import SwiftUI

// BODY

struct CalculatorView: View {
    
    /*var buttonTypes: [[ButtonType]] {
        [[.allClear, .neg, .perc, .operation(.div)],
         [.digit(.seven), .digit(.eight), .digit(.nine), .operation(.mult)],
         [.digit(.four), .digit(.five), .digit(.six), .operation(.sub)],
         [.digit(.one), .digit(.two), .digit(.three), .operation(.add)],
         [.digit(.zero), .dec, .eq]]
    }*/
    
    @EnvironmentObject private var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Spacer()
            displayText
            buttonPad
        }
        .padding(Constants.padding)
        .background(Color.black)
    }
}

// PREVIEWS

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}


// COMPONENTS

extension CalculatorView {

    private var displayText: some View {
        Text(viewModel.displayText)
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.system(size: 88, weight: .light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
    }

    private var buttonPad: some View {
        VStack(spacing: Constants.padding) {
            ForEach(viewModel.buttonTypes, id: \.self) { row in
                HStack(spacing: Constants.padding) {
                    ForEach(row, id: \.self) { buttonType in
                        CalculatorButton(buttonType: buttonType)
                    }
                }
            }
        }
    }
}
