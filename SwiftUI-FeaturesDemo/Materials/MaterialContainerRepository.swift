//  MaterialContainerRepository.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 09.11.21.

import SwiftUI

public struct MaterialContainerRepository {
    
    private var containers = [MaterialContainer]()
    
    init() {
        self.containers.append(MaterialContainer(material: .ultraThinMaterial, materialName: "UltraThin", sortIndex: 1))
        self.containers.append(MaterialContainer(material: .thinMaterial, materialName: "Thin", sortIndex: 2))
        self.containers.append(MaterialContainer(material: .regularMaterial, materialName: "Regular", sortIndex: 3))
        self.containers.append(MaterialContainer(material: .thickMaterial, materialName: "Thick", sortIndex: 4))
        self.containers.append(MaterialContainer(material: .ultraThickMaterial, materialName: "Ultra Thick", sortIndex: 5))
    }
    
    public func getAllMaterialContainer() -> [MaterialContainer] {
        return self.containers.sorted{ $0.sortIndex < $1.sortIndex}
    }
}
