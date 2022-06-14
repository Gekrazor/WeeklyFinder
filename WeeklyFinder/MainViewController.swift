//
//  ViewController.swift
//  WeekyFinder
//
//  Created by Дмитрий Лещук on 13.06.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Weekly Finder"
        label.font = UIFont(name: "GillSans-Italic", size: 32)
        return label
    }()
    
    private lazy var yearLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Year"
        label.font = UIFont.systemFont(ofSize: 22, weight: .regular)
        return label
    }()
    
    private lazy var monthLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Month"
        label.font = UIFont.systemFont(ofSize: 22, weight: .regular)
        return label
    }()
    
    private lazy var dayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Day"
        label.font = UIFont.systemFont(ofSize: 22, weight: .regular)
        return label
    }()
    
    private lazy var yearTextField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.backgroundColor = .white
        field.layer.cornerRadius = 6
        return field
    }()
    
    private lazy var monthTextField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.backgroundColor = .white
        field.layer.cornerRadius = 6
        return field
    }()
    
    private lazy var dayTextField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.backgroundColor = .white
        field.layer.cornerRadius = 6
        return field
    }()
    
    private lazy var descLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tap the button below, to know which day it was!"
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var tapButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Find day", for: .normal)
        button.target(forAction: #selector(tappedButton), withSender: self)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 6
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.layer.shadowOffset = CGSize(width: 2, height: 2)
        return button
    }()
        
    @objc
    private func tappedButton() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        layout()
    }
    
    private func layout() {
        [titleLabel, yearLabel, monthLabel, dayLabel, yearTextField,
         monthTextField, dayTextField, descLabel, tapButton].forEach { view.addSubview($0) }
        
        let insert: CGFloat = 32
        
        NSLayoutConstraint.activate([
            // titleLabel
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: insert),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // yearLabel
            yearLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: insert),
            yearLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: insert),
            
            // monthLabel
            monthLabel.topAnchor.constraint(equalTo: yearLabel.bottomAnchor, constant: insert),
            monthLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: insert),
            
            // dayLabel
            dayLabel.topAnchor.constraint(equalTo: monthLabel.bottomAnchor, constant: insert),
            dayLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: insert),
            
            // yearTextField
            yearTextField.centerYAnchor.constraint(equalTo: yearLabel.centerYAnchor),
            yearTextField.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            yearTextField.heightAnchor.constraint(equalToConstant: 22),
            yearTextField.widthAnchor.constraint(equalToConstant: 210),
            
            // monthTextField
            monthTextField.centerYAnchor.constraint(equalTo: monthLabel.centerYAnchor),
            monthTextField.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            monthTextField.heightAnchor.constraint(equalToConstant: 22),
            monthTextField.widthAnchor.constraint(equalToConstant: 210),
            
            // dayTextField
            dayTextField.centerYAnchor.constraint(equalTo: dayLabel.centerYAnchor),
            dayTextField.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            dayTextField.heightAnchor.constraint(equalToConstant: 22),
            dayTextField.widthAnchor.constraint(equalToConstant: 210),
            
            // descLabel
            descLabel.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: insert),
            descLabel.widthAnchor.constraint(equalToConstant: 210),
            descLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // tapButton
            tapButton.topAnchor.constraint(equalTo: descLabel.bottomAnchor, constant: insert),
            tapButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tapButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}
