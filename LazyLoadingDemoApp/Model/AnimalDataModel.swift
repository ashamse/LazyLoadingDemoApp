//
//  DataModel.swift
//  LazyLoadingDemoApp
//
//  Created by Prabhu Patil on 30/07/21.
//

import Foundation


struct AnimalDataModel: Codable {
    let errorMessage:String
    let animals:[Animal]
    
    //We are using this to rename "data" to "animals"
    enum CodingKeys : String, CodingKey {
        case animals = "data"
        case errorMessage
    }
}

struct Animal: Codable {
    let name: String
    let image: String
}


/**
 
 {"errorMessage":"",
 "data":
 [
  {"name":"Bears","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/bear.jpg"},
  {"name":"Birds","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/brd.jpg"},
  {"name":"Butterfly","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/btrfly.jpg"},
  {"name":"Cat","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/cat.jpg"},
  {"name":"Cheetah","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/che.jpg"},
  {"name":"Crocodile","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/croc.jpg"},
  {"name":"Deer","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/der.jpg"},
  {"name":"Dog","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/dog.jpg"},
  {"name":"Duck","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/duc.jpg"},
  {"name":"Giraffe","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/gir.jpg"},
  {"name":"Gorilla","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/gor.jpg"},
  {"name":"Horse","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/hrs.jpg"},
  {"name":"Koala","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/koa.jpg"},
  {"name":"Leopard","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/leo.jpg"},
  {"name":"Lion","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/lion.jpg"},
  {"name":"Otter","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/ottr.jpg"},
  {"name":"Owl","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/owl.jpg"},
  {"name":"Panda","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/pnd.jpg"},
  {"name":"Penguin","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/peng.jpg"},
  {"name":"Raccoon","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/rac.jpg"},
  {"name":"Rhinoceros","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/rhi.jpg"},
  {"name":"Shark","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/shrk.jpg"},
  {"name":"Squirrels","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/sqr.jpg"},
  {"name":"Wolf","image":"https://strgblobimagedemo.blob.core.windows.net/imagecontainer/wlf.jpg"}
 ]
}
 */
