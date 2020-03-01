//
//  NoteRow.swift
//  NoteListApp
//
//  Created by Cyan on 2020/02/21.
//  Copyright © 2020 Cyan. All rights reserved.
//

import SwiftUI

struct NoteRow: View {
    @State var note: [String]
    
    var body: some View {
        HStack {
            Text(note[0])
            Spacer()
            Text(note[1])
        }
        .padding(.horizontal, 20.0)
        
    }
}

struct NoteRow_Previews: PreviewProvider {
    static var previews: some View {
        NoteRow(note: ["テスト","13:21","あいうえお"])
    }
}
