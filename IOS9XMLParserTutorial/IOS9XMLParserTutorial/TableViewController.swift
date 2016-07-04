//
//  TableViewController.swift
//  IOS9XMLParserTutorial
//
//  Created by Arthur Knopper on 31/05/16.
//  Copyright © 2016 Arthur Knopper. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, NSXMLParserDelegate {

    var books: [Book] = []
    var eName: String = String()
    var bookTitle = String()
    var bookAuthor = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let path = NSBundle.mainBundle().URLForResource("books", withExtension: "xml") {
            if let parser = NSXMLParser(contentsOfURL: path) {
                parser.delegate = self
                parser.parse()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        let book = books[indexPath.row]
        
        cell.textLabel?.text = book.bookTitle
        cell.detailTextLabel?.text = book.bookAuthor

        return cell
    }

    
    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {
        eName = elementName
        if elementName == "book" {
            bookTitle = String()
            bookAuthor = String()
        }
    }
    
    
    func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "book" {
            
            let book = Book()
            book.bookTitle = bookTitle
            book.bookAuthor = bookAuthor
            
            books.append(book)
        }
    }
    
    
    func parser(parser: NSXMLParser, foundCharacters string: String) {
        let data = string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        
        if (!data.isEmpty) {
            if eName == "title" {
                bookTitle += data
            } else if eName == "author" {
                bookAuthor += data
            }
        }
    }

}
    
    
