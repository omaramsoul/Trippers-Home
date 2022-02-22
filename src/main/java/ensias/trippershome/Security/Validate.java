package ensias.trippershome.Security;

import ensias.trippershome.models.User;

public class Validate {
     public static String accept(User user, String password)
     {

         if (user.getMdp().length()<8)
         {
            return "password len should be above 8 characters";
         }else if (!user.getMdp().equals(password))
         {
             return "second password different from the first one";
         }else
         {
             return null;
         }
     }
}
