public class Game {
    private String mAnswer;
    private String mMisses;
    private String mHits;

    public static final int MAX_MISSES = 7;

    public Game(String answer) {
        mAnswer = answer.toLowerCase();
        mMisses = "";
        mHits   = "";
    }

    public boolean applyGuess(char letter) {
        letter = validateGuess(letter);

        if (mAnswer.indexOf(letter) >= 0) {
            mHits += letter;

            return true;
        } else {
            mMisses += letter;
        }

        return false;
    }

    public int getRemainingTries() {
        return MAX_MISSES - mMisses.length();
    }

    public String getCurrentProgress() {
        String progress = "";

        for (char hit : mAnswer.toCharArray()) {
            if (mHits.indexOf(hit) >= 0) {
                progress += hit;
            } else {
                progress += '_';
            }
        }

        return progress;
    }

    public char validateGuess(char letter) {
        if (!Character.isLetter(letter)) {
            throw new IllegalArgumentException("A letter is requred");
        }

        letter = Character.toLowerCase(letter);

        if (mMisses.indexOf(letter) >= 0 || mHits.indexOf(letter) >= 0) {
            throw new IllegalArgumentException(letter + " has been used");
        }

        return letter;
    }
}
