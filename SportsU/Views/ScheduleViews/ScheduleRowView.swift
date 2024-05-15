//
//  ScheduleRowView.swift
//  SportsU
//
//  Created by Oscar Epp on 5/14/24.
//

import SwiftUI

struct ScheduleRowView: View {
    var event: SportsEvent

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(event.summary)
                    .font(.headline)
                Text("Starts: \(event.start, formatter: itemFormatter)")
                    .font(.caption)
                    .lineLimit(1)
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.tint)
                .opacity(0.25)
                .brightness(-0.4)

        }
        .foregroundStyle(.white)
    }
}
//
//#Preview {
//    ScheduleRowView(event: event)
//}
