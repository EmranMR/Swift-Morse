var englishText = "this is a secret message"


let encrypted: String
let decrypted: String
var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

let morse: Morse = Morse()

let decode = morse.encode(englishText)

print(morse.decode(decode))
