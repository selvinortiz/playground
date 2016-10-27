public class Hangman {
    public static void main(String[] args) {
        Game game = new Game("Treehouse");
        Prompter prompt = new Prompter(game);

        prompt.play();
    }
}
