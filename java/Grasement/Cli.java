import java.io.Console;
import java.util.List;
import java.util.ArrayList;

class Cli {

	public String getString(String prompt) {
		Console console = System.console();
		String input    = "";

		while (input.length() < 1) {
			input = console.readLine(prompt);
		}

		return input;
	}

	public List<int[]> generateGrid(int rows, int cols) {
		List<int[]> grid = new ArrayList<>();

		for (int row = 0; row < rows; row++) {
			for (int col = 0; col < cols; col++) {
				grid.add(new int[] {row, col});
			}
		}

		return grid;
	}

	public List<int[]> generateGrid() {
		return this.generateGrid(5, 10);
	}

	public String red(String str) {
		return String.format("\033[91m%s\033[0m", str);
	}

	public String green(String str) {
		return String.format("\033[92m%s\033[0m", str);
	}

	public String yellow(String str) {
		return String.format("\033[93m%s\033[0m", str);
	}
	
	public String blue(String str) {
		return String.format("\033[94m%s\033[0m", str);
	}

	public String bold(String str) {
		return String.format("\033[1m%s\033[0m", str);
	}
}
