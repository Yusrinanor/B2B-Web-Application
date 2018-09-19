using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Login1
/// </summary>
public class Login1
{
    public bool GetLogin(string email, string password)
    {
        B2BEntities db = new B2BEntities();
        string query = (from x in db.Users where x.email == email && x.password == password select x.userType).FirstOrDefault();
        if (query != null)
        {
            HttpContext.Current.Session["userType"] = query;
            return true;
        }
        return false;
    }

    public string AddUser(User users)
    {
        try
        {
            B2BEntities db = new B2BEntities();
            db.Users.Add(users);
            db.SaveChanges();

            return users.email + "was successfully registered";
        }

        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public List<User> GetAllUsers()
    {
        try
        {
            using (B2BEntities db = new B2BEntities())
            {
                List<User> user = (from x in db.Users where x.userType == "Customer" select x).ToList();
                return user;
            }
        }

        catch (Exception)
        {
            return null;
        }
    }

    public int GetuserID(string email)
    {
        B2BEntities db = new B2BEntities();
        int query = (from x in db.Users where x.email == email select x.Id).FirstOrDefault();
        return query;
    }

    public User GetUser(int id)
    {
        try
        {
            using (B2BEntities db = new B2BEntities())
            {
                User user = db.Users.Find(id);
                return user;

            }
        }
        catch (Exception)
        {
            return null;
        }
    }

    public string UpdateUser(User newUser)
    {
        try
        {
            using (B2BEntities db = new B2BEntities())
            {
                /*
                 Single or default = returns single object (user) using the ID
                
                 */

                var currentUser = db.Users.SingleOrDefault(x => x.Id == newUser.Id);
                if (currentUser != null)
                {
                    /*
                    newUser replaces currentUser as it belongs to the object User 
                    which means data is updated in that objected by passing it to the variable newUser

                     */
                    currentUser.fullName = newUser.fullName;
                    currentUser.companyName = newUser.companyName;
                    currentUser.email = newUser.email;
                    currentUser.password = newUser.email;
                    currentUser.country = newUser.country;
                    db.SaveChanges();
                    return "Your profile has been successfully changed";
                }
                else
                {
                    return "error with id "+newUser.Id;
                }
            }
        }
        catch (Exception)
        {
            return null;
        }
    }

    public void ChangePass(string newpass, int id)
    {
        try
        {
            using (B2BEntities db = new B2BEntities())
            {
                User currentuser = db.Users.SingleOrDefault(x => x.Id == id);
                currentuser.password = newpass;

                db.SaveChanges();



            }
        }

        catch (Exception)
        {

        }
    }

}