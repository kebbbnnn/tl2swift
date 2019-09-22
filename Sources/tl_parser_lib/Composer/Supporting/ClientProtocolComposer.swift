//
//  ClientProtocolComposer.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 22/09/2019.
//

import Foundation

/// Generates protocol for TDClient
final class ClientProtocolComposer: Composer {
    
    override func composeUtilitySourceCode() throws -> String {
        return ""
            .addLine("/// Basic protocol for communicate with TdLib.")
            .addLine("protocol TdClient {")
            .addBlankLine()
            .addLine("    /// Receives incoming updates and request responses from the TDLib client")
            .addLine("    func run(updateHandler: @escaping (Data) -> Void)")
            .addBlankLine()
            .addLine("    /// Sends request to the TDLib client.")
            .addLine("    func queryAsync(query: TdQuery, completion: ((Data) -> Void)?)")
            .addBlankLine()
            .addLine("    /// Synchronously executes TDLib request. Only a few requests can be executed synchronously.")
            .addLine("    func execute(query: TdQuery)")
            .addBlankLine()
            .addLine("}")
            .addBlankLine()
            .addBlankLine()
            .addLine("protocol TdQuery {")
            .addBlankLine()
            .addLine("    func make(with extra: String?) throws -> Data")
            .addBlankLine()
            .addLine("}")
    }
}
