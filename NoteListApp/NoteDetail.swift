//
//  NoteDetail.swift
//  NoteListApp
//
//  Created by Cyan on 2020/02/21.
//  Copyright © 2020 Cyan. All rights reserved.
//

import SwiftUI

struct NoteDetail: View {
    @State var note: [String]
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(note[0])
                    .font(.largeTitle)
                    .fontWeight(.thin)
                Spacer()
                Text(note[1])
            }
            .padding(.bottom, 20.0)
            Text(note[2])
            Spacer()
        }
        .padding(.all, 20.0)
        .navigationBarTitle(Text("詳細"), displayMode: .inline)
    }
}

struct NoteDetail_Previews: PreviewProvider {
    static var previews: some View {
        NoteDetail(note: ["テスト","13:21","あいうえお"])
    }
}
