//
//  ScheduleListView.swift
//  SportsU
//
//  Created by Oscar Epp on 5/14/24.
//

import SwiftUI

struct ScheduleListView: View {
    @ObservedObject var viewModel: EventViewModel
    
    init(viewModel: EventViewModel) {
        self.viewModel = viewModel
    }
    
    /// Group Events by Month
    private var groupedEvents: [String: [SportsEvent]] {
        Dictionary(grouping: viewModel.events, by: { monthYearFormatter.string(from: $0.start) })
    }
    
    /// Sort by Date
    private func sortedMonthKeys() -> [String] {
        let sortedKeys = groupedEvents.keys.sorted {
            guard let date1 = monthYearFormatter.date(from: $0), let date2 = monthYearFormatter.date(from: $1) else {
                return false
            }
            return date1 < date2
        }
        return sortedKeys
    }
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 10) {
                /// Month
                ForEach(sortedMonthKeys(), id: \.self) { month in
                    Section(header: Text(month).font(.headline).padding(.vertical).foregroundColor(.white)) {
                        /// Event
                        ForEach(groupedEvents[month]!, id: \.id) { event in
                            ScheduleRowView(event: event)
                                .padding(.vertical, 5)
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ScheduleListView(viewModel: EventViewModel(teamName: "Football"))
        .background(Color(.gray))
}


