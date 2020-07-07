// Copyright 2020 Tokamak contributors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import TokamakCore

public typealias Picker = TokamakCore.Picker
public typealias PopUpButtonPickerStyle = TokamakCore.PopUpButtonPickerStyle
public typealias RadioGroupPickerStyle = TokamakCore.RadioGroupPickerStyle
public typealias SegmentedPickerStyle = TokamakCore.SegmentedPickerStyle
public typealias WheelPickerStyle = TokamakCore.WheelPickerStyle
public typealias DefaultPickerStyle = TokamakCore.DefaultPickerStyle

extension _PickerContainer: ViewDeferredToRenderer {
  public var deferredBody: AnyView {
    AnyView(HTML("label") {
      label

      HTML("select", listeners: ["change": { print($0) }]) { () -> AnyView in
        print("content is \(content)")
        // return AnyView(EmptyView())
        return AnyView(content)
      }
    })
  }
}

// extension _PickerElement: ViewDeferredToRenderer {
//   public var deferredBody: AnyView {
//     let attributes: [String: String]
//     if let value = valueIndex {
//       attributes = ["value": "\(value)"]
//     } else {
//       attributes = [:]
//     }

//     return AnyView(HTML("option", attributes) {
//       content
//     })
//   }
// }
