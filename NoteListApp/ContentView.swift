//
//  ContentView.swift
//  NoteListApp
//
//  Created by Cyan on 2020/02/21.
//  Copyright © 2020 Cyan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var notes = [["title1", "20:12", "これはサンプルです。"],
    ["title2", "19:00", "あいうえおかきくけこ\n改行しまして"],
    ["title3", "6:10", "ドレミファソ"]]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(notes, id: \.self){ note in
                    NavigationLink(destination:
                    NoteDetail(note: note)){
                        NoteRow(note: note)
                    }
                    
                }
                .onDelete(perform: delete)
                .onMove(perform: move)
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle(Text("Notes"))
        }
    }
    
    func delete(offsets: IndexSet){
        notes.remove(atOffsets: offsets)
    }
    
    func move(offsets: IndexSet, index: Int){
        notes.move(fromOffsets: offsets, toOffset: index)
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
