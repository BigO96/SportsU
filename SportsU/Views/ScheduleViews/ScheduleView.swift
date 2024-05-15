//
//  ScheduleView.swift
//  SportsU
//
//  Created by Oscar Epp on 5/14/24.
//

import SwiftUI

struct ScheduleView: View {
    @State private var isMensSports: Bool = true
    @State private var selectedTeam: Team
    
    let MensTeams: [Team] = mensTeams
    let WomensTeams: [Team] = womensTeams
    
    init() {
        _selectedTeam = State(initialValue: MensTeams[2])
    }

    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    
                    button
                    sports
                    
                }
                .padding(.horizontal)

            }
            .padding(.vertical)
            
            ScheduleListView(viewModel: EventViewModel(teamName: selectedTeam.name))
        }
        .background(Gradient(colors: gradientColors))

    }

    private var currentTeams: [Team] {
        isMensSports ? mensTeams : womensTeams
    }
}

let gradientColors: [Color] = [
    .blue,
    .green
]

extension ScheduleView {
    private var sports: some View {
        ForEach(currentTeams, id: \.name) { team in
            Button(action: {
                selectedTeam = team
            }) {
                VStack {
                    Image(systemName: team.symbolName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding()
                        .background(selectedTeam == team ? Color.gray.opacity(0.9) : Color.white.opacity(0.5))
                        .cornerRadius(8)
                        .foregroundColor(Color.white)
                }
                .padding(.vertical, 4)
                .cornerRadius(12)
            }
        }
    }
}

extension ScheduleView {
    private var button: some View {
        Button(action: {
            isMensSports.toggle()
        }) {
            VStack {
                Image(systemName: isMensSports ? "mustache.fill" : "mouth.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .padding()
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(8)
                    .foregroundColor(Color.white)
            }
            .cornerRadius(12)
            
        }
//        .padding(.leading, 10)
    }
}





#Preview {
    ScheduleView()
}

