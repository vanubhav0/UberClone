//
//  UserRepo.swift
//  UberRepo
//
//  Created by Anubhav Verma on 23/01/22.
//

import Foundation

protocol UserRepository {
    func create(user: UserModel)
    func getAll() -> [UserModel]?
    func update(user: UserModel)
    func delete(user:  UserModel)
    func getById(id: UUID) -> UserModel?
}

struct  UserDataRepo: UserRepository {
    
    func getAll() -> [UserModel]? {
        return nil
    }
    
    func update(user: UserModel) {
        
    }
    
    func delete(user: UserModel) {
        
    }
    
    func getById(id: UUID) -> UserModel? {
        return nil
    }
    
    
    func create(user: UserModel) {
        let cdUser = CDUser()
        cdUser.name = user.name
        cdUser.id = user.id
        cdUser.email = user.email
        cdUser.type = user.accountType
        
        
    }
    
}
