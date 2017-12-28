//
//  Group.swift
//  coderroom
//
//  Created by adolfo reyes on 12/28/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import Foundation

class Group {
    private var _groupTitle: String
    private var _groupDesc: String
    private var _key: String
    private var _memberCount: Int
    private var _members: [String]
    
    var groupTitle: String {
        return _groupTitle
    }
    
    var groupDesc: String {
        return _groupDesc
    }
    
    var key: String {
        return _key
    }
    
    var memberCount: Int {
        return _memberCount
    }
    
    var members: [String] {
        return _members
    }
    
    init(title: String, description: String, key: String, members: [String], membersCount: Int) {
        self._groupTitle = title
        self._groupDesc = description
        self._key = key
        self._memberCount = membersCount
        self._members = members
    }
}
