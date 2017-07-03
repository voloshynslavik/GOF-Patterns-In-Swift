//
//  ProxySecretInformationReader.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 27/05/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

final class ProxySecretInformation {

    fileprivate var secretInformation: InformationReader?

    func login(password: String) {
        secretInformation = nil
        if password == "developer" {
            secretInformation = SecretInformation()
        }
    }
}

extension ProxySecretInformation: InformationReader {

    func read() -> String {
        return secretInformation?.read() ?? "Access denied!"
    }

}
