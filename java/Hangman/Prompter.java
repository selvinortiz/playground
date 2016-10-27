import java.io.Console;

public class Prompter {
    private Game mGame;

    public Prompter(Game game) {
        mGame = game;
    }

    public boolean promptForGuess() {
        Console console = System.console();

        while (true) {
            
            String guessAsString = console.readLine("Enter a letter: ");
            
            try {
                char guess = guessAsString.charAt(0);
                return mGame.applyGuess(guess);
            } catch (IllegalArgumentException e) {
                console.printf(e.getMessage() + "\n");
            }
        }
    }

    public void displayProgress() {

        System.out.printf("You have %d tries to solve: %s\n",
            mGame.getRemainingTries(),
            mGame.getCurrentProgress());
    }

    public void play() {
        while (mGame.getRemainingTries() > 0) {
            displayProgress();
            promptForGuess();
        }
    }
}
