//
//  BusinessList.swift
//  iosfoundations
//
//  Created by Gabriel Weich on 17/01/19.
//  Copyright © 2019 Gabriel Weich. All rights reserved.
//

import Foundation

class BusinessList{
    static var businessList:[String:[BusinessItem]] = [
        "acessories":[
            BusinessItem(title: "P&P Pallets e Planejados", description:"É uma maneira de trazer personalidade à decoração dando uma nova cara para esse objeto sem uso.", favorited: false, image: "objetos_img_0"),
            BusinessItem(title: "Viver Sustentável", description:"Loja que investem na produção sustentável, com objetos e móveis ecologicamente corretos.", favorited: false, image: "objetos_img_1"),
            BusinessItem(title: "The Body Shop", description:"É uma maneira de trazer personalidade à decoração dando uma nova cara para esse objeto sem uso.", favorited: false, image: "objetos_img_3"),
        ],
        "food":[
            BusinessItem(title: "Jco Donuts & Coffee", description:"Restaurante que quer honrar o conceito de sustentável. Foram quase dois anos de estudos para abrir as portas e ter a certeza de que 100% dos seus processos poderiam ser considerados sustentáveis", favorited: false, image: "comida_img_0"),
            BusinessItem(title: "Made Fit", description:"Lugar incríveis e dedicados a respeitar a relação que devemos ter com nosso planeta. ", favorited: false, image: "comida_img_1"),
            BusinessItem(title: "Prainha Bar", description:"O Prainha Bar é um dos mais tradicionais restaurantes vegetarianos de Porto Alegre. Fundado em 1991, é um dos pioneiros neste segmento", favorited: false, image: "comida_img_2"),
            BusinessItem(title: "Mt Nebo", description:"Pratos que são elaborados com vários ingredientes que saem da horta do chef.", favorited: false, image: "comida_img_3"),
            BusinessItem(title: "Bom Sabor", description:"todos os alimentos utilizados na sua cozinha, inclusive peixes e frutos do mar, e fica numa área rodeada pela Mata Atlântica. ", favorited: false, image: "comida_img_4"),
            BusinessItem(title: "Vegan", description:"O cuidado com as rotinas sustentáveis nesse estabelecimento é tão grande que, em 2013, ele recebeu o título de restaurante mais sustentável do mundo pela revista inglesa Restaurants", favorited: false, image: "comida_img_5")
        ],
        "wearing":[
            BusinessItem(title: "Insecta Shoes", description:"Sapatos ecológicos e veganos, feitos no Brasil com a reutilização de roupas vintage. Venda online e frete grátis pra as regiões Sul, Sudeste e Centro Oeste.", favorited: false, image: "loja_img_0"),
            BusinessItem(title: "Timirim", description:"Você pode confiar, conhecemos cada pessoa envolvida no processo. Responsabilidade social e ambiental estão no coração da timirim.", favorited: false, image: "loja_img_1"),
            BusinessItem(title: "Gesiel Underwear", description:"Produzimos Roupas Que Nos Inspiram, Com Sustentabilidade e Responsabilidade.", favorited: false, image: "loja_img_2"),
            BusinessItem(title: "Vert", description:"Tênis Ecológicos e Sustentáveis / Transparência / Materiais Orgânicos / Comércio Justo.", favorited: false, image: "loja_img_3"),
            BusinessItem(title: "Coletivo 2", description:"Co/2 ¤ Coletivo de Dois Moda - Amor - Intuição - Vida - Liberdade #coletivodedois", favorited: false, image: "loja_img_4")
        ],
        "highlights":[
            BusinessItem(title: "hgesiel", description:"dessad", favorited: false, image: "img_3")
        ]
    ]
    
    static func getList(category:String) -> [BusinessItem]?{
        return businessList[category]
    }
    
    static func getFavorited() -> [BusinessItem]{
        var favorited:[BusinessItem] = []
        for cbi in businessList.values {
            for bi in cbi{
                if bi.favorited{
                    favorited.append(bi)
                }
            }
        }
        return favorited
    }
}
