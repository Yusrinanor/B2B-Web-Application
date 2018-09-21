using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AddProduct1
/// </summary>
public class AddProduct1
{
    public string AddProduct (Product prod)
    {
        try
        {
            B2BEntities db = new B2BEntities();
            db.Products.Add(prod);
            db.SaveChanges();
            return prod.name + " was successfully added";
        }

        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public Product GetProduct(int id)
    {
        try
        {
            using (B2BEntities db = new B2BEntities())
            {
                Product prod = db.Products.Find(id);
                return prod;

            }
        }
        catch(Exception)
        {
            return null;
        }
    }


    public string UpdateProduct(Product prod)
    {
        try
        {
            using (B2BEntities db = new B2BEntities())
            {
                var result = db.Products.SingleOrDefault(p => p.Id == prod.Id);
                if (result != null)
                {
                    result.Id = prod.Id;
                    result.name = prod.name;
                    result.description = prod.description;
                    result.price = prod.price;
                    result.image1 = prod.image1;
                    db.SaveChanges();
                    return prod.name + " was successfully saved";

                }

                else
                {
                    return "error because no result shown";
                }
            }
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public List<Product> GetAllProducts()
    {
        try
        {
            using(B2BEntities db = new B2BEntities())
            {
                List<Product> prod = (from x in db.Products select x).ToList();
                return prod;
            }
        }

        catch (Exception)
        {
            return null;
        }
    }

    public List<Plan> GetAllPlan()
    {
        try
        {
            using(B2BEntities db = new B2BEntities())
            {
                List<Plan> plan = (from x in db.Plans select x).ToList();
                return plan;
            }
        }

        catch (Exception)
        {
            return null;
        }
    }

    public Plan GetPlan(int id)
    {
        try
        {
            using (B2BEntities db = new B2BEntities())
            {
                Plan plan = db.Plans.Find(id);
                return plan;

            }
        }
        catch (Exception)
        {
            return null;
        }
    }
}