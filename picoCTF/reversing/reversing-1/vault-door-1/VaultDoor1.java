import java.util.*;

class VaultDoor1 {
    public static void main(String args[]) {
        VaultDoor1 vaultDoor = new VaultDoor1();
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter vault password: ");
	String userInput = scanner.next();
	String input = userInput.substring("picoCTF{".length(),userInput.length()-1);
	if (vaultDoor.checkPassword(input)) {
	    System.out.println("Access granted.");
	} else {
	    System.out.println("Access denied!");
	}
    }

    // I came up with a more secure way to check the password without putting
    // the password itself in the source code. I think this is going to be
    // UNHACKABLE!! I hope Dr. Evil agrees...
    //
    // -Minion #8728
    public boolean checkPassword(String password) {
        StringBuilder s = new StringBuilder("00000000000000000000000000000000");
        s.setCharAt(0, 'd');
        s.setCharAt(29, '2');
        s.setCharAt(4, 'r');
        s.setCharAt(2, '5');
        s.setCharAt(23, 'r');
        s.setCharAt(3, 'c');
        s.setCharAt(17, '4');
        s.setCharAt(1, '3');
        s.setCharAt(7, 'b');
        s.setCharAt(10, '_');
        s.setCharAt(5, '4');
        s.setCharAt(9, '3');
        s.setCharAt(11, 't');
        s.setCharAt(15, 'c');
        s.setCharAt(8, 'l');
        s.setCharAt(12, 'H');
        s.setCharAt(20, 'c');
        s.setCharAt(14, '_');
        s.setCharAt(6, 'm');
        s.setCharAt(24, '5');
        s.setCharAt(18, 'r');
        s.setCharAt(13, '3');
        s.setCharAt(19, '4');
        s.setCharAt(21, 'T');
        s.setCharAt(16, 'H');
        s.setCharAt(27, 'e');
        s.setCharAt(30, '6');
        s.setCharAt(25, '_');
        s.setCharAt(22, '3');
        s.setCharAt(28, 'f');
        s.setCharAt(26, '1');
        s.setCharAt(31, '6');
        System.out.println(s.toString());
        return true;
    }
}
