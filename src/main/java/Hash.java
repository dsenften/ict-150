public class Hash {

    public static void main(String[] args) {

        try {

            for (String s : args) {
                System.out.println("Hashcode of '" + s + "' = '0x"
                        + Integer.toHexString(s.hashCode()).toUpperCase() + "'");
            }

        } catch (Exception e) {
            System.out.println("Usage: Hash <string>");
        }
    }
}
