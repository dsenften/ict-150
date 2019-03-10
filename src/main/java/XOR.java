import java.io.*;
import java.util.Scanner;

public class XOR {


    private static String encrypt(String text, int key) {
        char[] chars = text.toCharArray();
        for (int i = 0; i < chars.length; i++) {
            chars[i] = (char) (chars[i] ^ key);
        }
        return new String(chars);
    }

    public static void main(String[] args) throws IOException {

        String dir =  "./src/main/resources/";
        File input = new File(dir + "Gedicht.txt");
        File output = new File(dir + "encrypted.txt");

        try (Scanner scanner = new Scanner(new FileReader(input));
             BufferedWriter writer = new BufferedWriter(new FileWriter(output))) {

            while (scanner.hasNextLine()) {
                String line = scanner.nextLine();
                System.out.println(line);

                writer.write(encrypt(line, 23));
            }


        } catch (FileNotFoundException e) {
            System.out.println("Folgender Fehler trat auf: " + e);
        }
    }

}
