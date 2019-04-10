//
//  UILabel+AutoLocalizableField.swift
//  Unicredit
//
//  Created by Anatoly Cherkasov on 21/02/2019.
//  Copyright © 2019 Surf. All rights reserved.
//

import UIKit

/// Activate AutoLocalizableField for UILabel
extension UILabel: AutoLocalizableField, AutoLocalizableAttributedField {

    public func languageWasChanged(locale: LocaleType, localizableString: LocalizableStringItem?) {
        text = localizableString?.value
        superview?.setNeedsLayout()
        superview?.layoutIfNeeded()
    }

    public func languageWasChanged(locale: LocaleType, localizableAttributedString: LocalizableAttributedStringItem?) {
        attributedText = localizableAttributedString?.value
        superview?.setNeedsLayout()
        superview?.layoutIfNeeded()
    }

}