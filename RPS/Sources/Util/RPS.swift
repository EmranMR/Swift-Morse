 struct RockPaperScissor {
    enum Inputs : String {
       case rock  = "Rock"
       case paper = "Paper"
       case scissor = "Scissor"
    }

    private enum RandomGenerationErrors: Error {
       case IncorrectRange(message: String)
    }


    init(input : Inputs) {

        if let compInput = try? getComputerChoice() {
            let decisions = (user:input, computer: compInput)
            let winner  = play(using: decisions)

            print("\(winner) has won the game")
        }



        
    }


    private func getComputerChoice() throws -> Inputs {

        let randomNumber = Int.random(in: 0...2)
        switch randomNumber {
        case 0:
            return Inputs.paper
        case 1:
            return Inputs.rock
        case 2:
            return Inputs.scissor
        default:
            throw RandomGenerationErrors.IncorrectRange(message: "Random number was not within 0 - 2 range")
        }
    }

    private func play(using decisions:(user: Inputs, computer: Inputs)) -> String {
        switch decisions {
            case 
            (.rock, .rock),
            (.scissor, .scissor),
            (.paper, .paper):
                return "draw"
            case
            (.paper, .rock),
            (.rock, .scissor),
            (.scissor, .paper):
                return "User"
            case
            (.rock, .paper),
            (.scissor, .rock),
            (.paper, .scissor):
                return "Computer"
            }
    }

}
