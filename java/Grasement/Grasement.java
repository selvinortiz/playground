class Grasement {

	public static void main(String[] args) {
		Cli cli = new Cli();

		System.out.println(cli.red("Grasement 1.0"));
		
		String name = cli.getString("What is your name? ");

		System.out.println(cli.green(name));

		for (int[] cell : cli.generateGrid()) {
			System.out.printf(" (%d, %d) ", cell[0], cell[1]);
		}
	}
}
