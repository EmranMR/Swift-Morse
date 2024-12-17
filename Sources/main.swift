var englishText = "this is a secret message"

typealias MorseEncode = [String: String]
typealias MorseDecode = [String: String]

let encrypted: String
let decrypted: String
var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

struct Morse {
  private var decode: MorseDecode

  private let encode: MorseEncode = [
    "A": ".-",
    "B": "-...",
    "C": "-.-.",
    "D": "-..",
    "E": ".",
    "F": "..-.",
    "G": "--.",
    "H": "....",
    "I": "..",
    "J": ".---",
    "K": "-.-",
    "L": ".-..",
    "M": "--",
    "N": "-.",
    "O": "---",
    "P": ".--.",
    "Q": "--.-",
    "R": ".-.",
    "S": "...",
    "T": "-",
    "U": "..-",
    "V": "...-",
    "W": ".--",
    "X": "-..-",
    "Y": "-.--",
    "Z": "--..",
    "1": ".----",
    "2": "..---",
    "3": "...--",
    "4": "....-",
    "5": ".....",
    "6": "-....",
    "7": "--...",
    "8": "---..",
    "9": "----.",
    "0": "-----",
  ]

  init() {
    self.decode = [:]
    reverseEncode()
  }

  private mutating func reverseEncode() {
    for (key, value) in encode {
      decode[value] = key
    }
  }

  func encode(_ text: String) -> [String] {
    var encodedText: [String] = []

    text.split(separator: " ").forEach { characters in
      if let morseCode = encode[String(characters)] {
        encodedText.append(morseCode)
      }
    }
  return encodedText
  }

  func decode(_ cipher: String) -> [String] {
    var decodedText: [String] = []

    cipher.split(separator: " ").forEach { characters in
      if let plainText = decode[String(characters)] {
        decodedText.append(plainText)
      }
    }
  return decodedText
  }
}

let text = "emran ramezn"

  
}
