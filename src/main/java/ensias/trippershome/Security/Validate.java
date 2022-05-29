package ensias.trippershome.Security;

import ensias.trippershome.models.User;

public class Validate {
     public static String accept(User user, String password)
     {

         if (user.getMdp() == null || user.getUsername() == null || user.getEmail() == null)
         {
            return "One of the fields is missing please fill out all the form";

         }else if (user.getMdp().length()<8)
         {
            return "Password length should be above 8 characters";
         }
         else if (!user.getMdp().equals(password))
         {
             return "Passwords are not the same , please confirm your password";
         }else
         {
             return null;
         }
     }
}
