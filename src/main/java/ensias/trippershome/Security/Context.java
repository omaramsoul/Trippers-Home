package ensias.trippershome.Security;

import ensias.trippershome.models.User;

public class Context {
    private static String username = null;

    public static String getUsername() {
        return username;
    }

    public static void setUsername(String usern) {
        username = usern;
    }
}
