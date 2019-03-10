import java.math.BigInteger;
import java.text.BreakIterator;

public class AhBmC {

    public static void main(String[] args) {

        try {

            long a = Long.valueOf(args[0]);
            long n = Long.valueOf(args[1]);
            long p = Long.valueOf(args[2]);

            double result = Math.pow(a, n) % p;
            
            System.out.println(a + "^" + n + " mod " + p + " = " + result);

        } catch (Exception e) {
            System.out.println("Calculate a^n mod p");
            System.out.println("Usage: java AhBmC <a> <n> <p>");
        }
    }
}
