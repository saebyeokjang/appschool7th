//
//  TimelineViewExample.swift
//  PowerfulSwiftUI
//
//  Created by Saebyeok Jang on 4/3/25.
//

import SwiftUI

struct TimelineViewExample: View {
    var body: some View {
        TimelineView(.animation) { timeline in
            Canvas { context, size in
                let timeInterval = timeline.date.timeIntervalSince1970
                let seconds = timeInterval.truncatingRemainder(dividingBy: 60)
                let angle = Angle.degrees(seconds * 6) // 360° / 60 seconds = 6° per second
                
                // Drawing a simple clock hand
                context.translateBy(x: size.width / 2, y: size.height / 2)
                context.rotate(by: angle)
                
                let rect = CGRect(x: 0, y: 0, width: 5, height: (size.height / 2) - 10)
                context.fill(Path(rect), with: .color(.red))
            }
            .frame(width: 200, height: 200)
            .background(Circle().stroke(Color.black, lineWidth: 2))
        }
    }
}

#Preview {
    TimelineViewExample()
}
