import jakarta.persistence.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class App {
    public static void main(String[] args) {
        EntityManagerFactory entityManagerFactory= Persistence.createEntityManagerFactory("market");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();

        transaction.begin();
        //SELECT * FROM categories WHERE category_id=1;
        //Query getAllCategories = entityManager.createQuery("SELECT cat FROM Category cat",Category.class);
        TypedQuery<Category> getAllCategories = entityManager.createQuery("SELECT cat FROM Category cat WHERE cat.id=:id",Category.class);
        getAllCategories.setParameter("id",3);
        Category category = getAllCategories.getSingleResult();
        System.out.println(category.getName());

        transaction.commit();
        //Supplier Ekleme
       /* Supplier supplier = new Supplier();
        supplier.setAddress("Istanbul");
        supplier.setCompany("Apple");
        supplier.setPerson("Mark");
        supplier.setMail("LXKpJ@example.com");
        supplier.setContact("0555555555");
        entityManager.persist(supplier);

        //Category ekleme
        Category category = new Category();
        category.setName("Telefonlar");
        entityManager.persist(category);

        //Code Ekleme
        Code code = new Code();
        code.setGroup("11123");
        code.setSerial("44456");
        entityManager.persist(code);

        //ürün Ekleme
        Product product = new Product();
        product.setName("Iphone 15pro");
        product.setPrice(1000);
        product.setStock(10);
        product.setCode(code);
        product.setSupplier(supplier);
        product.setCategory(category);
        entityManager.persist(product);
        System.out.println(supplier.toString());*/
        /*Color red = new Color("Kırmızı");
        Color blue = new Color("Mavi");
        Color yellow = new Color("Sarı");
        entityManager.persist(red);
        entityManager.persist(blue);
        entityManager.persist(yellow);

        Product product = entityManager.find(Product.class,1);
        List<Color> colorList=new ArrayList<>();
        colorList.add(red);
        colorList.add(blue);
        colorList.add(yellow);
        product.setColorList(colorList);
        entityManager.persist(product);
        System.out.println(product.getColorList());*/
        /*Category category = entityManager.find(Category.class,1);
        Category toys=new Category("toys");
        Category phones=new Category("phones");
        Category laptops=new Category("laptops");
        entityManager.persist(toys);
        entityManager.persist(phones);
        entityManager.persist(laptops);

        List<Category> productList=new ArrayList<>();
        productList.add(toys);
        productList.add(phones);
        productList.add(laptops);*/




    }
}
