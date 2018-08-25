

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class PracticeTest implements ActionListener {
	JFrame frame;
	JPanel panel;
	JButton one;
	JButton hint;
	JTextField field;
	JLabel label;
public static void main(String[] args) {
	PracticeTest test = new PracticeTest();
	test.getGoing();
	}
public void getGoing() {
	frame = new JFrame();
	frame.setVisible(true);
	field = new JTextField();
	field.setSize(50,25);
	frame.add(field);
	panel = new JPanel();
	frame.add(panel);
	one = new JButton("submit");
	hint = new JButton("hint");
	panel.add(one);
	panel.add(hint);
	label = new JLabel("I have a neck, but no head, and I wear a cap. What am I?");
	panel.add(label);
	one.addActionListener(this);
	hint.addActionListener(this);

}
@Override
public void actionPerformed(ActionEvent e) {
	// TODO Auto-generated method stub
	String hinter=field.getText();
	String answer="a watter bottle";
	JButton buttonPressed = (JButton) e.getSource();
	if(buttonPressed==one&&hinter.equals(answer)) {
		label.setText("correct");
	}
	else if(buttonPressed==hint) {
		label.setText("you can drink from this item");
	}
	else {
		label.setText("incorrect");
	}
	
}
}
