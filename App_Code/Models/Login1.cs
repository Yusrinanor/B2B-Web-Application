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
        if(query!= null)
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
                List<User> user = (from x in db.Users where x.userType=="Customer" select x).ToList();
                return user;
            }
        }

        catch (Exception)
        {
            return null;
        }
    }

}