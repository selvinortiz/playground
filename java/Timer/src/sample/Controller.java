package sample;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;

public class Controller {
	@FXML
	private TextField field;

	public void handleOnClick(ActionEvent ev) {
		System.out.printf("%s!%n", field.getText());
	}
}
