//
//  main.swift
//  base64
//
//  Created by 小魔兽 on 2021/9/25.
//

import Foundation

//print("Hello, World!")

let str = "ssr://YzYwczIuamFtamFtcy5uZXQ6MzIwMTU6b3JpZ2luOmFlcy0yNTYtY2ZiOnBsYWluOlEzZGFSbkJYV1RnMFJtdFhjbVJLVGtOM1drWndWMWs0TkVaclYzSmtTazQvP3JlbWFya3M9WXpZd2N6SXVhbUZ0YW1GdGN5NXVaWFEmcHJvdG9wYXJhbT0mb2Jmc3BhcmFtPQ\nssr://YzYwczEuamFtamFtcy5uZXQ6MzIwMTU6b3JpZ2luOmFlcy0yNTYtY2ZiOnBsYWluOlEzZGFSbkJYV1RnMFJtdFhjbVJLVGcvP3JlbWFya3M9WXpZd2N6RXVhbUZ0YW1GdGN5NXVaWFEmcHJvdG9wYXJhbT0mb2Jmc3BhcmFtPQ\nvmess://YXV0bzpmOGExN2JlNi0wMDY4LTRiNmItODMxMC0zY2M0YzQ4MzU0ZjhAYzYwczMuamFtamFtcy5uZXQ6MzIwMTU?remarks=c60s3.jamjams.net&obfs=none\nvmess://YXV0bzpmOGExN2JlNi0wMDY4LTRiNmItODMxMC0zY2M0YzQ4MzU0ZjhAYzYwczQuamFtamFtcy5uZXQ6MzIwMTU?remarks=c60s4.jamjams.net&obfs=none\nvmess://YXV0bzpmOGExN2JlNi0wMDY4LTRiNmItODMxMC0zY2M0YzQ4MzU0ZjhAYzYwczUuamFtamFtcy5uZXQ6MzIwMTU?remarks=c60s5.jamjams.net&obfs=none\nvmess://YXV0bzpmOGExN2JlNi0wMDY4LTRiNmItODMxMC0zY2M0YzQ4MzU0ZjhAYzYwczgwMS5qYW1qYW1zLm5ldDozMjAxNQ?remarks=c60s801.jamjams.net&obfs=none\nvmess://YXV0bzo1YTE3MzNiOC1jMGU1LTQ3MjgtOGU3YS00ZGU5M2UwNWQyZjVAYzdzODAxLmphbWphbXMubmV0OjUzNTU?remarks=JMS-356452@c7s801.jamjams.net:5355&obfs=none&alterId=8\nvmess://YXV0bzo1YTE3MzNiOC1jMGU1LTQ3MjgtOGU3YS00ZGU5M2UwNWQyZjVAYzdzNS5qYW1qYW1zLm5ldDo1MzU1?remarks=JMS-356452@c7s5.jamjams.net:5355&obfs=none&alterId=8\nvmess://YXV0bzo1YTE3MzNiOC1jMGU1LTQ3MjgtOGU3YS00ZGU5M2UwNWQyZjVAYzdzNC5qYW1qYW1zLm5ldDo1MzU1?remarks=JMS-356452@c7s4.jamjams.net:5355&obfs=none&alterId=8\nvmess://YXV0bzo1YTE3MzNiOC1jMGU1LTQ3MjgtOGU3YS00ZGU5M2UwNWQyZjVAYzdzNC5qYW1qYW1zLm5ldDo1MzU1?remarks=JMS-356452@c7s3.jamjams.net:5355&obfs=none&alterId=8"

let base64Str = str.data(using: String.Encoding.utf8)!.base64EncodedString()


let parseBase64Str = String.init(data: Data.init(base64Encoded: base64Str)!, encoding: String.Encoding.utf8)!

print(parseBase64Str)

var codeFilePath = #file

let totalArr = codeFilePath.components(separatedBy: "/")

let filePath = totalArr.prefix(upTo: totalArr.count - 3).joined(separator: "/")
let libr = filePath + "/adavasdasdavagasdg"
do {
 
    try base64Str.data(using: String.Encoding.utf8)!.write(to: URL.init(fileURLWithPath: libr))
    
}catch {
    print(error.localizedDescription)
}
