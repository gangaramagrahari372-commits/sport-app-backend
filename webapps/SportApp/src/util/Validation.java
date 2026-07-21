package util;

public class Validation {

    public static boolean isEmpty(String value) {

        if (value == null || value.trim().equals("")) {
            return true;
        }

        return false;
    }

    public static boolean isNumber(String value) {

        try {

            Integer.parseInt(value);
            return true;

        } catch (Exception e) {

            return false;
        }

    }

}