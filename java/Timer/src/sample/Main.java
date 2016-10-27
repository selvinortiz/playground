package sample;

import javafx.application.Application;
// import javafx.fxml.FXMLLoader;
// import javafx.scene.Parent;
import javafx.fxml.FXMLLoader;
import javafx.scene.Group;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class Main extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception{
//        Group root = new Group();
//
//	    Text text = new Text("Type Greeting");
//
//	    Label label = new Label("Name");
//
//	    TextField field = new TextField();
//
//	    Button button = new Button();
//	    button.setText("Say Hello");
//		button.setOnAction(event -> System.out.printf("%s!%n", field.getText()));
//
//	    GridPane grid = new GridPane();
//	    grid.add(label, 0, 0);
//	    grid.add(field, 1, 0);
//	    grid.add(button, 1, 1);
//		grid.setHgap(20);
//	    grid.setGridLinesVisible(false);
//	    VBox box = new VBox();
//	    box.getChildren().addAll(text, grid);
//
//	    root.getChildren().add(box);

        Parent root = FXMLLoader.load(getClass().getResource("sample.fxml"));
        primaryStage.setTitle("Timer X");
        primaryStage.setScene(new Scene(root, 300, 250));
        primaryStage.show();
    }


    public static void main(String[] args) {
        launch(args);
    }
}
