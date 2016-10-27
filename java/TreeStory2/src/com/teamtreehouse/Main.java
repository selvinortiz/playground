package com.teamtreehouse;

import java.io.IOException;

public class Main {

    public static void main(String[] args) {
	// write your code here
        Prompter prompt = new Prompter();

        String story = null;

        try {
            story = prompt.promptForStory();
        } catch (IOException e) {
            e.printStackTrace();
        }

        Template template = new Template(story);

        prompt.run(template);
    }
}
